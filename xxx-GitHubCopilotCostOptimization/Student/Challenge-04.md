# Challenge 04 - Context Window Management

[< Previous Challenge](./Challenge-03.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-05.md)

## Introduction

Context windows grow with every interaction. As your session accumulates messages, attachments, and generated code, the context window fills. When utilization gets too high, quality degrades—responses become less accurate, the model "forgets" earlier decisions, and credits burn faster as you pay to transmit bloated context.

In this challenge, you'll learn when and how to use `/compact` (the steering wheel) vs. `/clear` (the reset button). The biggest avoidable cost isn't running `/compact` too often—it's running it too late, after context rot has already degraded quality and forced expensive recovery loops.

## Description

Complete a multi-turn coding task designed to intentionally grow your context window. You'll compare two approaches: proactive compaction vs. reactive recovery.

### Context Rot Observation

Start a coding task that involves multiple related features or refactors. Intentionally let the context window grow by adding numerous file attachments, requesting verbose explanations, and allowing the conversation to accumulate without intervention.

Monitor context window utilization (visible in VS Code status bar or Output panel) and observe what happens as it fills. Look for quality degradation signals like inconsistencies, forgotten requirements, or repeated questions. Record credits consumed and note any incorrect outputs or rework needed.

### Proactive Compaction

Restart the same multi-turn task using proactive `/compact` at natural breakpoints (after completing a feature, before switching topics). Keep the context window lean throughout and monitor how compaction summarizes previous work while preserving state. Compare credits consumed and output quality vs. the unmanaged approach.

### Emergency Reset

Demonstrate when `/clear` is appropriate by starting a task where you realize mid-way that your approach is fundamentally wrong. Use `/clear` to wipe context and start fresh with a corrected approach. Understand the cold cache penalty from `/clear` vs. preserved cache with `/compact`.


## Success Criteria

To complete this challenge successfully, you should be able to:

- Demonstrate observable quality degradation when context window grows too large
- Show credit cost comparison between unmanaged context growth and proactive compaction approaches
- Verify that proactive `/compact` maintained output quality throughout the multi-turn task
- Demonstrate appropriate use of `/clear` when the context becomes fundamentally misaligned
- Explain the difference in cache impact between `/compact` (preserves cache) and `/clear` (cold restart)

## Learning Resources

- [Understanding Context Windows and Token Limits](https://www.anthropic.com/index/prompting-long-context)
- [GitHub Copilot Chat Commands Documentation](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-chat)
- [Managing Long Conversations with AI Assistants](https://www.promptingguide.ai/)

## Tips

- Context rot starts when the window gets too full—don't wait until the last moment
- `/compact` is the steering wheel (summarize, preserve state)—use it proactively
- `/clear` is the reset button (wipe everything)—use it when direction changes
- Natural breakpoints: feature complete, tests passing, architecture decision made
- The cost isn't running `/compact`—it's NOT running `/compact` until quality has already degraded
- Compact before you feel the pain, not after
