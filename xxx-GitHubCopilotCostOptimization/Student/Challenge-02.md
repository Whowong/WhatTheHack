# Challenge 02 - Model Selection & Output Constraints

[< Previous Challenge](./Challenge-01.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-03.md)

## Introduction

Not all tasks need the most powerful model. A cheaper model with tight output constraints can often outperform an expensive model that produces verbose responses. In this challenge, you'll learn to match models to task complexity and apply output constraints that reduce token generation without sacrificing quality.

The key insight: credit cost = (input tokens × input rate) + (output tokens × output rate). While you control input through context engineering, output constraints are your lever for controlling what the model generates.

## Description

Complete the same coding task from your baseline using different GitHub Copilot models and configurations. Your goal is to understand the cost-quality tradeoff and discover when cheaper models with constraints beat expensive models without them.

### Part A: Model Comparison

Complete your baseline coding task using each available model/reasoning level combination:

- GPT-4o (standard agent mode)
- Claude Sonnet (standard agent mode)
- Claude Haiku (if available via custom agent)
- Any other models available in your GitHub Copilot configuration

For each model:

- Record total credits consumed
- Record output quality (does it meet acceptance criteria?)
- Record number of iterations needed to reach a working solution
- Note the model's response verbosity (tokens generated)

### Part B: Output Constraints

Choose one model from Part A and complete the same task multiple times with different output constraints:

- No constraints (baseline)
- "Output code only, minimal explanation"
- Structured output (e.g., JSON schema for configuration, specific code format)
- Tight word limits for explanations ("explain in <50 words")

Measure how output constraints affect both token count and credit cost.

### Part C: Auto Mode Exploration

If available, use GitHub Copilot's Auto mode (task-aware routing with cache-aware model selection) to complete the same task:

- Observe which models Auto mode selects for different subtasks
- Note when Auto mode chooses to leverage cache vs. switch models
- Compare total credit cost vs. manually selecting a single model
- Understand the 10% discount Auto mode provides for cache-friendly routing

## Success Criteria

To complete this challenge successfully, you should be able to:

- Demonstrate completion of the baseline task using at least three different models
- Show measured credit costs for each model with identical input conditions
- Verify that output quality met acceptance criteria for each model tested
- Demonstrate credit cost reduction from applying output constraints to at least one model
- Show comparative data proving that a cheaper model with constraints can beat an expensive model without constraints on total credit cost
- Explain when Auto mode provides value vs. manual model selection

## Learning Resources

- [GitHub Copilot Model Selection Guide](https://docs.github.com/en/copilot)
- [Prompt Engineering: Output Formatting Techniques](https://www.promptingguide.ai/)
- [Understanding Model Pricing and Token Rates](https://docs.github.com/en/copilot/about-github-copilot)

## Tips

- Input tokens are cheaper than output tokens for most models
- Verbose explanations cost credits—request code-only output when you don't need narration
- Haiku-class models can be 85-90% cheaper than Sonnet/GPT-4 class models
- Auto mode's 10% discount comes from cache-aware routing, but only when task boundaries align with cache boundaries
- The best model isn't always the smartest one—it's the one that solves your problem at the lowest cost

***NOTE:** Do NOT provide direct links to files or folders in the What The Hack repository from the student guide. Instead, you should refer to the Resource.zip file provided by the coach.*

***NOTE:** As an exception, you may provide a GitHub 'raw' link to an individual file such as a PDF or Office document, so long as it does not open the contents of the file in the What The Hack repo on the GitHub website.*

***NOTE:** Any direct links to the What The Hack repo will be flagged for review during the review process by the WTH V-Team, including exception cases.*

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
