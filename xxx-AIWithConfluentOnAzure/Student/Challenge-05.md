# Challenge 05 - Simulation of Customers - Purchases and Returns

[< Previous Challenge](./Challenge-04.md) - **[Home](../README.md)**


## Pre-requisites (Optional)

You must complete **Challenge 01** and **Challenge 02** before starting this challenge. The backend API and frontend chat interface must be fully deployed and functional for customer interactions to work correctly.


## Introduction

In this challenge, you'll simulate how customers interact with the AI agent to browse products, make purchases, and request returns. These interactions represent real-world commerce flows and depend on accurate, up-to-date inventory and pricing information.

The goal of this challenge is to observe how customer-facing operations impact the backend in real time. All updates made through the agent—such as purchasing or returning SKUs—should flow through Confluent Cloud and be reflected in the destination datastore in near real time.


## Description

Customers authenticate using a customer ID and 4-digit PIN. Once signed in, they should be able to browse available SKUs, check stock status, make purchases, and return eligible items.

Please implement the following capabilities for the customer persona:

- Authenticate using customer ID and 4-digit PIN.
- Retrieve:
  - A list of all SKUs available in the store, regardless of inventory.
  - A list of SKUs currently in stock.
  - A list of SKUs currently out of stock.
  - The status of a specific SKU, including unit price, inventory level, and discount (if any).
- Add an SKU to the shopping cart (up to available inventory).
- Make a purchase for all items in the cart, generating a receipt ID.
- Retrieve transaction details for a specific receipt ID.
- Return an SKU from a previous purchase by providing a receipt ID, as long as the return is within 14 days of the purchase date.

All purchase and return actions should be processed via Confluent Cloud and reflected in the destination datastore in near real time.

## Success Criteria

To complete this challenge successfully, you should be able to:
- Show that customer users can authenticate using ID and PIN.
- Verify you can retrie the product catalog and inventory information.
- Complete a purchase flow with a generated receipt ID.
- Show how you can return a purchased item within the allowed return window.
- Verify that purchases and returns are reflected in the destination data store in near real time through Confluent Cloud.

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
