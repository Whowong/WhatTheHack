# Challenge 02 - Model Selection & Output Constraints

[< Previous Challenge](./Challenge-01.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-03.md)

## Introduction

Not all tasks need the most powerful model. A cheaper model with tight output constraints can often outperform an expensive model that produces verbose responses. In this challenge, you'll learn to match models to task complexity and apply output constraints that reduce token generation without sacrificing quality.

The key insight: credit cost = (input tokens × input rate) + (output tokens × output rate). While you control input through context engineering, output constraints are your lever for controlling what the model generates.

## Description

Complete the same coding task from your baseline using different GitHub Copilot models and configurations. Your goal is to understand the cost-quality tradeoff and discover when cheaper models with constraints beat expensive models without them.

### Model Comparison

Experiment with the available models in your GitHub Copilot configuration (GPT-4o, Claude Sonnet, Claude Haiku if available, etc.). Complete your baseline coding task with different models and record the total credits consumed, output quality, iteration count, and response verbosity for each.

### Output Constraints

Explore how output constraints affect cost. Choose one model and complete the same task with different constraint approaches: no constraints, code-only output, structured formats, or word limits. Measure how these constraints affect token count and credit cost.

### Auto Mode

If GitHub Copilot's Auto mode is available, try it on the same task. Observe which models it selects for different subtasks, when it leverages cache, and how total cost compares to manual model selection. Understand the tradeoffs of automatic routing vs. manual control.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Demonstrate completion of the baseline task using multiple different models
- Show measured credit costs for each model with comparable input conditions
- Verify that output quality met acceptance criteria across model tests
- Demonstrate credit cost reduction from applying output constraints
- Show comparative data proving that a cheaper model with constraints can beat an expensive model without constraints
- Explain when Auto mode provides value vs. manual model selection

## Learning Resources

- [GitHub Copilot Model Selection Guide](https://docs.github.com/en/copilot)
- [Prompt Engineering: Output Formatting Techniques](https://www.promptingguide.ai/)
- [Understanding Model Pricing and Token Rates](https://docs.github.com/en/copilot/about-github-copilot)

## Tips

- Input tokens are cheaper than output tokens for most models
- Verbose explanations cost credits—request code-only output when you don't need narration
- Haiku-class models can be significantly cheaper than Sonnet/GPT-4 class models
- Auto mode's discount comes from cache-aware routing, but only when task boundaries align with cache boundaries
- The best model isn't always the smartest one—it's the one that solves your problem at the lowest cost

*Sample challenge text for the IoT Hack Of The Century:*

In this challenge, you will properly configure the thingamajig for your IoT device so that it can communicate with the mother ship.

You can find a sample `thingamajig.config` file in the `/ChallengeXX` folder of the Resources.zip file provided by your coach. This is a good starting reference, but you will need to discover how to set exact settings.

Please configure the thingamajig with the following specifications:
- Use dynamic IP addresses
- Only trust the following whitelisted servers: "mothership", "IoTQueenBee" 
- Deny access to "IoTProxyShip"

You can view an architectural diagram of an IoT thingamajig here: [Thingamajig.PDF](/Student/Resources/Architecture.PDF?raw=true).

## Success Criteria

*Success criteria goes here. The success criteria should be a list of checks so a student knows they have completed the challenge successfully. These should be things that can be demonstrated to a coach.* 

*The success criteria should not be a list of instructions.*

*Success criteria should always start with language like: "Validate XXX..." or "Verify YYY..." or "Show ZZZ..." or "Demonstrate you understand VVV..."*

*Sample success criteria for the IoT sample challenge:*

To complete this challenge successfully, you should be able to:
- Verify that the IoT device boots properly after its thingamajig is configured.
- Verify that the thingamajig can connect to the mothership.
- Demonstrate that the thingamajic will not connect to the IoTProxyShip

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
