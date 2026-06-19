# Challenge 05 - Spec-Driven Development with Spec Kit

[< Previous Challenge](./Challenge-04.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-06.md)

## Introduction

In this challenge, you will experience the difference between **ad-hoc prompting** and **spec-driven development** by building the same application twice — first without structure, then using **GitHub Spec Kit**.

Spec Kit is one of several ways to implement spec-driven development with GitHub Copilot. The core principle applies regardless of tooling: **structured context produces better results than conversational prompts**.

With Spec Kit, you will:

- Define a **constitution (rules)**
- Create a **spec (what to build)**
- Generate a **plan (how to build)**
- Break it into **tasks**
- Execute implementation

**Goal:** Experience firsthand how structured specs reduce token usage and improve output quality compared to ad-hoc prompting.

> **Key Concept:** Spec becomes your context. Not the chat.

## Description

In this challenge, you will build **the same application twice**:

1. **Part 1:** Build with ad-hoc prompting (no structure)
2. **Part 2:** Build with Spec Kit workflow

Then compare the results.

### The Application

You will build:

> **A simple notes application**

Requirements:
1. Create, read, update, and delete notes (CRUD)
2. Each note must have a title (required) and content

That's it — keep it simple!

---

## Part 1 — Build with Ad-Hoc Prompting

First, build the application using traditional conversational prompting with Copilot.

### Step 1 — Create a New Project Folder

```bash
mkdir notes-app-adhoc
cd notes-app-adhoc
code .
```

### Step 2 — Build the Application

Your goal: Create a working notes application that meets the 2 requirements above.

**Rules:**
- Use only Copilot Chat with ad-hoc prompts
- No pre-written specs or documentation
- Just start prompting and see what happens

**Try to complete the application on your own!**

### Step 3 — Track Your Experience

As you work, note:
- How many prompts did you need?
- How many times did you repeat the same information?
- Did Copilot "forget" what you asked earlier?
- Was the generated code consistent in style?
- How did it feel?

### Step 4 — Save Your Results

Keep this project. You'll compare it later.

---

## Part 2 — Build with Spec Kit

Now build the **same application** using the Spec Kit workflow.

### Step 1 — Initialize a New Spec Kit Project

```bash
specify init notes-app-speckit --integration copilot
cd notes-app-speckit
code .
```

### Step 2 — Verify Spec Kit is Ready

In the project folder, you should see:
- `.specify/`
- `.github/prompts/`
- Markdown files

In Copilot Chat, type `/` — you should see:
- `/speckit.constitution`
- `/speckit.specify`
- `/speckit.plan`
- `/speckit.tasks`
- `/speckit.implement`

### Step 3 — Define Constitution

In Copilot Chat, run:

```
/speckit.constitution
```

Then describe your rules. Example:

```
Simple local application. Clean code with clear separation of concerns.
```

This creates the `constitution.md` file containing your system rules.

### Step 4 — Create Spec

Run:

```
/speckit.specify
```

Describe the same requirements as Part 1:

```
A notes application with CRUD operations. 
Each note has a title (required) and content.
```

This creates a `spec.md` file with:
- Requirements
- Acceptance criteria
- User stories

### Step 5 — (Optional) Clarify

Run:

```
/speckit.clarify
```

Spec Kit will ask clarifying questions to improve your spec. This:
- Reduces ambiguity
- Reduces rework later

### Step 6 — Generate Plan

Run:

```
/speckit.plan
```

This generates:
- Architecture decisions
- Technology stack
- Project structure

### Step 7 — Generate Tasks

Run:

```
/speckit.tasks
```

This creates:
- List of small, actionable tasks
- Execution order

### Step 8 — Implement

Run:

```
/speckit.implement
```

Now Copilot will:
- Execute tasks sequentially
- Generate code incrementally

---

## Part 3 — Compare Results

Now compare both implementations.

### Questions to Answer

| Aspect | Ad-Hoc Approach | Spec Kit Approach |
|--------|-----------------|-------------------|
| Total prompts needed | ? | ? |
| Times you repeated context | ? | ? |
| Code consistency | ? | ? |
| Time to complete | ? | ? |
| Quality of output | ? | ? |

### What to Look For

- **Context retention:** Did Copilot remember requirements?
- **Consistency:** Did the code follow the same patterns throughout?
- **Completeness:** Were all requirements addressed?
- **Token efficiency:** How much did you have to type?

## Rules

- Complete Part 1 before starting Part 2
- Do NOT skip steps in the Spec Kit workflow
- Review each output before continuing
- Make minimal edits — avoid rewriting everything
- Document your observations for comparison

## Success Criteria

To complete this challenge successfully, you should be able to:

- Build the task management API using ad-hoc prompting
- Build the same API using Spec Kit workflow
- Create a constitution that defines project rules and standards
- Generate a spec from your requirements description
- Produce a structured plan from the spec
- Break the plan into executable tasks
- Compare both approaches and articulate the differences
- Demonstrate reduced token usage with spec-driven development
- Show improved output consistency and predictability

## Learning Resources

- [GitHub Spec Kit Repository](https://github.com/github/spec-kit)
- [Spec Kit Installation Guide](https://github.com/github/spec-kit/blob/main/docs/installation.md)
- [Spec-Driven Development with GitHub Spec Kit](https://medium.com/@vamshi.rapolu/spec-driven-development-with-github-spec-kit-copilot-in-vs-code-new-existing-projects-2531d10bd61d)
- [Spec Kit Commands Reference](https://easyguides.net/guides/spec-kit/commands)
- [Plan and Tasks Commands Tutorial](https://codestandup.com/posts/2025/github-spec-kit-tutorial-plan-tasks-commands/)

## Tips

- Part 1 intentionally feels inefficient — that's the point!
- Spec becomes your persistent context — no need to repeat requirements
- The constitution acts as guardrails that apply to all generated code
- Use `/speckit.clarify` when requirements feel ambiguous
- Each step builds on the previous — the workflow is designed to be sequential
- Review generated specs and plans before proceeding to catch issues early
- Small, focused specs produce better results than large, vague ones

## Reflection Questions

After completing this challenge, answer:

1. How did Part 1 (ad-hoc) feel compared to Part 2 (Spec Kit)?
2. How many times did you repeat context in each approach?
3. Did the outputs become more predictable with Spec Kit?
4. How would spec-driven development impact token usage and costs in real projects?
5. What other tools or methods could achieve similar spec-driven benefits?

## Advanced Challenges

Too comfortable? Try these:

- Apply Spec Kit to an existing project instead of a new one
- Create multiple specs for different features and observe how they interact
- Measure credit consumption between both approaches for the same feature
- Customize the constitution for different project types (frontend, backend, full-stack)
