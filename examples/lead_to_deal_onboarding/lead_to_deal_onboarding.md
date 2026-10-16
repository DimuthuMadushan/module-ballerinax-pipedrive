# Lead to deal onboarding

This example onboards a new sales lead in Pipedrive. It creates an organization and a contact person, opens a deal for them and schedules the first follow-up call.

## Prerequisites

1. A Pipedrive account and an API token. See [how to find your API token](https://pipedrive.readme.io/docs/how-to-find-the-api-token).

2. Create a `Config.toml` file in the example directory with the following content:

```toml
apiToken = "<API token>"
organizationName = "<Organization name>"
personName = "<Contact person name>"
dealTitle = "<Deal title>"
dealValue = 15000.0
currency = "USD"
followUpSubject = "<Follow-up activity subject>"
followUpDueDate = "<Due date, YYYY-MM-DD>"
```

## Run the example

Execute the following command to run the example:

```bash
bal run
```
