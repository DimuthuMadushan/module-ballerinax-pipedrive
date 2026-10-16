# Examples

The `ballerinax/pipedrive` connector provides practical examples illustrating usage in various scenarios.

1. [Lead to deal onboarding](./lead_to_deal_onboarding/lead_to_deal_onboarding.md) - Create an organization and contact person, open a deal for them and schedule the first follow-up activity.
2. [Pipeline deal summary](./pipeline_deal_summary/pipeline_deal_summary.md) - Summarise the open deals of every sales pipeline by stage, paging through all deals.

## Prerequisites

1. A Pipedrive account and an API token. See [how to find your API token](https://pipedrive.readme.io/docs/how-to-find-the-api-token).

2. A `Config.toml` file in the example directory with the values listed in the example's document.

## Running an example

Execute the following commands to build an example from the source:

* To build an example:

    ```bash
    bal build
    ```

* To run an example:

    ```bash
    bal run
    ```

## Building the examples with the local module

**Warning**: Due to the absence of support for reading local repositories for single Ballerina files, the Bala of the module is manually written to the central repository as a workaround. Consequently, the bash script may modify your local Ballerina repositories.

Execute the following commands to build all the examples against the changes you have made to the module locally:

* To build all the examples:

    ```bash
    ./build.sh build
    ```

* To run all the examples:

    ```bash
    ./build.sh run
    ```
