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


import ballerina/os;
import ballerina/test;

final boolean isLiveServer = os:getEnv("IS_LIVE_SERVER") == "true";
final string serviceUrl = isLiveServer ? "https://api.pipedrive.com/api/v2" : "http://localhost:9090";
final string apiToken = isLiveServer ? os:getEnv("PIPEDRIVE_API_TOKEN") : "test_token";

final Client pipedrive = check new ({
    auth: {xApiToken: apiToken},
    httpVersion: isLiveServer ? "2.0" : "1.1"
}, serviceUrl);

// Activities

@test:Config {groups: ["live_tests", "mock_tests"]}
function testAddActivity() returns error? {
    UpsertActivityResponse response = check pipedrive->addActivity({subject: "Discovery call", 'type: "call"});
    test:assertTrue(response?.success == true);
    test:assertTrue(response?.data?.id !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetActivities() returns error? {
    GetActivitiesResponse response = check pipedrive->getActivities();
    test:assertTrue(response?.success == true);
    test:assertTrue((response?.data ?: []).length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetActivity() returns error? {
    UpsertActivityResponse created = check pipedrive->addActivity({subject: "Follow-up call", 'type: "call"});
    int id = check created?.data?.id.ensureType();
    UpsertActivityResponse response = check pipedrive->getActivity(id);
    test:assertTrue(response?.data?.id !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testUpdateActivity() returns error? {
    UpsertActivityResponse created = check pipedrive->addActivity({subject: "Demo", 'type: "meeting"});
    int id = check created?.data?.id.ensureType();
    UpsertActivityResponse response = check pipedrive->updateActivity(id, {subject: "Demo (rescheduled)"});
    test:assertTrue(response?.success == true);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testDeleteActivity() returns error? {
    UpsertActivityResponse created = check pipedrive->addActivity({subject: "Temporary activity", 'type: "task"});
    int id = check created?.data?.id.ensureType();
    DeleteActivityResponse response = check pipedrive->deleteActivity(id);
    test:assertTrue(response?.success == true);
}

// Deals

@test:Config {groups: ["live_tests", "mock_tests"]}
function testAddDeal() returns error? {
    UpsertDealResponse response = check pipedrive->addDeal({title: "Acme annual subscription"});
    test:assertTrue(response?.success == true);
    test:assertTrue(response?.data?.id !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetDeals() returns error? {
    GetDealsResponse response = check pipedrive->getDeals();
    test:assertTrue(response?.success == true);
    test:assertTrue((response?.data ?: []).length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetDeal() returns error? {
    UpsertDealResponse created = check pipedrive->addDeal({title: "Beta renewal"});
    int id = check created?.data?.id.ensureType();
    UpsertDealResponse response = check pipedrive->getDeal(id);
    test:assertTrue(response?.data?.id !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testUpdateDeal() returns error? {
    UpsertDealResponse created = check pipedrive->addDeal({title: "Gamma expansion"});
    int id = check created?.data?.id.ensureType();
    UpsertDealResponse response = check pipedrive->updateDeal(id, {title: "Gamma expansion (updated)"});
    test:assertTrue(response?.success == true);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testDeleteDeal() returns error? {
    UpsertDealResponse created = check pipedrive->addDeal({title: "Temporary deal"});
    int id = check created?.data?.id.ensureType();
    DeleteDealResponse response = check pipedrive->deleteDeal(id);
    test:assertTrue(response?.success == true);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testSearchDeals() returns error? {
    GetDealSearchResponse response = check pipedrive->searchDeals(queries = {term: "Acme"});
    test:assertTrue(response?.success == true);
    test:assertTrue(response?.data?.items !is ());
}

// Persons

@test:Config {groups: ["live_tests", "mock_tests"]}
function testAddPerson() returns error? {
    UpsertPersonResponse response = check pipedrive->addPerson({name: "Jane Doe"});
    test:assertTrue(response?.success == true);
    test:assertTrue(response?.data?.id !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetPersons() returns error? {
    GetPersonsResponse response = check pipedrive->getPersons();
    test:assertTrue(response?.success == true);
    test:assertTrue((response?.data ?: []).length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetPerson() returns error? {
    UpsertPersonResponse created = check pipedrive->addPerson({name: "John Smith"});
    int id = check created?.data?.id.ensureType();
    UpsertPersonResponse response = check pipedrive->getPerson(id);
    test:assertTrue(response?.data?.id !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testUpdatePerson() returns error? {
    UpsertPersonResponse created = check pipedrive->addPerson({name: "Alex Kim"});
    int id = check created?.data?.id.ensureType();
    UpsertPersonResponse response = check pipedrive->updatePerson(id, {jobTitle: "Head of Procurement"});
    test:assertTrue(response?.success == true);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testDeletePerson() returns error? {
    UpsertPersonResponse created = check pipedrive->addPerson({name: "Temporary Person"});
    int id = check created?.data?.id.ensureType();
    DeletePersonResponse response = check pipedrive->deletePerson(id);
    test:assertTrue(response?.success == true);
}

// Organizations

@test:Config {groups: ["live_tests", "mock_tests"]}
function testAddOrganization() returns error? {
    UpsertOrganizationResponse response = check pipedrive->addOrganization({name: "Acme Corporation"});
    test:assertTrue(response?.success == true);
    test:assertTrue(response?.data?.id !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetOrganizations() returns error? {
    GetOrganizationsResponse response = check pipedrive->getOrganizations();
    test:assertTrue(response?.success == true);
    test:assertTrue((response?.data ?: []).length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetOrganization() returns error? {
    UpsertOrganizationResponse created = check pipedrive->addOrganization({name: "Globex"});
    int id = check created?.data?.id.ensureType();
    UpsertOrganizationResponse response = check pipedrive->getOrganization(id);
    test:assertTrue(response?.data?.id !is ());
}

// Pipelines and stages

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetPipelines() returns error? {
    GetPipelinesResponse response = check pipedrive->getPipelines();
    test:assertTrue(response?.success == true);
    test:assertTrue((response?.data ?: []).length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetStages() returns error? {
    GetStagesResponse response = check pipedrive->getStages();
    test:assertTrue(response?.success == true);
    test:assertTrue((response?.data ?: []).length() > 0);
}

// Products

@test:Config {groups: ["live_tests", "mock_tests"]}
function testAddProduct() returns error? {
    GetProductResponse response = check pipedrive->addProduct({name: "Premium support plan"});
    test:assertTrue(response?.success == true);
    test:assertTrue(response?.data !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetProducts() returns error? {
    GetProductsResponse response = check pipedrive->getProducts();
    test:assertTrue(response?.success == true);
    test:assertTrue((response?.data ?: []).length() > 0);
}

// Tasks

@test:Config {groups: ["live_tests", "mock_tests"]}
function testAddTask() returns error? {
    // A project is required for a task; skipped against the live API.
    if isLiveServer {
        return;
    }
    AddTaskResponse response = check pipedrive->addTask({title: "Prepare kickoff deck", projectId: 4});
    test:assertTrue(response?.success == true);
    test:assertTrue(response?.data?.id !is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetTasks() returns error? {
    GetTasksResponse response = check pipedrive->getTasks();
    test:assertTrue(response?.success == true);
    test:assertTrue((response?.data ?: []).length() > 0);
}
