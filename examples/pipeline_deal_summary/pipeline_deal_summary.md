# Pipeline deal summary

This example summarises the open deals of every sales pipeline in a Pipedrive account. For each pipeline it lists the stages and prints the number of open deals and their total value per stage, paging through all deals.

## Prerequisites

1. A Pipedrive account and an API token. See [how to find your API token](https://pipedrive.readme.io/docs/how-to-find-the-api-token).

2. Create a `Config.toml` file in the example directory with the following content:

```toml
apiToken = "<API token>"
pageSize = 100
```

## Run the example

Execute the following command to run the example:

```bash
bal run
```
