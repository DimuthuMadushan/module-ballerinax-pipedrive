# Running Tests

## Prerequisites

The tests run against a local mock server by default, so no credentials are needed. To run them against the live Pipedrive API, set the following environment variables:

```bash
export IS_LIVE_SERVER=true
export PIPEDRIVE_API_TOKEN=<Your Pipedrive API token>
```

> **Note:** Against the live API the tests create, update and delete real records (activities, deals, persons and organizations). Use a sandbox account.

## Running the tests

Execute the following commands from the `ballerina` directory.

* To run the tests against the mock server:

    ```bash
    bal test --groups mock_tests
    ```

* To run the tests against the live API:

    ```bash
    IS_LIVE_SERVER=true bal test --groups live_tests
    ```

## Test coverage

The test suite covers 25 operations across activities, deals (including search), persons, organizations, pipelines, stages, products and tasks. Each test that needs an existing record creates its own fixture first.
