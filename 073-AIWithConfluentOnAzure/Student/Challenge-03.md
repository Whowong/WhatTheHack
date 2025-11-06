# Challenge 03 - Customer Experience

[< Previous Challenge](./Challenge-02.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-04.md)


## Pre-requisites

You must complete **Challenge 01** and **Challenge 02** before starting this challenge. The data pipeline with Flink SQL is necessary for this experience to function properly.


## Introduction

In this challenge, you will assume the role of a customer interacting with the customer agent experience. The purpose of this challenge is to demonstrate real-time event processing as purchase and return actions affect inventory levels. When a customer makes a purchase or return, Apache Flink processes the streaming events and updates the net sales and net inventory count tables, which are then indexed into Azure AI Search and made available to the agent.

## Description

During this challenge, you will:

1. Log into the customer agent experience.
2. View inventory levels before purchasing items.
3. Perform a purchase action for one or more product SKUs.
4. Perform a return action for selected product SKUs.
5. Validate that inventory and sales data update in real time.

Tasks to complete:

* View inventory levels for a specific product SKU before purchasing.
* Purchase product SKUs from different departments and record the quantities purchased.
* Return product SKUs from each department and record the quantities returned.
* After each purchase and return event, view the updated inventory to confirm changes.
* Ensure that inventory updates occur within a three-second window.

## Success Criteria

This challenge is complete when the following conditions are met:

* The customer agent displays the inventory level of a SKU before a purchase.
* After a purchase, inventory is reduced and net sales are updated.
* After a return, inventory and net sales are updated following the business rules defined in the Flink merge logic.
* All inventory updates are visible within three seconds of the action being completed.
* The agent retrieves accurate, real-time values via MCP services backed by Azure AI Search.

Completion checklist:

* [ ] Customer can view inventory for a SKU before purchasing.
* [ ] Customer executes a purchase and observes updated values.
* [ ] Customer executes a return and observes updated values.
* [ ] Updated inventory and sales values are reflected within the required three-second threshold.
* [ ] Inventory and sales values shown by the agent match values in Azure AI Search and Flink.

## Learning Resources

* Confluent Cloud Flink quickstart
  [https://docs.confluent.io/cloud/current/flink/get-started/index.html](https://docs.confluent.io/cloud/current/flink/get-started/index.html)

* Event processing and upsert patterns in Apache Flink
  [https://nightlies.apache.org/flink/flink-docs-stable/docs/dev/table/sql/queries/insert/](https://nightlies.apache.org/flink/flink-docs-stable/docs/dev/table/sql/queries/insert/)

* Azure AI Search indexing concepts
  [https://learn.microsoft.com/azure/search/search-what-is-azure-search](https://learn.microsoft.com/azure/search/search-what-is-azure-search)

* Kafka event streaming fundamentals
  [https://kafka.apache.org/documentation/](https://kafka.apache.org/documentation/)