# Challenge 03 - Session Configuration (Tools + Cache)

[< Previous Challenge](./Challenge-02.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-04.md)

## Introduction

Every MCP tool you enable adds token overhead per agent loop step. A session with many unused tools can burn extra tokens before you've written a line of code. Meanwhile, cache invalidation—triggered by switching models, toggling MCP servers, or editing system prompts mid-session—wipes your cache and forces a costly cold restart.

In this challenge, you'll learn to configure lean sessions and maintain high cache hit rates.

## Description

This challenge explores tool sprawl management and cache invalidation awareness. Both directly impact your per-session costs.

### Tool Sprawl Audit

The starter codebase may have multiple MCP tools or GitHub Copilot extensions enabled. Audit your current configuration to identify which tools are actually being used. Complete your baseline coding task with all tools enabled, then identify which ones were invoked (check VS Code Output panel for tool calls). Disable unused tools and repeat the task to measure credit savings.

Understand that each tool adds token overhead even when never used: tool name, description, parameter schemas, and availability announcements all cost tokens on every agent step.

### Cache Invalidation Experiment

Complete the same refactor task twice under different session conditions. First, run a "clean session" where you configure once and complete the work without changes. Then run a "messy session" where you deliberately change configuration mid-task (switch models, toggle MCP servers, edit instructions). Compare total credits and cache hit rates between the two approaches.

Document what triggers cache invalidation in GitHub Copilot: model switching, instruction edits, tool changes, mode switching, and large context changes.

## Success Criteria

To complete this challenge successfully, you should be able to:

- Show a list of all MCP tools enabled before and after your audit
- Demonstrate credit savings from disabling unused tools on the baseline task
- Verify which tools were actually invoked during your task (via VS Code Output panel logs)
- Show comparative credit costs between clean session and messy session for the same refactor
- Demonstrate measurable cache hit rate difference between the two session approaches
- Explain multiple triggers that invalidate GitHub Copilot's cache
- Achieve high cache hit rate on a multi-turn coding task

## Learning Resources

- [Model Context Protocol (MCP) Overview](https://modelcontextprotocol.io/)
- [GitHub Copilot Extension Management](https://docs.github.com/en/copilot)
- [Understanding LLM Caching Strategies](https://www.anthropic.com/index/prompt-caching)

## Tips

- Each MCP tool costs tokens even when never invoked—they're advertised to the model at every step
- Cache hit rates above 97-98% are achievable with clean session hygiene
- Switching models mid-session is one of the most expensive cache invalidations
- Auto mode routes along cache boundaries to minimize invalidation
- If you must change configuration mid-task, finish your current subtask first to preserve cache value
