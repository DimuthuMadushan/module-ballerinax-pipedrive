## Overview

[Pipedrive](https://www.pipedrive.com/) is a sales CRM and pipeline management platform that helps sales teams track leads, deals, contacts, activities and products through customizable sales pipelines.

The Pipedrive connector offers APIs to connect and interact with the [Pipedrive API v2](https://developers.pipedrive.com/docs/api/v1) endpoints, specifically based on Pipedrive API v2.

### Key features

- Manage deals, persons and organizations, including their followers and custom fields
- Track activities and tasks, and keep them linked to deals, contacts and projects
- Configure pipelines and stages, and monitor deal progress through them
- Manage products, product variations, images and discounts attached to deals
- Search across deals, persons, organizations, leads, products and projects

## Setup guide

To use the Pipedrive connector, you need a Pipedrive account and an API token.

1. If you do not have a Pipedrive account, sign up at [pipedrive.com](https://www.pipedrive.com/).

2. Log in to your Pipedrive account and open your personal preferences from the account menu in the top right corner.

3. Open the **API** tab and copy your personal API token.

> **Note:** Applications that act on behalf of other Pipedrive users can authenticate with OAuth 2.0 instead. Register an app in the [Pipedrive Developer Hub](https://developers.pipedrive.com/) and use the refresh token grant configuration of the connector.

## Quickstart

To use the `pipedrive` connector in your Ballerina application, update the `.bal` file as follows:

1. Import the `pipedrive` module.

    ```ballerina
    import ballerinax/pipedrive;
    ```

2. Create a `Config.toml` file with your API token.

    ```toml
    apiToken = "<Your Pipedrive API token>"
    ```

3. Create a client with the API token and invoke an operation.

    ```ballerina
    configurable string apiToken = ?;

    public function main() returns error? {
        pipedrive:Client pipedrive = check new ({auth: {xApiToken: apiToken}});
        pipedrive:GetPipelinesResponse _ = check pipedrive->getPipelines();
    }
    ```

4. Use `bal run` to compile and run the Ballerina program.

## Examples

The `Pipedrive` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/ballerina-platform/module-ballerinax-pipedrive/tree/main/examples/), covering the following use cases:

1. [Lead to deal onboarding](https://github.com/ballerina-platform/module-ballerinax-pipedrive/tree/main/examples/lead_to_deal_onboarding) - Create an organization and contact person, open a deal for them and schedule the first follow-up activity.
2. [Pipeline deal summary](https://github.com/ballerina-platform/module-ballerinax-pipedrive/tree/main/examples/pipeline_deal_summary) - Summarise the open deals of every sales pipeline by stage, paging through all deals.
