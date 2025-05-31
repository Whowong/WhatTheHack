# Challenge 03 - Simulation of Employee Persona

[< Previous Challenge](./Challenge-02.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-04.md)


## Pre-requisites

You must complete **Challenge 01** and **Challenge 02** before starting this challenge. The backend API and frontend interface must be fully deployed and functional, as this challenge builds on top of the running application infrastructure.


## Introduction

In this challenge, you'll simulate the experience of an employee interacting with the AI agent to perform various business-critical operations. This persona has access to operational data such as purchases, returns, and inventory, and can also perform updates to the product catalog in near real time.

The goal of this challenge is to observe how changes initiated through the agent are processed and reflected across systems in near real time using Confluent Cloud on Azure. These updates—whether querying data or modifying records—flow through Kafka topics, are processed via stream processors like Flink or ksqlDB, and are reflected in the destination datastore with minimal delay.


## Description

In this challenge, you will authenticate as an employee and issue commands to the AI agent to retrieve and update retail operations data. These interactions are routed through the backend API, processed via Confluent Cloud's real-time data infrastructure, and ultimately reflected in the destination datastore.

Please implement the following capabilities for the employee persona:

- Authenticate using an employee ID and 4-digit PIN.
- Retrieve summaries for a specific date:
  - Total purchases
  - Total replenishments
  - Total returns
  - Net sales (purchases - returns)
- Query current inventory level of a specific SKU.
- Modify inventory-related data:
  - Change the maximum inventory level of a specific SKU.
  - Update the unit price of a specific SKU.
  - Add a new SKU to the product catalog.
  - Modify the list of SKUs a vendor is authorized to replenish.

All modifications should propagate through Confluent Cloud and be reflected in the destination data store (e.g., Cosmos DB or Azure AI Search) in near real time.


## Success Criteria

To complete this challenge successfully, you should be able to:
- Show that employee users can authenticate using ID and PIN.
- Show at least three successful read operations.
- Show at least two successful write operations.
- Verify that data changes propagate through Confluent Cloud and are reflected in the destination data store in near real time.

## Learning Resources

_List of relevant links and online articles that should give the attendees the knowledge needed to complete the challenge._

*Think of this list as giving the students a head start on some easy Internet searches. However, try not to include documentation links that are the literal step-by-step answer of the challenge's scenario.*

***Note:** Use descriptive text for each link instead of just URLs.*

*Sample IoT resource links:*

- [What is a Thingamajig?](https://www.bing.com/search?q=what+is+a+thingamajig)
- [10 Tips for Never Forgetting Your Thingamajic](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
- [IoT & Thingamajigs: Together Forever](https://www.youtube.com/watch?v=yPYZpwSpKmA)

## Tips

*This section is optional and may be omitted.*

*Add tips and hints here to give students food for thought. Sample IoT tips:*

- IoTDevices can fail from a broken heart if they are not together with their thingamajig. Your device will display a broken heart emoji on its screen if this happens.
- An IoTDevice can have one or more thingamajigs attached which allow them to connect to multiple networks.

## Advanced Challenges (Optional)

*If you want, you may provide additional goals to this challenge for folks who are eager.*

*This section is optional and may be omitted.*

*Sample IoT advanced challenges:*

Too comfortable?  Eager to do more?  Try these additional challenges!

- Observe what happens if your IoTDevice is separated from its thingamajig.
- Configure your IoTDevice to connect to BOTH the mothership and IoTQueenBee at the same time.
