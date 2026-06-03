# Challenge 02 - Model Selection & Output Constraints - Coach's Guide 

[< Previous Solution](./Solution-01.md) - **[Home](./README.md)** - [Next Solution >](./Solution-03.md)

## Notes & Guidance

This challenge demonstrates that credit cost depends on both model selection and output volume. A cheaper model with tight constraints often beats an expensive model with verbose output.

### Key Concepts to Explain

**Model Pricing Hierarchy (Approximate):**
- GPT-4o class: ~1x baseline cost
- Claude Sonnet: ~1x baseline cost
- Claude Haiku: ~0.1x baseline cost (10x cheaper)

**Output constraints as cost controls:**
- "Output code only" eliminates explanation tokens
- JSON schema constrains response format
- Word limits ("explain in <50 words") cap verbosity
- Structured output prevents rambling

### Key Data Points to Share

**Real-world comparison:**
- Regular Agent Mode (Sonnet): ~65 credits for a moderate task
- Custom Agent (Haiku) with "code only" constraint: ~7.6 credits for same task
- Savings: 88% reduction by choosing cheaper model + output constraints

**When to use each model:**
- Haiku: Boilerplate, refactoring, well-defined tasks
- Sonnet/GPT-4: Complex logic, architecture decisions, debugging novel issues
- Auto mode: Let GitHub Copilot route based on complexity (10% discount for cache-aware routing)

### Expected Time

60 minutes:
- 20 minutes: Complete baseline task with 3+ different models
- 20 minutes: Apply output constraints to one model
- 20 minutes: Measure and document findings

### Success Criteria Validation

Students should show credit cost comparison table across models and demonstrate measurable savings from output constraints.

### Hints to Share

- The fastest model isn't always the cheapest—total credits = input rate + output rate
- If your prompt is 1000 tokens and response is 500 tokens, output constraints save more than model switching
- Auto mode's 10% discount comes from cache-aware routing, but only when natural task boundaries align
