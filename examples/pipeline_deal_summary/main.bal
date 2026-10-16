// Summarises the open deals of every sales pipeline: the number of deals and their total value per stage.

import ballerina/io;
import ballerinax/pipedrive;

configurable string apiToken = ?;
configurable int pageSize = 100;

public function main() returns error? {
    pipedrive:Client pipedrive = check new ({auth: {xApiToken: apiToken}});

    // Step 1: list the pipelines
    pipedrive:GetPipelinesResponse pipelines = check pipedrive->getPipelines();
    pipedrive:GetPipelinesResponseData[] pipelineList = pipelines?.data ?: [];
    if pipelineList.length() == 0 {
        return error("No pipelines were returned for this account");
    }

    foreach pipedrive:GetPipelinesResponseData pipeline in pipelineList {
        int pipelineId = check pipeline?.id.ensureType();
        io:println("Pipeline: ", pipeline?.name);

        // Step 2: list the stages of the pipeline
        pipedrive:GetStagesResponse stages = check pipedrive->getStages(queries = {pipelineId});
        map<int> dealCounts = {};
        map<decimal> dealValues = {};

        // Step 3: page through the open deals of the pipeline and aggregate them by stage
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
                dealValues[stageKey] = (dealValues[stageKey] ?: 0d) + (deal?.value ?: 0d);
            }
            cursor = page?.additionalData?.nextCursor;
            if cursor is () || deals.length() == 0 {
                break;
            }
        }

        foreach pipedrive:StageItem stage in stages?.data ?: [] {
            string stageKey = (stage?.id ?: 0).toString();
            io:println("  ", stage?.name, ": ", dealCounts[stageKey] ?: 0, " open deal(s), total value ",
                    dealValues[stageKey] ?: 0d);
        }
    }
}
