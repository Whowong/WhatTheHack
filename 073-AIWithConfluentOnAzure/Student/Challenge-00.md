# Challenge 00 - Prerequisites - Ready, Set, GO!

**[Home](../README.md)** - [Next Challenge >](./Challenge-01.md)

## Introduction

In this challenge, you will provision all required infrastructure for the hackathon—both in Azure and Confluent Cloud—using automated Terraform modules. The focus of this challenge is to set up the cloud resources needed for data ingestion, streaming, schema validation, and AI search.

By the end of this challenge, you should have:

- Confluent Cloud configured with Kafka topics, Schema Registry, and Source/Sink Connectors
- Azure resources deployed, including Cosmos DB, Azure Storage, Azure OpenAI, Redis Cache, and Azure AI Search
- MCP-powered AI agents running and able to communicate with the deployed infrastructure.

## Common Prerequisites

We have compiled a list of common tools and software that you will need to complete Challenge 1 and deploy the Terraform-based infrastructure to Azure and Confluent Cloud.

You may not need all of them outside this challenge. However, if you work with Azure or Confluent Cloud on a regular basis, these are essential components for your development toolkit.

* **Azure Subscription**

  * You must have access to an active Azure subscription with permissions to create resources.
* **Managing Cloud Resources**

  * **Azure Portal**
    [https://portal.azure.com](https://portal.azure.com)
    Used to visually validate resources deployed by Terraform.
  * **Azure CLI**
    [https://learn.microsoft.com/cli/azure/install-azure-cli](https://learn.microsoft.com/cli/azure/install-azure-cli)
    Required to authenticate and verify your subscription and resource group.

    * After installation, login using:

      ```bash
      az login
      ```
  * **Terraform CLI**
    [https://developer.hashicorp.com/terraform/downloads](https://developer.hashicorp.com/terraform/downloads)
    Required to deploy infrastructure modules for Azure and Confluent Cloud.

    * After installation, you should be able to run the following command with the Terraform CLI:
      ```bash
      terraform init
      ```
* **Confluent Cloud CLI**

  * Required to authenticate to Confluent Cloud and interact with Kafka topics and connectors
    [https://docs.confluent.io/confluent-cli/current/install.html](https://docs.confluent.io/confluent-cli/current/install.html)

    Use the following command to authenticate with Confluent Cloud via the CLI:
    ```bash
    confluent --help

    ```

Optional but helpful:

* **Visual Studio Code**

  * Recommended IDE for editing Terraform configuration files
    [https://code.visualstudio.com](https://code.visualstudio.com)

* **Azure Storage Explorer**

  * Helpful for inspecting Blob Storage input files during validation
    [https://azure.microsoft.com/features/storage-explorer/](https://azure.microsoft.com/features/storage-explorer/)
    

## Description

In this challenge, you will:

1. **Clone the Hackathon Repository** (contains all Terraform modules)
2. **Update Terraform variables** with your Azure subscription ID, principal IDs, and Confluent API keys
3. **Run Terraform** to provision the infrastructure
4. **Confirm data flows through connectors**

### What the Terraform automation will create

| Platform            | Resource Provisioned                                                                                       |
| ------------------- | ---------------------------------------------------------------------------------------------------------- |
| **Azure**           | Azure OpenAI, Cosmos DB, Azure AI Search, Azure Redis Cache, Azure Storage Account                         |
| **Confluent Cloud** | Kafka Cluster, Schema Registry, Kafka topics, Cosmos DB & Blob Source connectors, AI Search Sink connector |
| **AI Agents / MCP** | Deployment of microservices + MCP servers that expose capabilities to agents                               |

### What you will verify

* AI agents respond and can list the 8 departments
* Source connectors flow data from Cosmos DB and Blob Storage → Kafka topics
* Sink connector pushes data from Kafka → Azure AI Search

## Success Criteria

To complete the challenge successfully, all of the following must be true:

* Terraform deploys successfully** and resources appear in Azure Portal and Confluent Cloud
* Source connectors are live and pushing data** from Cosmos DB and Blob Storage into Kafka topics
* Sink connector is pushing data into Azure AI Search** (net sales + net inventory count topics)
* The MCP-powered AI agent can:

* Respond when prompted
* State its name
* List all eight departments in the grocery store

Completion checklist:

| Objective                         | Verification Step                            |
| --------------------------------- | -------------------------------------------- |
| Azure + Confluent resources exist | Terraform output + portal checks             |
| Source connectors working         | Messages visible in Kafka topics             |
| Sink connector working            | Index documents visible in Azure AI Search   |
| Agent connected                   | Agent responds with name + lists departments |

## Learning Resources


* **Install Azure CLI**
  [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli)

* **Install Terraform CLI**
  [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)

* **Install Confluent CLI**
  [Confluent CLI](https://docs.confluent.io/confluent-cli/current/install.html)

* **Azure Service Principal authentication**
  [Azure Service Principal Setup](https://learn.microsoft.com/azure/active-directory/develop/howto-create-service-principal-portal)

* **Confluent Cloud getting started**
  [Confluent Cloud on Azure](https://docs.confluent.io/cloud/current/get-started/index.html)

* **Confluent Source & Sink Connectors**
  [Kafka Connectors from Confluent](https://docs.confluent.io/cloud/current/connectors/index.html)

* **Azure AI Search documentation**
  [Azure AI Search Docs](https://learn.microsoft.com/azure/search/search-what-is-azure-search)

* **Azure Cosmos DB documentation**
  [Azure Cosmos DB Docs](https://learn.microsoft.com/azure/cosmos-db/introduction)

