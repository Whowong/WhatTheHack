# Challenge 05 - Spec-Driven Development with Spec Kit

[< Previous Challenge](./Challenge-04.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-06.md)

## Introduction

In this challenge, you will use **GitHub Spec Kit** to implement a **Spec-Driven Development workflow** with GitHub Copilot.

Instead of writing large prompts, you will:

- Define a **constitution (rules)**
- Create a **spec (what to build)**
- Generate a **plan (how to build)**
- Break it into **tasks**
- Execute implementation

**Goal:** Reduce token usage and improve output quality by using structured specs instead of ad-hoc prompts.

> **Key Concept:** Spec becomes your context. Not the chat.

## Prerequisites

Make sure you have:

- VS Code installed
- GitHub Copilot + Copilot Chat extension
- Git installed
- Python 3.11+ installed
- Internet access (for installation)

## Description

### Setup

#### Step 1 — Install Specify CLI

Requires **[uv](https://docs.astral.sh/uv/)** ([install uv](https://github.com/github/spec-kit/blob/main/docs/install/uv.md)). Replace `vX.Y.Z` with the latest tag from [Releases](https://github.com/github/spec-kit/releases):

```bash
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git@vX.Y.Z
```

See the [Installation Guide](https://github.com/github/spec-kit/blob/main/docs/installation.md) for alternative methods, verification, upgrade, and troubleshooting.

#### Step 2 — Initialize a Project

```bash
specify init my-project --integration copilot
cd my-project
```

#### Step 3 — Open in VS Code

```bash
code .
```

> **Tip:** To check for updates or upgrade the CLI later, use:
> ```bash
> specify self check      # Check if newer release is available
> specify self upgrade    # Upgrade to latest stable release
> ```

#### Step 4 — Verify Spec Kit is Ready

In the project folder, you should see:

- `.specify/`
- `.github/prompts/`
- Markdown files

This confirms Spec Kit initialized the project successfully.

#### Step 5 — Open Copilot Chat and Verify Commands

1. Open Copilot Chat in VS Code
2. Click in the chat input box
3. Type: `/`

You should see these commands available:

- `/speckit.constitution`
- `/speckit.specify`
- `/speckit.plan`
- `/speckit.tasks`
- `/speckit.implement`

If these appear, Spec Kit is working correctly.

### Scenario

You will build:

> **A REST API for a task management system**

Features:
- Authentication (JWT)
- CRUD operations for tasks
- Task filtering
- Basic validation

### Workflow Instructions

#### Step 1 — Define Constitution

In Copilot Chat, run:

```
/speckit.constitution
```

Then describe your rules:

```
Node.js project with clean architecture, strong validation, and performance focus.
All endpoints must follow REST standards.
```

This creates the `constitution.md` file containing your system rules.

#### Step 2 — Create Spec

Run:

```
/speckit.specify
```

Example input:

```
Build a task management API with authentication, CRUD operations, and filtering.
Focus on user experience and correctness.
```

This creates a `spec.md` file with:
- Requirements
- Acceptance criteria
- User stories

#### Step 3 — (Optional) Clarify

Run:

```
/speckit.clarify
```

Spec Kit will ask clarifying questions to improve your spec. This:
- Reduces ambiguity
- Reduces rework later

#### Step 4 — Generate Plan

Run:

```
/speckit.plan
```

This generates:
- Architecture decisions
- Technology stack
- Project structure

#### Step 5 — Generate Tasks

Run:

```
/speckit.tasks
```

This creates:
- List of small, actionable tasks
- Execution order

#### Step 6 — Implement

Run:

```
/speckit.implement
```

Now Copilot will:
- Execute tasks sequentially
- Generate code incrementally

## Rules

- Always follow the Spec Kit workflow order
- Do NOT skip steps
- Review each output before continuing
- Make minimal edits — avoid rewriting everything

## Success Criteria

To complete this challenge successfully, you should be able to:

- Successfully install and initialize Spec Kit with Copilot integration
- Create a constitution that defines project rules and standards
- Generate a spec from your requirements description
- Produce a structured plan from the spec
- Break the plan into executable tasks
- Implement features using the spec-driven workflow
- Demonstrate reduced token usage compared to ad-hoc prompting
- Show improved output consistency and predictability

## Learning Resources

- [GitHub Spec Kit Repository](https://github.com/github/spec-kit)
- [Spec Kit Installation Guide](https://deepwiki.com/github/spec-kit/2.1-installation)
- [Spec-Driven Development with GitHub Spec Kit](https://medium.com/@vamshi.rapolu/spec-driven-development-with-github-spec-kit-copilot-in-vs-code-new-existing-projects-2531d10bd61d)
- [Spec Kit Commands Reference](https://easyguides.net/guides/spec-kit/commands)
- [Plan and Tasks Commands Tutorial](https://codestandup.com/posts/2025/github-spec-kit-tutorial-plan-tasks-commands/)

## Tips

- Spec becomes your persistent context — no need to repeat requirements in every prompt
- The constitution acts as guardrails that apply to all generated code
- Use `/speckit.clarify` when requirements feel ambiguous
- Each step builds on the previous — the workflow is designed to be sequential
- Review generated specs and plans before proceeding to catch issues early
- Small, focused specs produce better results than large, vague ones

## Reflection Questions

After completing this challenge, answer:

1. What changed compared to normal prompting?
2. What did you NOT have to repeat in your prompts?
3. Did the outputs become more predictable?
4. How would this workflow impact token usage in real scenarios?

## Advanced Challenges

Too comfortable? Try these:

- Apply Spec Kit to an existing project instead of a new one
- Create multiple specs for different features and observe how they interact
- Measure credit consumption between spec-driven and traditional prompting for the same feature
- Customize the constitution for different project types (frontend, backend, full-stack)
