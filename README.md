# Ballerina Pipedrive connector

[![Build](https://github.com/ballerina-platform/module-ballerinax-pipedrive/actions/workflows/ci.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-pipedrive/actions/workflows/ci.yml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/ballerina-platform/module-ballerinax-pipedrive.svg)](https://github.com/ballerina-platform/module-ballerinax-pipedrive/commits/main)
[![GitHub Issues](https://img.shields.io/github/issues/ballerina-platform/ballerina-library/module/pipedrive.svg?label=Open%20Issues)](https://github.com/ballerina-platform/ballerina-library/labels/module%2Fpipedrive)

## Overview

[Pipedrive](https://www.pipedrive.com/) is a sales CRM and pipeline management platform that helps sales teams track leads, deals, contacts, activities and products through customizable sales pipelines.

The Pipedrive connector offers APIs to connect and interact with the [Pipedrive API v2](https://pipedrive.readme.io/docs/pipedrive-api-v2) endpoints.

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

## Build from the source

### Setting up the prerequisites

1. Download and install Java SE Development Kit (JDK) version 21. You can download it from either of the following sources:

    * [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
    * [OpenJDK](https://adoptium.net/)

   > **Note:** After installation, remember to set the `JAVA_HOME` environment variable to the directory where JDK was installed.

2. Download and install [Ballerina Swan Lake](https://ballerina.io/).

3. Download and install [Docker](https://www.docker.com/get-started).

   > **Note**: Ensure that the Docker daemon is running before executing any tests.

4. Export Github Personal access token with read package permissions as follows,

    ```bash
    export packageUser=<Username>
    export packagePAT=<Personal access token>
    ```

### Build options

Execute the commands below to build from the source.

1. To build the package:

   ```bash
   ./gradlew clean build
   ```

2. To run the tests:

   ```bash
   ./gradlew clean test
   ```

3. To build the without the tests:

   ```bash
   ./gradlew clean build -x test
   ```

4. To run tests against different environments:

   ```bash
   ./gradlew clean test -Pgroups=<Comma separated groups/test cases>
   ```

5. To debug the package with a remote debugger:

   ```bash
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:

   ```bash
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:

    ```bash
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:

   ```bash
   ./gradlew clean build -PpublishToCentral=true
   ```

## Contribute to Ballerina

As an open-source project, Ballerina welcomes contributions from the community.

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/master/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).

## Useful links

* For more information go to the [`pipedrive` package](https://central.ballerina.io/ballerinax/pipedrive/latest).
* For example demonstrations of the usage, go to [Ballerina By Examples](https://ballerina.io/learn/by-example/).
* Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
* Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
