// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;

listener http:Listener ep0 = new (9090);

@http:ServiceConfig {treatNilableAsOptional: true}
service / on ep0 {
    # Delete an activity
    #
    # + id - The ID of the activity
    # + return - Delete activity 
    resource function delete activities/[int id]() returns DeleteActivityResponse {
        return {success: true, data: {id}};
    }

    # Delete a deal
    #
    # + id - The ID of the deal
    # + return - Delete deal 
    resource function delete deals/[int id]() returns DeleteDealResponse {
        return {success: true, data: {id}};
    }

    # Delete a person
    #
    # + id - The ID of the person
    # + return - Delete person 
    resource function delete persons/[int id]() returns DeletePersonResponse {
        return {success: true, data: {id}};
    }

    # Get all activities
    #
    # + filterId - If supplied, only activities matching the specified filter are returned
    # + ids - Optional comma separated string array of up to 100 entity ids to fetch. If filter_id is provided, this is ignored. If any of the requested entities do not exist or are not visible, they are not included in the response
    # + ownerId - If supplied, only activities owned by the specified user are returned. If filter_id is provided, this is ignored
    # + dealId - If supplied, only activities linked to the specified deal are returned. If filter_id is provided, this is ignored
    # + leadId - If supplied, only activities linked to the specified lead are returned. If filter_id is provided, this is ignored
    # + personId - If supplied, only activities whose primary participant is the given person are returned. If filter_id is provided, this is ignored
    # + orgId - If supplied, only activities linked to the specified organization are returned. If filter_id is provided, this is ignored
    # + done - If supplied, only activities with specified 'done' flag value are returned
    # + updatedSince - If set, only activities with an `update_time` later than or equal to this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + updatedUntil - If set, only activities with an `update_time` earlier than this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + sort_by - The field to sort by. Supported fields: `id`, `update_time`, `add_time`, `due_date`
    # + sort_direction - The sorting direction. Supported values: `asc`, `desc`
    # + include_fields - Optional comma separated string array of additional fields to include
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + return - Get all activities 
    resource function get activities(@http:Query {name: "filter_id"} int? filterId, string[]? ids, @http:Query {name: "owner_id"} int? ownerId, @http:Query {name: "deal_id"} int? dealId, @http:Query {name: "lead_id"} string? leadId, @http:Query {name: "person_id"} int? personId, @http:Query {name: "org_id"} int? orgId, boolean? done, @http:Query {name: "updated_since"} string? updatedSince, @http:Query {name: "updated_until"} string? updatedUntil, @http:Query {name: "include_fields"} ("attendees")[]? includeFields, int? 'limit, string? cursor, @http:Query {name: "sort_by"} "id"|"update_time"|"add_time"|"due_date" sortBy = "id", @http:Query {name: "sort_direction"} "asc"|"desc" sortDirection = "asc") returns GetActivitiesResponse {
        return {success: true, data: [{id: 101, subject: "Discovery call with Acme", 'type: "call", done: false, dueDate: "2026-11-02", dueTime: "10:30", ownerId: 12345, creatorUserId: 12345, dealId: 7, personId: 21, orgId: 31, note: "Discuss pricing", addTime: "2026-10-01T09:00:00Z", updateTime: "2026-10-01T09:00:00Z", isDeleted: false, busy: true, priority: 1}], additionalData: {nextCursor: ()}};
    }

    # Get details of an activity
    #
    # + id - The ID of the activity
    # + include_fields - Optional comma separated string array of additional fields to include
    # + return - Get activity 
    resource function get activities/[int id](@http:Query {name: "include_fields"} ("attendees")[]? includeFields) returns UpsertActivityResponse {
        return {success: true, data: {id, subject: "Discovery call with Acme", 'type: "call", done: false, dueDate: "2026-11-02", dueTime: "10:30", ownerId: 12345, creatorUserId: 12345, dealId: 7, personId: 21, orgId: 31, note: "Discuss pricing", addTime: "2026-10-01T09:00:00Z", updateTime: "2026-10-01T09:00:00Z", isDeleted: false, busy: true, priority: 1}};
    }

    # Get all deals
    #
    # + filterId - If supplied, only deals matching the specified filter are returned
    # + ids - Optional comma separated string array of up to 100 entity ids to fetch. If filter_id is provided, this is ignored. If any of the requested entities do not exist or are not visible, they are not included in the response
    # + ownerId - If supplied, only deals owned by the specified user are returned. If filter_id is provided, this is ignored
    # + personId - If supplied, only deals linked to the specified person are returned. If filter_id is provided, this is ignored
    # + orgId - If supplied, only deals linked to the specified organization are returned. If filter_id is provided, this is ignored
    # + pipelineId - If supplied, only deals in the specified pipeline are returned. If filter_id is provided, this is ignored
    # + stageId - If supplied, only deals in the specified stage are returned. If filter_id is provided, this is ignored
    # + status - Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included. Multiple statuses can be included as a comma separated array. If filter_id is provided, this is ignored
    # + updatedSince - If set, only deals with an `update_time` later than or equal to this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + updatedUntil - If set, only deals with an `update_time` earlier than this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + sort_by - The field to sort by. Supported fields: `id`, `update_time`, `add_time`
    # + sort_direction - The sorting direction. Supported values: `asc`, `desc`
    # + include_fields - Optional comma separated string array of additional fields to include
    # + customFields - Optional comma separated string array of custom fields keys to include. If you are only interested in a particular set of custom fields, please use this parameter for faster results and smaller response.<br/>A maximum of 15 keys is allowed
    # + includeOptionLabels - When provided with a 'true' value, single option and multiple option custom fields values contain objects in the form of '{ id: number, label: string }' instead of plain id
    # + includeLabels - When provided with 'true' value, response will include an array of label objects in the form of '{ id: number, label: string }'
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + return - Get all not archived deals 
    resource function get deals(@http:Query {name: "filter_id"} int? filterId, string[]? ids, @http:Query {name: "owner_id"} int? ownerId, @http:Query {name: "person_id"} int? personId, @http:Query {name: "org_id"} int? orgId, @http:Query {name: "pipeline_id"} int? pipelineId, @http:Query {name: "stage_id"} int? stageId, ("open"|"won"|"lost"|"deleted")[]? status, @http:Query {name: "updated_since"} string? updatedSince, @http:Query {name: "updated_until"} string? updatedUntil, @http:Query {name: "include_fields"} ("next_activity_id"|"last_activity_id"|"first_won_time"|"products_count"|"files_count"|"notes_count"|"followers_count"|"email_messages_count"|"activities_count"|"done_activities_count"|"undone_activities_count"|"participants_count"|"last_incoming_mail_time"|"last_outgoing_mail_time"|"smart_bcc_email"|"source_lead_id")[]? includeFields, @http:Query {name: "custom_fields"} string[]? customFields, @http:Query {name: "include_option_labels"} boolean? includeOptionLabels, @http:Query {name: "include_labels"} boolean? includeLabels, int? 'limit, string? cursor, @http:Query {name: "sort_by"} "id"|"update_time"|"add_time" sortBy = "id", @http:Query {name: "sort_direction"} "asc"|"desc" sortDirection = "asc") returns GetDealsResponse {
        return {success: true, data: [{id: 7, title: "Acme annual subscription", value: 15000, currency: "USD", ownerId: 12345, personId: 21, orgId: 31, pipelineId: 1, stageId: 3, status: "open", probability: 60, addTime: "2026-09-20T08:15:00Z", updateTime: "2026-10-05T11:42:00Z", expectedCloseDate: "2026-12-15", isDeleted: false, isArchived: false, visibleTo: 3, labelIds: [1, 2]}], additionalData: {nextCursor: ()}};
    }

    # Get details of a deal
    #
    # + id - The ID of the deal
    # + include_fields - Optional comma separated string array of additional fields to include
    # + customFields - Optional comma separated string array of custom fields keys to include. If you are only interested in a particular set of custom fields, please use this parameter for faster results and smaller response.<br/>A maximum of 15 keys is allowed
    # + includeOptionLabels - When provided with a 'true' value, single option and multiple option custom fields values contain objects in the form of '{ id: number, label: string }' instead of plain id
    # + includeLabels - When provided with 'true' value, response will include an array of label objects in the form of '{ id: number, label: string }'
    # + return - Get deal 
    resource function get deals/[int id](@http:Query {name: "include_fields"} ("next_activity_id"|"last_activity_id"|"first_won_time"|"products_count"|"files_count"|"notes_count"|"followers_count"|"email_messages_count"|"activities_count"|"done_activities_count"|"undone_activities_count"|"participants_count"|"last_incoming_mail_time"|"last_outgoing_mail_time"|"smart_bcc_email"|"source_lead_id")[]? includeFields, @http:Query {name: "custom_fields"} string[]? customFields, @http:Query {name: "include_option_labels"} boolean? includeOptionLabels, @http:Query {name: "include_labels"} boolean? includeLabels) returns UpsertDealResponse {
        return {success: true, data: {id, title: "Acme annual subscription", value: 15000, currency: "USD", ownerId: 12345, personId: 21, orgId: 31, pipelineId: 1, stageId: 3, status: "open", probability: 60, addTime: "2026-09-20T08:15:00Z", updateTime: "2026-10-05T11:42:00Z", expectedCloseDate: "2026-12-15", isDeleted: false, isArchived: false, visibleTo: 3, labelIds: [1, 2]}};
    }

    # Search deals
    #
    # + term - The search term to look for. Minimum 2 characters (or 1 if using `exact_match`). Please note that the search term has to be URL encoded
    # + fields - A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: `address`, `varchar`, `text`, `varchar_auto`, `double`, `monetary` and `phone`. Read more about searching by custom fields <a href="https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields" target="_blank" rel="noopener noreferrer">here</a>
    # + exactMatch - When enabled, only full exact matches against the given term are returned. It is <b>not</b> case sensitive
    # + personId - Will filter deals by the provided person ID. The upper limit of found deals associated with the person is 2000
    # + organizationId - Will filter deals by the provided organization ID. The upper limit of found deals associated with the organization is 2000
    # + status - Will filter deals by the provided specific status. open = Open, won = Won, lost = Lost. The upper limit of found deals associated with the status is 2000
    # + include_fields - Supports including optional fields in the results which are not provided by default
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + return - Success 
    resource function get deals/search(string term, ("custom_fields"|"notes"|"title")[]? fields, @http:Query {name: "exact_match"} boolean? exactMatch, @http:Query {name: "person_id"} int? personId, @http:Query {name: "organization_id"} int? organizationId, ("open"|"won"|"lost")[]? status, @http:Query {name: "include_fields"} ("deal.cc_email")[]? includeFields, int? 'limit, string? cursor) returns GetDealSearchResponse {
        return {success: true, data: {items: [{resultScore: 0.92, item: {id: 7, 'type: "deal", title: "Acme annual subscription", value: 15000, currency: "USD", status: "open", visibleTo: 3, isArchived: false}}]}, additionalData: {nextCursor: ()}};
    }

    # Get all organizations
    #
    # + filterId - If supplied, only organizations matching the specified filter are returned
    # + ids - Optional comma separated string array of up to 100 entity ids to fetch. If filter_id is provided, this is ignored. If any of the requested entities do not exist or are not visible, they are not included in the response
    # + ownerId - If supplied, only organizations owned by the specified user are returned. If filter_id is provided, this is ignored
    # + updatedSince - If set, only organizations with an `update_time` later than or equal to this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + updatedUntil - If set, only organizations with an `update_time` earlier than this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + sort_by - The field to sort by. Supported fields: `id`, `update_time`, `add_time`
    # + sort_direction - The sorting direction. Supported values: `asc`, `desc`
    # + include_fields - Optional comma separated string array of additional fields to include
    # + customFields - Optional comma separated string array of custom fields keys to include. If you are only interested in a particular set of custom fields, please use this parameter for faster results and smaller response.<br/>A maximum of 15 keys is allowed
    # + includeOptionLabels - When provided with a 'true' value, single option and multiple option custom fields values contain objects in the form of '{ id: number, label: string }' instead of plain id
    # + includeLabels - When provided with 'true' value, response will include an array of label objects in the form of '{ id: number, label: string }'
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + return - Get all organizations 
    resource function get organizations(@http:Query {name: "filter_id"} int? filterId, string[]? ids, @http:Query {name: "owner_id"} int? ownerId, @http:Query {name: "updated_since"} string? updatedSince, @http:Query {name: "updated_until"} string? updatedUntil, @http:Query {name: "include_fields"} ("next_activity_id"|"last_activity_id"|"open_deals_count"|"related_open_deals_count"|"closed_deals_count"|"related_closed_deals_count"|"email_messages_count"|"people_count"|"activities_count"|"done_activities_count"|"undone_activities_count"|"files_count"|"notes_count"|"followers_count"|"won_deals_count"|"related_won_deals_count"|"lost_deals_count"|"related_lost_deals_count"|"smart_bcc_email")[]? includeFields, @http:Query {name: "custom_fields"} string[]? customFields, @http:Query {name: "include_option_labels"} boolean? includeOptionLabels, @http:Query {name: "include_labels"} boolean? includeLabels, int? 'limit, string? cursor, @http:Query {name: "sort_by"} "id"|"update_time"|"add_time" sortBy = "id", @http:Query {name: "sort_direction"} "asc"|"desc" sortDirection = "asc") returns GetOrganizationsResponse {
        return {success: true, data: [{id: 31, name: "Acme Corporation", ownerId: 12345, website: "https://www.acme.example", addTime: "2026-08-01T06:00:00Z", updateTime: "2026-10-03T10:10:00Z", isDeleted: false, visibleTo: 3, labelIds: [2], employeeCount: 250}], additionalData: {nextCursor: ()}};
    }

    # Get details of a organization
    #
    # + id - The ID of the organization
    # + include_fields - Optional comma separated string array of additional fields to include
    # + customFields - Optional comma separated string array of custom fields keys to include. If you are only interested in a particular set of custom fields, please use this parameter for faster results and smaller response.<br/>A maximum of 15 keys is allowed
    # + includeOptionLabels - When provided with a 'true' value, single option and multiple option custom fields values contain objects in the form of '{ id: number, label: string }' instead of plain id
    # + includeLabels - When provided with 'true' value, response will include an array of label objects in the form of '{ id: number, label: string }'
    # + return - Get organization 
    resource function get organizations/[int id](@http:Query {name: "include_fields"} ("next_activity_id"|"last_activity_id"|"open_deals_count"|"related_open_deals_count"|"closed_deals_count"|"related_closed_deals_count"|"email_messages_count"|"people_count"|"activities_count"|"done_activities_count"|"undone_activities_count"|"files_count"|"notes_count"|"followers_count"|"won_deals_count"|"related_won_deals_count"|"lost_deals_count"|"related_lost_deals_count"|"smart_bcc_email")[]? includeFields, @http:Query {name: "custom_fields"} string[]? customFields, @http:Query {name: "include_option_labels"} boolean? includeOptionLabels, @http:Query {name: "include_labels"} boolean? includeLabels) returns UpsertOrganizationResponse {
        return {success: true, data: {id, name: "Acme Corporation", ownerId: 12345, website: "https://www.acme.example", addTime: "2026-08-01T06:00:00Z", updateTime: "2026-10-03T10:10:00Z", isDeleted: false, visibleTo: 3, labelIds: [2], employeeCount: 250}};
    }

    # Get all persons
    #
    # + filterId - If supplied, only persons matching the specified filter are returned
    # + ids - Optional comma separated string array of up to 100 entity ids to fetch. If filter_id is provided, this is ignored. If any of the requested entities do not exist or are not visible, they are not included in the response
    # + ownerId - If supplied, only persons owned by the specified user are returned. If filter_id is provided, this is ignored
    # + orgId - If supplied, only persons linked to the specified organization are returned. If filter_id is provided, this is ignored
    # + dealId - If supplied, only persons linked to the specified deal are returned. If filter_id is provided, this is ignored
    # + updatedSince - If set, only persons with an `update_time` later than or equal to this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + updatedUntil - If set, only persons with an `update_time` earlier than this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + sort_by - The field to sort by. Supported fields: `id`, `update_time`, `add_time`
    # + sort_direction - The sorting direction. Supported values: `asc`, `desc`
    # + include_fields - Optional comma separated string array of additional fields to include. `marketing_status` and `doi_status` can only be included if the company has marketing app enabled
    # + customFields - Optional comma separated string array of custom fields keys to include. If you are only interested in a particular set of custom fields, please use this parameter for faster results and smaller response.<br/>A maximum of 15 keys is allowed
    # + includeOptionLabels - When provided with a 'true' value, single option and multiple option custom fields values contain objects in the form of '{ id: number, label: string }' instead of plain id
    # + includeLabels - When provided with 'true' value, response will include an array of label objects in the form of '{ id: number, label: string }'
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + return - Get all persons 
    resource function get persons(@http:Query {name: "filter_id"} int? filterId, string[]? ids, @http:Query {name: "owner_id"} int? ownerId, @http:Query {name: "org_id"} int? orgId, @http:Query {name: "deal_id"} int? dealId, @http:Query {name: "updated_since"} string? updatedSince, @http:Query {name: "updated_until"} string? updatedUntil, @http:Query {name: "include_fields"} ("next_activity_id"|"last_activity_id"|"open_deals_count"|"related_open_deals_count"|"closed_deals_count"|"related_closed_deals_count"|"participant_open_deals_count"|"participant_closed_deals_count"|"email_messages_count"|"activities_count"|"done_activities_count"|"undone_activities_count"|"files_count"|"notes_count"|"followers_count"|"won_deals_count"|"related_won_deals_count"|"lost_deals_count"|"related_lost_deals_count"|"last_incoming_mail_time"|"last_outgoing_mail_time"|"marketing_status"|"doi_status"|"smart_bcc_email")[]? includeFields, @http:Query {name: "custom_fields"} string[]? customFields, @http:Query {name: "include_option_labels"} boolean? includeOptionLabels, @http:Query {name: "include_labels"} boolean? includeLabels, int? 'limit, string? cursor, @http:Query {name: "sort_by"} "id"|"update_time"|"add_time" sortBy = "id", @http:Query {name: "sort_direction"} "asc"|"desc" sortDirection = "asc") returns GetPersonsResponse {
        return {success: true, data: [{id: 21, name: "Jane Doe", firstName: "Jane", lastName: "Doe", ownerId: 12345, orgId: 31, jobTitle: "Head of Procurement", addTime: "2026-08-14T07:30:00Z", updateTime: "2026-10-02T13:20:00Z", isDeleted: false, visibleTo: 3, labelIds: [4]}], additionalData: {nextCursor: ()}};
    }

    # Get details of a person
    #
    # + id - The ID of the person
    # + include_fields - Optional comma separated string array of additional fields to include. `marketing_status` and `doi_status` can only be included if the company has marketing app enabled
    # + customFields - Optional comma separated string array of custom fields keys to include. If you are only interested in a particular set of custom fields, please use this parameter for faster results and smaller response.<br/>A maximum of 15 keys is allowed
    # + includeOptionLabels - When provided with a 'true' value, single option and multiple option custom fields values contain objects in the form of '{ id: number, label: string }' instead of plain id
    # + includeLabels - When provided with 'true' value, response will include an array of label objects in the form of '{ id: number, label: string }'
    # + return - Get person 
    resource function get persons/[int id](@http:Query {name: "include_fields"} ("next_activity_id"|"last_activity_id"|"open_deals_count"|"related_open_deals_count"|"closed_deals_count"|"related_closed_deals_count"|"participant_open_deals_count"|"participant_closed_deals_count"|"email_messages_count"|"activities_count"|"done_activities_count"|"undone_activities_count"|"files_count"|"notes_count"|"followers_count"|"won_deals_count"|"related_won_deals_count"|"lost_deals_count"|"related_lost_deals_count"|"last_incoming_mail_time"|"last_outgoing_mail_time"|"marketing_status"|"doi_status"|"smart_bcc_email")[]? includeFields, @http:Query {name: "custom_fields"} string[]? customFields, @http:Query {name: "include_option_labels"} boolean? includeOptionLabels, @http:Query {name: "include_labels"} boolean? includeLabels) returns UpsertPersonResponse {
        return {success: true, data: {id, name: "Jane Doe", firstName: "Jane", lastName: "Doe", ownerId: 12345, orgId: 31, jobTitle: "Head of Procurement", addTime: "2026-08-14T07:30:00Z", updateTime: "2026-10-02T13:20:00Z", isDeleted: false, visibleTo: 3, labelIds: [4]}};
    }

    # Get all pipelines
    #
    # + sort_by - The field to sort by. Supported fields: `id`, `update_time`, `add_time`
    # + sort_direction - The sorting direction. Supported values: `asc`, `desc`
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + return - Get all pipelines 
    resource function get pipelines(int? 'limit, string? cursor, @http:Query {name: "sort_by"} "id"|"update_time"|"add_time" sortBy = "id", @http:Query {name: "sort_direction"} "asc"|"desc" sortDirection = "asc") returns GetPipelinesResponse {
        return {success: true, data: [{id: 1, name: "Sales pipeline", orderNr: 1, isDealProbabilityEnabled: true, isDeleted: false, addTime: "2026-01-10T09:00:00Z", updateTime: "2026-09-30T09:00:00Z"}], additionalData: {nextCursor: ()}};
    }

    # Get all products
    #
    # + ownerId - If supplied, only products owned by the given user will be returned
    # + ids - Optional comma separated string array of up to 100 entity ids to fetch. If filter_id is provided, this is ignored. If any of the requested entities do not exist or are not visible, they are not included in the response
    # + customFields - Optional comma separated string array of custom fields keys to include. If you are only interested in a particular set of custom fields, please use this parameter for faster results and smaller response.<br/>A maximum of 15 keys is allowed
    # + filterId - The ID of the filter to use
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + sort_by - The field to sort by. Supported fields: `id`, `name`, `add_time`, `update_time`
    # + sort_direction - The sorting direction. Supported values: `asc`, `desc`
    # + updatedSince - If set, only products with an `update_time` later than or equal to this time are returned. In RFC3339 format, e.g. 2025-01-01T10:20:00Z
    # + return - List of products 
    resource function get products(@http:Query {name: "owner_id"} int? ownerId, string[]? ids, @http:Query {name: "custom_fields"} string[]? customFields, @http:Query {name: "filter_id"} int? filterId, string? cursor, int? 'limit, @http:Query {name: "updated_since"} string? updatedSince, @http:Query {name: "sort_by"} "id"|"name"|"add_time"|"update_time" sortBy = "id", @http:Query {name: "sort_direction"} "asc"|"desc" sortDirection = "asc") returns GetProductsResponse {
        return {success: true, data: [{id: 55, name: "Premium support plan", code: "SUP-PREM", unit: "license", tax: 10, isDeleted: false, isLinkable: true, ownerId: 12345, visibleTo: 3, billingFrequency: "monthly", addTime: "2026-07-01T09:00:00Z", updateTime: "2026-09-01T09:00:00Z", description: "24/7 premium support", prices: [{price: 99, cost: 40, currency: "USD"}]}], additionalData: {nextCursor: ()}};
    }

    # Get all stages
    #
    # + pipelineId - The ID of the pipeline to fetch stages for. If omitted, stages for all pipelines will be fetched
    # + sort_by - The field to sort by. Supported fields: `id`, `update_time`, `add_time`, `order_nr`
    # + sort_direction - The sorting direction. Supported values: `asc`, `desc`
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + return - Get all stages 
    resource function get stages(@http:Query {name: "pipeline_id"} int? pipelineId, int? 'limit, string? cursor, @http:Query {name: "sort_by"} "id"|"update_time"|"add_time"|"order_nr" sortBy = "id", @http:Query {name: "sort_direction"} "asc"|"desc" sortDirection = "asc") returns GetStagesResponse {
        return {success: true, data: [{id: 3, name: "Proposal made", pipelineId: 1, orderNr: 3, dealProbability: 60, isDealRotEnabled: false, isDeleted: false, addTime: "2026-01-10T09:00:00Z", updateTime: "2026-09-30T09:00:00Z"}], additionalData: {nextCursor: ()}};
    }

    # Get all tasks
    #
    # + cursor - For pagination, the marker (an opaque string value) representing the first item on the next page
    # + 'limit - For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed
    # + isDone - Whether the task is done or not. If omitted, both done and not done tasks are returned
    # + isMilestone - Whether the task is a milestone or not. If omitted, both milestone and non-milestone tasks are returned
    # + assigneeId - If supplied, only tasks assigned to this user are returned
    # + projectId - If supplied, only tasks belonging to this project are returned
    # + parentTaskId - If `null` is supplied, only root-level tasks (without a parent) are returned. If an integer is supplied, only subtasks of that specific task are returned. By default all tasks are returned
    # + return - A list of tasks 
    resource function get tasks(string? cursor, int? 'limit, @http:Query {name: "is_done"} boolean? isDone, @http:Query {name: "is_milestone"} boolean? isMilestone, @http:Query {name: "assignee_id"} int? assigneeId, @http:Query {name: "project_id"} int? projectId, @http:Query {name: "parent_task_id"} string? parentTaskId) returns GetTasksResponse {
        return {success: true, data: [{id: 9, title: "Prepare kickoff deck", projectId: 4, creatorId: 12345, assigneeIds: [12345], isDone: false, isMilestone: false, priority: 2, description: "Slides for the kickoff meeting", dueDate: "2026-11-10", addTime: "2026-10-04T08:00:00Z", updateTime: "2026-10-04T08:00:00Z"}], additionalData: {nextCursor: ()}};
    }

    # Update an activity
    #
    # + id - The ID of the activity
    # + payload - Request payload to update an activity 
    # + return - Edit activity 
    resource function patch activities/[int id](@http:Payload AddActivityRequest payload) returns UpsertActivityResponse {
        return {success: true, data: {id: 101, subject: "Discovery call with Acme", 'type: "call", done: false, dueDate: "2026-11-02", dueTime: "10:30", ownerId: 12345, creatorUserId: 12345, dealId: 7, personId: 21, orgId: 31, note: "Discuss pricing", addTime: "2026-10-01T09:00:00Z", updateTime: "2026-10-01T09:00:00Z", isDeleted: false, busy: true, priority: 1}};
    }

    # Update a deal
    #
    # + id - The ID of the deal
    # + payload - Request payload to update a deal 
    # + return - Edit deal 
    resource function patch deals/[int id](@http:Payload UpdateDealRequest payload) returns UpsertDealResponse {
        return {success: true, data: {id: 7, title: "Acme annual subscription", value: 15000, currency: "USD", ownerId: 12345, personId: 21, orgId: 31, pipelineId: 1, stageId: 3, status: "open", probability: 60, addTime: "2026-09-20T08:15:00Z", updateTime: "2026-10-05T11:42:00Z", expectedCloseDate: "2026-12-15", isDeleted: false, isArchived: false, visibleTo: 3, labelIds: [1, 2]}};
    }

    # Update a person
    #
    # + id - The ID of the person
    # + payload - Request payload to update a person 
    # + return - Edit person 
    resource function patch persons/[int id](@http:Payload UpdatePersonRequest payload) returns UpsertPersonResponse {
        return {success: true, data: {id: 21, name: "Jane Doe", firstName: "Jane", lastName: "Doe", ownerId: 12345, orgId: 31, jobTitle: "Head of Procurement", addTime: "2026-08-14T07:30:00Z", updateTime: "2026-10-02T13:20:00Z", isDeleted: false, visibleTo: 3, labelIds: [4]}};
    }

    # Add a new activity
    #
    # + payload - Request payload to add a new activity 
    # + return - Add activity 
    resource function post activities(@http:Payload AddActivityRequest payload) returns UpsertActivityResponseOk {
        return <UpsertActivityResponseOk>{body: {success: true, data: {id: 101, subject: "Discovery call with Acme", 'type: "call", done: false, dueDate: "2026-11-02", dueTime: "10:30", ownerId: 12345, creatorUserId: 12345, dealId: 7, personId: 21, orgId: 31, note: "Discuss pricing", addTime: "2026-10-01T09:00:00Z", updateTime: "2026-10-01T09:00:00Z", isDeleted: false, busy: true, priority: 1}}};
    }

    # Add a new deal
    #
    # + payload - Request payload to add a new deal 
    # + return - Add deal 
    resource function post deals(@http:Payload AddDealRequest payload) returns UpsertDealResponseOk {
        return <UpsertDealResponseOk>{body: {success: true, data: {id: 7, title: "Acme annual subscription", value: 15000, currency: "USD", ownerId: 12345, personId: 21, orgId: 31, pipelineId: 1, stageId: 3, status: "open", probability: 60, addTime: "2026-09-20T08:15:00Z", updateTime: "2026-10-05T11:42:00Z", expectedCloseDate: "2026-12-15", isDeleted: false, isArchived: false, visibleTo: 3, labelIds: [1, 2]}}};
    }

    # Add a new organization
    #
    # + payload - Request payload to add a new organization 
    # + return - Add organization 
    resource function post organizations(@http:Payload AddOrganizationRequest payload) returns UpsertOrganizationResponseOk {
        return <UpsertOrganizationResponseOk>{body: {success: true, data: {id: 31, name: "Acme Corporation", ownerId: 12345, website: "https://www.acme.example", addTime: "2026-08-01T06:00:00Z", updateTime: "2026-10-03T10:10:00Z", isDeleted: false, visibleTo: 3, labelIds: [2], employeeCount: 250}}};
    }

    # Add a new person
    #
    # + payload - Request payload to add a new person 
    # + return - Add person 
    resource function post persons(@http:Payload AddPersonRequest payload) returns UpsertPersonResponseOk {
        return <UpsertPersonResponseOk>{body: {success: true, data: {id: 21, name: "Jane Doe", firstName: "Jane", lastName: "Doe", ownerId: 12345, orgId: 31, jobTitle: "Head of Procurement", addTime: "2026-08-14T07:30:00Z", updateTime: "2026-10-02T13:20:00Z", isDeleted: false, visibleTo: 3, labelIds: [4]}}};
    }

    # Add a product
    #
    # + payload - Request payload to add a product 
    # + return - Add product data 
    resource function post products(@http:Payload AddProductRequest payload) returns GetProductResponse {
        return {success: true, data: {id: 55, name: "Premium support plan", code: "SUP-PREM", unit: "license", tax: 10, is_deleted: false, is_linkable: true, owner_id: 12345, visible_to: 3, billing_frequency: "monthly", add_time: "2026-07-01T09:00:00Z", update_time: "2026-09-01T09:00:00Z", description: "24/7 premium support", prices: [{price: 99, cost: 40, currency: "USD"}]}};
    }

    # Add a task
    #
    # + payload - Request payload to add a task 
    # + return - Created task 
    resource function post tasks(@http:Payload AddTaskRequest payload) returns AddTaskResponse {
        return {success: true, data: {id: 9, title: "Prepare kickoff deck", projectId: 4, creatorId: 12345, assigneeIds: [12345], isDone: false, isMilestone: false, priority: 2, description: "Slides for the kickoff meeting", dueDate: "2026-11-10", addTime: "2026-10-04T08:00:00Z", updateTime: "2026-10-04T08:00:00Z"}};
    }
}

public type UpsertActivityResponseOk record {|
    *http:Ok;
    UpsertActivityResponse body;
|};

public type UpsertDealResponseOk record {|
    *http:Ok;
    UpsertDealResponse body;
|};

public type UpsertOrganizationResponseOk record {|
    *http:Ok;
    UpsertOrganizationResponse body;
|};

public type UpsertPersonResponseOk record {|
    *http:Ok;
    UpsertPersonResponse body;
|};
