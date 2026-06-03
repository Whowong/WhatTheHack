# Challenge 06 - Token Golf Competition 🏌️

[< Previous Challenge](./Challenge-05.md) - **[Home](../README.md)**

## Introduction

Token golf is the art of achieving high-quality code output with minimal credit spend. In this final challenge, teams compete to complete the same coding task with the lowest credit consumption while meeting all acceptance criteria. This is where you apply everything you've learned: context engineering, model selection, session hygiene, and spec-driven development.

Your coach has already completed this task and established a "par" score—the credit cost of a well-optimized solution. Can you beat par?

## Description

All teams will receive the same coding task with defined acceptance criteria from your coach. The task specification (found in the `/Challenge06/` folder of Resources.zip) includes functional requirements, tests that must pass, required documentation, and code quality standards.

### Competition Rules

Complete all functional requirements, ensure provided tests pass, include required documentation, and meet code quality standards. Document your complete approach in a "scorecard" showing total credits consumed, prompt sequence used, models selected, and optimization techniques applied from Challenges 1-5.

Track every GitHub Copilot interaction throughout the challenge: inline completions, chat, edits, workspace references, and cumulative total credits. The team with the lowest total credit score that meets all acceptance criteria wins (tie-breaker: fastest completion time).

### Strategy

Consider applying techniques from previous challenges: scoped instructions, efficient model selection, pruned MCP tools, strategic `/compact` usage, and spec-first development with tests written before implementation.

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