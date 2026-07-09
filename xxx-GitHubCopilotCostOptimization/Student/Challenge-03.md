# Challenge 03 - Model Selection & Output Constraints

[< Previous Challenge](./Challenge-02.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-04.md)

## Introduction

Not every task needs the most powerful model. Under usage-based billing, cost is **not** just the model's per-token price. It is:

> **Total cost = token rate × tokens × attempts**

That last term — *attempts* — is the one people forget. A **base model** that answers a simple task correctly in a few tokens is a bargain. But that same base model, set loose on a task it cannot actually reason through, will hand you a **confident, wrong answer**. Now you are paying again (and again) to notice it is wrong and redo the work. The model that looked lower-cost per request just became the costliest one.

In this challenge you will run the **same prompt against a base model and a premium model — twice.** First on an **easy** task, then on a **hard** task. Every run, you measure two things: **the outcome (did it get it right?)** and **the token cost**. From that data you will build the skill this challenge is really about: deciding *which model to use for which job.*

> **Key Concept:** Lower cost per request is not the same as lower cost per *result*.

### Why this matters for coding

This challenge uses two short, easy-to-check prompts so the difference is obvious in seconds. But the lesson is the same one you face every time you code with Copilot: an agent constantly **reasons inside a task** — choosing logic, comparing values, judging whether its own output is correct. That is exactly where a weaker model is *confidently wrong*. Model selection governs the quality of that reasoning, not just whether code comes out. Pick the model that fits the *thinking* the task requires.

## Description

You will run **two tasks**, each against **two models**:

- A **base model** — included with your subscription, no premium-request multiplier (e.g. GPT-4.1, GPT-4o). Fast and economical.
- A **premium model** — a frontier / reasoning model billed as a premium request with a cost multiplier (e.g. GPT-5, Claude Sonnet, an o-series model).

> Use whatever base-tier and premium-tier models your organization exposes in the GitHub Copilot Chat **model picker**. The exact names don't matter — the *pattern* does. The picker shows a multiplier (e.g. `1×`) next to premium models; base models show no multiplier.

For every run, record the **outcome** (correct / incorrect) and the **token usage** (`View → Output → "GitHub Copilot Chat"`, and/or your Copilot usage view). If your environment doesn't surface an exact per-request token count, you can still see the pattern: the premium model produces far more text. Note *roughly how much more*.

> **Rule — no retries:** When the base model gets it wrong, **do not coach it or try again.** Record the failure and move on. The whole point is to see what each model produces *on the first shot* for each kind of task. (You'll reason about the cost of retrying in Part 2.)

> **A note on token counts:** Exact token numbers vary run to run — premium reasoning models especially. Focus on the **pattern and the ratio**, not the absolute number. If a result looks odd, run it 2–3 times.

---

## Part 1 — An Easy Task (the base model should win)

Give **both** models this exact prompt:

```
Sort these software version numbers from oldest to newest and list them in
order separated by commas: 1.9.0, 1.10.0, 1.2.0, 1.11.0, 1.9.5
```

✅ Correct answer: `1.2.0, 1.9.0, 1.9.5, 1.10.0, 1.11.0`

### Record

| | Base model | Premium model |
|---|---|---|
| Correct? | ? | ? |
| Total tokens | ? | ? |

### What to notice

Both models should get this right. Now compare the **token counts**. The premium model often produces far more output — restated reasoning, explanations — for the *exact same correct answer*. On an easy task, that extra spend buys you nothing.

---

## Part 2 — A Hard Task (the base model should fail)

Now give **both** models this exact prompt:

```
The car wash is 40 meters from my home. I want to wash my car.
Should I walk or drive there?
```

✅ Correct answer: **Drive.** You can't wash a car that isn't there — the car has to be *at* the car wash. Walking the 40 meters leaves your car (and the problem) at home. The distance is a deliberate distraction.

### Record

| | Base model | Premium model |
|---|---|---|
| Answer (walk / drive) | ? | ? |
| Correct? | ? | ? |
| Total tokens | ? | ? |

### What to notice

The base model will very likely tell you to **walk** — "it's only 40 meters, it's greener, you'll get some exercise." It latches onto the short distance and misses the obvious point: *the car needs to come with you.* It is **confidently wrong**, and you can see it's wrong in one second — *that is the point.*

The premium model reasons about the actual goal ("the car has to be at the wash to be cleaned → drive") and gets it right. Those extra tokens are not waste — they are the price of a *correct* answer.

> Record the base model's wrong answer and stop — **don't rerun or rephrase it.** That single result is all you need. The next section is a calculation, not another run.

### The cost of "just trying again"

You won't actually retry here — but it's worth reasoning about, because in real work the temptation is "the base model costs less per call, I'll just rerun or rephrase until it gets it." Using the numbers you **already recorded above**:

1. Take the base model's per-attempt cost and the cost of **one** premium-model call (use your org's per-request multipliers, or the token counts you just measured).
   > **How many base-model attempts would it take to cost more than one premium-model call?**
2. Now the harder question: on a task like this — where the base model hits a **reasoning ceiling** — *would any number of attempts reliably get you the right answer?* (You already saw its single answer; capability, not luck, is the limit.)

The trap: you could burn several low-cost attempts, pass the cost of one premium call, **and still not have a correct answer.** For a task the base model can't reason through, the only fix is a more capable model — not more attempts.

---

## Part 3 — An Open-Ended Task (judge the *quality*, not a right answer)

Parts 1 and 2 each had a checkable answer. **Most real work doesn't.** When you plan a feature, design a schema, or scope a project with Copilot, there's no answer key — *you* have to judge whether the output is any good. That judgment is the skill this part builds, and it's where model choice matters most.

Give **both** models this exact prompt:

```
I want to build a pickleball app. Produce an implementation plan.
First, ask me any clarifying questions you need. Then identify the
top 5 risks or hidden complexities that could derail this project,
and highlight them in the plan.
```

Notice the prompt is **deliberately vague** ("a pickleball app" — to do *what*?). That's on purpose: a strong model should *notice the gap and ask* before it plans. The risk question then forces the model to actually **think**, not just fill in a template.

### Record & Score

There's no correct answer, so score each response against this rubric instead:

| Criterion | Base model | Premium model |
|---|---|---|
| Asked clarifying questions *before* planning? (how many, how sharp) | ? | ? |
| Top-5 risks: generic ("scope creep, budget") or genuinely insightful? | ? | ? |
| Plan specific to *pickleball* — or a generic "any app" template? | ? | ? |
| Would you trust it enough to start building? | ? | ? |
| Total tokens | ? | ? |

### What to notice

The base model tends to **charge straight ahead**: it assumes what the app is, produces a plausible-but-generic plan, and lists generic risks (budget, timeline, scope creep). It rarely stops to ask what you're actually building.

The premium model is more likely to **ask sharp clarifying questions first** (court booking? player matchmaking/ranking? score tracking? league scheduling? who are the users?) and to surface **deeper, domain-specific risks** — double-booking / concurrency on court reservations, ranking fairness, real-time score sync, geolocation privacy, no-show and cancellation handling. Those are exactly the risks that quietly derail a project.

> **The cost tie-in:** the premium plan costs more tokens up front. But a shallow plan isn't cheap — it's **deferred cost.** Every risk the base model *didn't* flag becomes rework, a rewrite, or a bug you pay for at execution time. On open-ended, high-leverage work, paying more for *deeper thinking* is usually the economical choice — the mirror image of Part 1, where paying more bought you nothing.

### Questions to Answer

1. Which model's plan would you actually trust enough to start building from — and why?
2. Did the extra tokens the premium model spent buy you real value here (unlike Part 1)? What specifically?
3. This task has no "right answer." How did you decide which output was *better*? What made the difference?

---

## Part 4 — Compare Results & Decide

Combine your measurements into one table:

| Task | Base: correct? | Base: tokens | Premium: correct? | Premium: tokens | Which model should you use? |
|------|----------------|--------------|-------------------|-----------------|-----------------------------|
| Part 1 (easy) | ? | ? | ? | ? | ? |
| Part 2 (hard) | ? | ? | ? | ? | ? |
| Part 3 (open-ended) | judge quality | ? | judge quality | ? | ? |

### Questions to Answer

1. On the **easy** task, which model gave the better *value* (correct answer, fewest tokens)?
2. On the **hard** task, what did the base model's wrong answer actually "cost" you, even though each attempt was low-cost?
3. If you ran each task **10,000 times a day**, how would your model choice differ between Part 1 and Part 2?
4. How would you decide, *before* running a task, whether it is a "Part 1" (easy → base) or a "Part 2" (hard → premium) task?

---

## Part 5 — Classify Your Own Tasks

The skill this challenge builds is *prediction*: knowing which tier a task needs **before** you spend anything.

1. Write down **two real tasks** from your own work — one you think a base model can handle, one you think needs a premium model.
2. For each, predict the tier and **why** (Is it well-defined, or does it need multi-step reasoning / judgment?).
3. Run each task on **both** tiers and check your prediction. Were you right? Note any surprises.

| Your task | Predicted tier | Actual best tier | Was your prediction right? |
|---|---|---|---|
| 1. | | | |
| 2. | | | |

---

## Optional — Output Constraints

Output tokens usually cost more than input tokens, and constraining what a model *produces* is a lever you control on **every** model.

Pick a task where the model is **verbose by default** — for example, asking for a small function:

```
Write a Python function that checks whether a string is a palindrome.
```

Run it on the base model, then run it again with an output constraint added:

```
Write a Python function that checks whether a string is a palindrome.
Output only the code. No explanation, no markdown fences.
```

Record the token difference. Constraining output — "code only", "answer only", "explain in under 50 words", a JSON schema — drops the cost while keeping the correct result.

> Note: constraints reduce **output** tokens. They help most when the model would otherwise pad the answer with explanation. They do **not** make a wrong model right (see Part 2), and they do little when the output is already terse or when a reasoning model's hidden "thinking" tokens dominate.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Run the same prompt against a base and a premium model for both tasks
- Record outcome (correct/incorrect) and token usage for all four runs
- Show that on the easy task the base model was correct **and** used fewer tokens
- Show that on the hard task the base model was confidently wrong while the premium model was correct
- On the open-ended planning task, judge each model's *quality* against the rubric (clarifying questions, depth of the top-5 risks, specificity, trust-to-start) and explain which you'd build from
- Reason about how many base-model retries it would take to cost more than one premium call — and why retries can't fix a reasoning-ceiling task
- Classify two of your own real tasks by tier and verify your prediction
- (Optional) Demonstrate a token reduction by adding an output constraint to a verbose task

## Learning Resources

- [GitHub Copilot Model Selection Guide](https://docs.github.com/en/copilot)
- [Prompt Engineering: Output Formatting Techniques](https://www.promptingguide.ai/)
- [GitHub Copilot Usage-Based Billing](https://docs.github.com/en/copilot/concepts/billing/usage-based-billing-for-organizations-and-enterprises)

## Tips

- Cost = token rate × tokens × **attempts**. A *wrong* answer you have to chase down is the costliest option.
- The base model is great for well-defined, low-ambiguity work — and it is wasteful to *avoid* it there.
- The premium model earns its multiplier on tasks that need real reasoning, where a wrong first answer is costly.
- Output constraints reduce cost on *any* model — ask for the answer only when you don't need narration.
- The best model is not the smartest one — it is the one that returns a *correct* answer at the lowest total cost.

## Reflection Questions

1. Describe a real task from your own work that is a "Part 1" task. Which model would you use and why?
2. Describe a real "Part 2" task. How would you justify the premium multiplier to your team?
3. How could you combine base and premium models in a single workflow to minimize total cost (e.g., base model drafts, premium model reviews)?
