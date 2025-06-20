# Challenge 04 - Simulation of Suppliers - Replenishments

[< Previous Challenge](./Challenge-03.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-05.md)


## Pre-requisites

You must complete **Challenge 01** and **Challenge 02** before starting this challenge. The backend, frontend, and employee data operations must be functional to ensure supplier-related workflows integrate with the rest of the system.


## Introduction

In this challenge, you’ll take on the role of a vendor or supplier interacting with the AI agent to monitor and replenish inventory levels. These interactions are authorized and scoped to SKUs each vendor is allowed to manage.

The goal of this challenge is to observe how inventory replenishment operations are processed in near real time through Confluent Cloud on Azure and reflected immediately in downstream systems like Cosmos DB or Azure AI Search.


## Description

Vendors will authenticate into the system using their vendor ID and 4-digit PIN. Once authenticated, the vendor will use the AI agent to retrieve SKU-level data and issue replenishment commands.

- Authenticate using vendor ID and 4-digit PIN.
- Retrieve:
  - A list of SKUs the vendor is authorized to replenish.
  - The Maximum Inventory Level (MIL) for each of those SKUs.
  - The current inventory level of a specific authorized SKU.
- Replenish the inventory of an authorized SKU up to 100% of its MIL.

All replenishment updates should be routed through Confluent Cloud and reflected in the destination data store in near real time.

## Success Criteria

To complete this challenge successfully, you should be able to:
- Show that vendor users can authenticate using ID and PIN.
- Verify that you are able to retrie a authorized SKUs and their inventory information.
- Verify a successful replenishment operation that updates inventory to the correct MIL occurs.
- Verify that inventory updates are reflected in the destination data store in near real time through Confluent Cloud.

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
