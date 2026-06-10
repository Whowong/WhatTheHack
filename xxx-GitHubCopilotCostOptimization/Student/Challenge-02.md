# Challenge 02 - Model Selection & Output Constraints

[< Previous Challenge](./Challenge-01.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-03.md)

## Introduction

Not all tasks need the most powerful model. A cheaper model with tight output constraints can often outperform an expensive model that produces verbose responses. In this challenge, you'll learn to match models to task complexity and apply output constraints that reduce token generation without sacrificing quality.

The key insight: credit cost = (input tokens × input rate) + (output tokens × output rate). While you control input through context engineering, output constraints are your lever for controlling what the model generates.

## Description

Complete the same coding task from your baseline using different GitHub Copilot models and configurations. Your goal is to understand the cost-quality tradeoff and discover when cheaper models with constraints beat expensive models without them.

### Model Comparison

Experiment with the available models in your GitHub Copilot configuration (GPT-4o, Claude Sonnet, Claude Haiku if available, etc.). Complete your baseline coding task with different models and record the total credits consumed, output quality, iteration count, and response verbosity for each.

### Reasoning Levels

Explore how different reasoning levels affect credit utilization

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
