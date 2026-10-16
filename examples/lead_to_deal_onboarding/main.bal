// Onboards a new sales lead: creates the organization and contact person, opens a deal for them
// and schedules the first follow-up activity.

import ballerina/io;
import ballerinax/pipedrive;

configurable string apiToken = ?;
configurable string organizationName = ?;
configurable string personName = ?;
configurable string dealTitle = ?;
configurable decimal dealValue = ?;
configurable string currency = "USD";
configurable string followUpSubject = ?;
configurable string followUpDueDate = ?;

public function main() returns error? {
    pipedrive:Client pipedrive = check new ({auth: {xApiToken: apiToken}});

    // Step 1: create the organization
    pipedrive:UpsertOrganizationResponse org = check pipedrive->addOrganization({name: organizationName});
    int orgId = check org?.data?.id.ensureType();
    io:println("Created organization ", organizationName, " with ID ", orgId);

    // Step 2: create the contact person under the organization
    pipedrive:UpsertPersonResponse person = check pipedrive->addPerson({name: personName, orgId});
    int personId = check person?.data?.id.ensureType();
    io:println("Created person ", personName, " with ID ", personId);

    // Step 3: open a deal for the person and organization
    pipedrive:UpsertDealResponse deal = check pipedrive->addDeal({
        title: dealTitle,
        value: dealValue,
        currency,
        personId,
        orgId
    });
    int dealId = check deal?.data?.id.ensureType();
    io:println("Created deal ", dealTitle, " with ID ", dealId);

    // Step 4: schedule the first follow-up call on the deal
    pipedrive:UpsertActivityResponse activity = check pipedrive->addActivity({
        subject: followUpSubject,
        'type: "call",
        dueDate: followUpDueDate,
        dealId,
        orgId
    });
    int activityId = check activity?.data?.id.ensureType();
    io:println("Scheduled follow-up activity with ID ", activityId);
}
