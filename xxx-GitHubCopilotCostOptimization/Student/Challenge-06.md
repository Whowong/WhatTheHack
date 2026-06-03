# Challenge 06 - Token Golf Competition 🏌️

[< Previous Challenge](./Challenge-05.md) - **[Home](../README.md)**

## Introduction

Token golf is the art of achieving high-quality code output with minimal credit spend. In this final challenge, teams compete to complete the same coding task with the lowest credit consumption while meeting all acceptance criteria. This is where you apply everything you've learned: context engineering, model selection, session hygiene, and spec-driven development.

Your coach has already completed this task and established a "par" score—the credit cost of a well-optimized solution. Can you beat par?

## Description

All teams will receive the same coding task with defined acceptance criteria. The task includes:

- Functional requirements that must be implemented
- Tests that must pass
- Documentation that must exist
- Code quality standards that must be met

### Competition Rules

Your team must:

- Complete all functional requirements described in the task specification (found in the `/Challenge06/` folder of Resources.zip)
- Ensure all provided tests pass
- Include required documentation
- Meet code quality standards (no linting errors, proper typing where applicable)
- Document your complete approach in a "scorecard" that includes:
  - Total credits consumed
  - Prompt sequence used
  - Model(s) selected and reasoning levels
  - Optimization techniques applied from Challenges 1-5
  - Any custom techniques or strategies

### Measurement

Track every interaction with GitHub Copilot throughout the challenge:

- Inline completions credit cost
- Chat interactions credit cost
- Edit commands credit cost
- Any workspace or codebase references
- Total cumulative credits for the complete task

The team with the lowest total credit score that meets all acceptance criteria wins. In case of a tie, the team that completes first breaks the tie.

### Strategic Considerations

Consider applying these techniques from previous challenges:

- Use scoped instructions (Challenge 01) to avoid loading global context unnecessarily
- Select the most efficient model for each subtask (Challenge 02)
- Disable any MCP tools you won't need (Challenge 03)
- Use `/compact` at strategic breakpoints if needed (Challenge 04)
- Start with the spec: write tests first to create deterministic feedback loops (Challenge 05)

## Success Criteria

To complete this challenge successfully, you should be able to:

- Verify that all functional requirements from the task specification are implemented
- Demonstrate that all provided tests pass
- Show that required documentation exists and meets standards
- Verify that code meets quality standards (no linting errors, proper types)
- Show your documented scorecard with total credits consumed and techniques applied
- Demonstrate that your solution meets or beats the coach's "par" score (bonus achievement!)

## Learning Resources

- [GitHub Copilot Best Practices](https://docs.github.com/en/copilot/using-github-copilot/best-practices-for-using-github-copilot)
- [Prompt Engineering Guide](https://www.promptingguide.ai/)
- [Test-Driven Development Fundamentals](https://martinfowler.com/bliki/TestDrivenDevelopment.html)

## Tips

- Start with the spec, not the code—what are the acceptance criteria?
- Write failing tests first to establish your deterministic feedback loop
- Choose your model based on the complexity of each subtask
- Track credits as you go, not just at the end
- If you get stuck in a high-cost loop, reset: use `/clear` and try a different approach
- Remember that the fastest path isn't always the cheapest—an extra minute planning can save 20 credits executing