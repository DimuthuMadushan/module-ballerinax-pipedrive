// Summarises the open deals of every sales pipeline: the number of deals and their total value per stage.

import ballerina/io;
import ballerinax/pipedrive;

configurable string apiToken = ?;
configurable int pageSize = 100;

public function main() returns error? {
    pipedrive:Client pipedrive = check new ({auth: {xApiToken: apiToken}});

    // Step 1: page through the pipelines
    pipedrive:GetPipelinesResponseData[] pipelineList = [];
    string? pipelineCursor = ();
    while true {
        pipedrive:GetPipelinesQueries pipelineQueries = {'limit: pageSize};
        if pipelineCursor is string {
            pipelineQueries.cursor = pipelineCursor;
        }
        pipedrive:GetPipelinesResponse page = check pipedrive->getPipelines(queries = pipelineQueries);
        pipedrive:GetPipelinesResponseData[] pipelines = page?.data ?: [];
        pipelineList.push(...pipelines);
        pipelineCursor = page?.additionalData?.nextCursor;
        if pipelineCursor is () || pipelines.length() == 0 {
            break;
        }
    }
    if pipelineList.length() == 0 {
        return error("No pipelines were returned for this account");
    }

    foreach pipedrive:GetPipelinesResponseData pipeline in pipelineList {
        int pipelineId = check pipeline?.id.ensureType();
        io:println("Pipeline: ", pipeline?.name);

        // Step 2: page through the stages of the pipeline
        pipedrive:StageItem[] stageList = [];
        string? stageCursor = ();
        while true {
            pipedrive:GetStagesQueries stageQueries = {pipelineId, 'limit: pageSize};
            if stageCursor is string {
                stageQueries.cursor = stageCursor;
            }
            pipedrive:GetStagesResponse page = check pipedrive->getStages(queries = stageQueries);
            pipedrive:StageItem[] stages = page?.data ?: [];
            stageList.push(...stages);
            stageCursor = page?.additionalData?.nextCursor;
            if stageCursor is () || stages.length() == 0 {
                break;
            }
        }

        // Step 3: page through the open deals of the pipeline and aggregate them by stage and currency
        map<int> dealCounts = {};
        map<map<decimal>> dealValues = {};
        string? cursor = ();
        while true {
            pipedrive:GetDealsQueries dealQueries = {pipelineId, 'limit: pageSize};
            if cursor is string {
                dealQueries.cursor = cursor;
            }
            pipedrive:GetDealsResponse page = check pipedrive->getDeals(queries = dealQueries);
            pipedrive:GetDealsResponseData[] deals = page?.data ?: [];
            foreach pipedrive:GetDealsResponseData deal in deals {
                if deal?.status != "open" {
                    continue;
                }
                string stageKey = (deal?.stageId ?: 0).toString();
                dealCounts[stageKey] = (dealCounts[stageKey] ?: 0) + 1;
                map<decimal> stageValues = dealValues[stageKey] ?: {};
                string currency = deal?.currency ?: "unknown currency";
                stageValues[currency] = (stageValues[currency] ?: 0d) + (deal?.value ?: 0d);
                dealValues[stageKey] = stageValues;
            }
            cursor = page?.additionalData?.nextCursor;
            if cursor is () || deals.length() == 0 {
                break;
            }
        }

        foreach pipedrive:StageItem stage in stageList {
            string stageKey = (stage?.id ?: 0).toString();
            string[] totals = from [string, decimal] [currency, total] in (dealValues[stageKey] ?: {}).entries()
                select string `${total} ${currency}`;
            io:println("  ", stage?.name, ": ", dealCounts[stageKey] ?: 0, " open deal(s), total value ",
                    totals.length() == 0 ? "0" : string:'join(", ", ...totals));
        }
    }
}
