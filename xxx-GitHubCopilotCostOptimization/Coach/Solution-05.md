# Challenge 05 - Spec-Driven Development with Spec Kit - Coach's Guide

[< Previous Solution](./Solution-04.md) - **[Home](./README.md)** - [Next Solution >](./Solution-06.md)

## Notes & Guidance

This challenge introduces students to **spec-driven development** by having them build the **same application twice**: first with ad-hoc prompting, then with **GitHub Spec Kit**. The hands-on comparison makes the benefits tangible.

> **Note:** Spec Kit installation prerequisites are covered in Challenge 0. If students haven't completed setup, direct them there first.

### Key Concepts to Explain

**Why Two Applications?**

Building the same thing twice demonstrates:
- How much context repetition happens with ad-hoc prompting
- How structured specs reduce cognitive load and token usage
- The difference in output consistency

**Spec Kit is One Approach:**

Emphasize that Spec Kit is **one of many** ways to do spec-driven development. The principle — structured context produces better results — applies regardless of tooling. Other approaches include:
- Custom instruction files (.github/copilot-instructions.md)
- Manual spec documents referenced in prompts
- Project constitution patterns
- Prompt template systems

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

60-90 minutes:
- 20-30 minutes: Part 1 — Build with ad-hoc prompting
- 30-40 minutes: Part 2 — Build with Spec Kit workflow
- 10-20 minutes: Part 3 — Compare results and discussion

### Troubleshooting

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

**Part 1 — Ad-Hoc Approach:**
1. Created task-api-adhoc project
2. Built the API using conversational prompts
3. Documented observations (context repetition, inconsistencies)

**Part 2 — Spec Kit Approach:**
1. **Setup Complete:** `.specify/` and `.github/prompts/` folders exist
2. **Constitution Created:** `constitution.md` with project rules
3. **Spec Generated:** `spec.md` with requirements and acceptance criteria
4. **Plan Produced:** Architecture and structure decisions documented
5. **Tasks Listed:** Ordered list of small, actionable items
6. **Implementation Started:** At least one task executed with Copilot

**Part 3 — Comparison:**
1. Completed the comparison table
2. Can articulate differences between approaches
3. Understands why structured specs reduce token usage

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

1. **Experience Difference:** How did Part 1 feel compared to Part 2?
2. **Context Repetition:** How many times did they repeat requirements in each approach?
3. **Consistency:** Was the Spec Kit output more predictable?
4. **Token Impact:** Fewer retries, less context repetition = lower token usage
5. **Other Approaches:** What other methods could achieve similar structured benefits?

### Key Insight for Students

> **Spec becomes your context. Not the chat.**

Traditional prompting requires repeating context every time. With Spec Kit, the spec IS the context that Copilot references. This is both better engineering and better token economics.

### Coaching Part 1 (Ad-Hoc)

Let students experience the frustration! Don't intervene too quickly. Common observations:
- They had to repeat "use Node.js" multiple times
- Copilot "forgot" earlier requirements
- Code style was inconsistent between prompts
- They felt like they were re-explaining constantly

This pain is what makes Part 2 powerful.

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
