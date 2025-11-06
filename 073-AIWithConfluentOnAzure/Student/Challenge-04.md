# Challenge 04 - Employee Experience

[< Previous Challenge](./Challenge-03.md) - **[Home](../README.md)** 


## Pre-requisites

You must complete **Challenge 02** and **Challenge 03** before starting this challenge. The data pipeline from the replenishments, returns and purchases is necessary for this experience to be complete and successful.


## Introduction

In this challenge, you will assume the role of an employee interacting with the employee agent experience. The objective is to demonstrate the employee's ability to access comprehensive operational insights, including inventory, cumulative metrics, and net sales for each product SKU. The employee agent uses the same MCP service and data pipeline powered by Apache Flink, with data originating from real-time events such as purchases, returns, and replenishments.

This challenge requires interaction across multiple personas. You will switch between customer, supplier, and employee tabs or windows to simulate real-world concurrent activity. Each action triggers updates to the net inventory count and net sales tables, and the employee agent should always return accurate, real-time data.

## Description

During this challenge, you will:

1. Log into the employee agent experience.
2. Query real-time inventory and cumulative transaction metrics.
3. Use other personas (customer and supplier) to trigger purchase, return, and replenishment events.
4. Confirm that the employee agent responds with accurate values based on the updated data pipeline.

Tasks to complete:

* View inventory levels for any product SKU.
* View inventory levels for all product SKUs within a department.
* Retrieve cumulative purchase units for any SKU after a purchase event.
* Retrieve cumulative return units for any SKU after a return event.
* Retrieve cumulative replenishment units for any SKU after a supplier replenishment event.
* Retrieve the net inventory count for any SKU after any event.
* Retrieve the net sales numbers for any SKU after events are finalized.

## Success Criteria

This challenge is complete when the following conditions are met:

* The employee agent can display inventory levels for individual SKUs.
* The employee agent can display inventory levels for all SKUs in a department.
* Cumulative purchase, return, and replenishment values for any SKU are retrieved accurately.
* The agent provides accurate net inventory counts and net sales values after transactions.
* Inventory and sales values shown by the agent match what is observed in Azure AI Search and Flink output.

Completion checklist:

* [ ] Employee agent retrieves current inventory for a SKU.
* [ ] Employee agent retrieves inventory for a department.
* [ ] Cumulative purchase units update after customer purchase events.
* [ ] Cumulative return units update after customer return events.
* [ ] Cumulative replenishment units update after supplier replenishment events.
* [ ] Net inventory count is accurate after each event type.
* [ ] Net sales values update correctly after each event type.

## Learning Resources

* Confluent Cloud Flink quickstart
  [https://docs.confluent.io/cloud/current/flink/get-started/index.html](https://docs.confluent.io/cloud/current/flink/get-started/index.html)

* Flink SQL upsert and aggregate patterns
  [https://nightlies.apache.org/flink/flink-docs-stable/docs/dev/table/sql/queries/insert/](https://nightlies.apache.org/flink/flink-docs-stable/docs/dev/table/sql/queries/insert/)

* Azure AI Search indexing concepts
  [https://learn.microsoft.com/azure/search/search-what-is-azure-search](https://learn.microsoft.com/azure/search/search-what-is-azure-search)

* Kafka event streaming fundamentals
  [https://kafka.apache.org/documentation/](https://kafka.apache.org/documentation/)