# Challenge 05 - Spec-Driven Development with Spec Kit - Coach's Guide

[< Previous Solution](./Solution-04.md) - **[Home](./README.md)** - [Next Solution >](./Solution-06.md)

## Notes & Guidance

This challenge introduces students to **GitHub Spec Kit**, a tool that enables spec-driven development with GitHub Copilot. The core insight: when you give Copilot structured context (specs), it reduces token usage and improves output quality.

### Key Concepts to Explain

**Spec Kit Workflow:**

1. **Constitution:** Project-wide rules and constraints (architecture, standards, patterns)
2. **Spec:** What to build (requirements, acceptance criteria, user stories)
3. **Plan:** How to build it (architecture, stack, structure)
4. **Tasks:** Actionable work items (small, ordered, executable)
5. **Implement:** Execute tasks with Copilot

**Why This Reduces Cost:**

- Spec becomes persistent context — no need to repeat in every prompt
- Constitution provides guardrails that apply automatically
- Structured workflow prevents expensive backtracking
- Small tasks produce more predictable outputs than large prompts
- Clarification step catches ambiguity before implementation

### Expected Time

45-60 minutes:
- 10 minutes: Installation and setup
- 10 minutes: Constitution and spec creation
- 10 minutes: Plan and task generation
- 15 minutes: Implementation with Copilot
- 10 minutes: Reflection and discussion

### Setup Troubleshooting

**uv Not Installed:**

Students need the `uv` package manager. Install with:
```bash
# macOS/Linux
curl -LsSf https://astral.sh/uv/install.sh | sh

# Windows (PowerShell)
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

See: [Install uv](https://github.com/github/spec-kit/blob/main/docs/install/uv.md)

**Specify CLI Installation:**

```bash
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git@vX.Y.Z
```

Replace `vX.Y.Z` with the latest tag from [Releases](https://github.com/github/spec-kit/releases).

**Alternative Installation (pipx):**

If students prefer pipx:
```bash
pipx install git+https://github.com/github/spec-kit.git@vX.Y.Z
```

**Spec Kit Commands Not Appearing in Copilot Chat:**

1. Verify `.github/prompts/` folder exists with Spec Kit files
2. Reload VS Code window (Ctrl+Shift+P → "Developer: Reload Window")
3. Ensure Copilot Chat extension is up to date

**Integration Issues:**

If `--integration copilot` fails, try initializing without integration first:
```bash
uvx --from git+https://github.com/github/spec-kit.git specify init my-project
```
Then manually copy prompt files to `.github/prompts/`.

### Success Criteria Validation

Students should be able to demonstrate:

1. **Setup Complete:** `.specify/` and `.github/prompts/` folders exist
2. **Constitution Created:** `constitution.md` with project rules
3. **Spec Generated:** `spec.md` with requirements and acceptance criteria
4. **Plan Produced:** Architecture and structure decisions documented
5. **Tasks Listed:** Ordered list of small, actionable items
6. **Implementation Started:** At least one task executed with Copilot

### Common Blockers

**Students Skip Steps:**

Emphasize the workflow is sequential by design. Each step builds on the previous. Skipping to `/speckit.implement` without a spec produces the same results as ad-hoc prompting.

**Vague Constitution:**

Guide them to be specific. Bad: "Good code." Good: "Node.js with TypeScript, Express framework, repository pattern, input validation with Joi."

**Spec Too Large:**

If the spec covers too much, `/speckit.plan` and `/speckit.tasks` become unwieldy. Encourage smaller, focused specs for individual features.

**Students Want to Edit Generated Files:**

This is fine! The generated specs/plans are starting points. Encourage editing for accuracy before proceeding.

### Hints to Share

- Use `/speckit.clarify` whenever you feel the spec is ambiguous — it's designed to ask the right questions
- The constitution applies to everything — write it once, benefit everywhere
- Review the plan before generating tasks — it's easier to fix architecture issues at the plan stage
- Tasks should be small enough to complete in a single Copilot interaction
- You can re-run any command to regenerate — the workflow is iterative

### Reflection Discussion Points

After completion, discuss with students:

1. **What changed?** They didn't need to repeat context in every prompt
2. **What was NOT repeated?** Requirements, architecture decisions, coding standards
3. **Predictability:** Outputs should be more consistent when following the spec
4. **Token impact:** Fewer retries, less context repetition = lower token usage

### Key Insight for Students

> **Spec becomes your context. Not the chat.**

Traditional prompting requires repeating context every time. With Spec Kit, the spec IS the context that Copilot references. This is both better engineering and better token economics.

### Demo Script (If Students Struggle)

1. Initialize project: Show the generated folder structure
2. Run `/speckit.constitution` and show resulting file
3. Run `/speckit.specify` with a simple requirement
4. Show how `/speckit.plan` produces architecture from the spec
5. Run `/speckit.tasks` and show the task breakdown
6. Execute one task with `/speckit.implement`

### Connection to Other Challenges

- **Challenge 04 (Prompt Architecture):** Spec Kit is a formalized version of structured prompting
- **Challenge 06 (Token Golf):** Spec Kit naturally reduces tokens by eliminating context repetition
- **Challenge 07 (Infrastructure):** Constitution can encode infrastructure standards
