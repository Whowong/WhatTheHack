# Challenge 03 - Session Configuration (Tools + Cache) - Coach's Guide 

[< Previous Solution](./Solution-02.md) - **[Home](./README.md)** - [Next Solution >](./Solution-04.md)

## Notes & Guidance

This challenge teaches that session configuration affects both recurring costs (MCP tools) and one-time costs (cache invalidation penalties).

### Key Concepts to Explain

**Tool Overhead:**
- Each MCP tool adds 100-500 tokens per agent step
- Tools are advertised to the model even if never invoked
- 10 unused tools × 200 tokens × 20 agent steps = 40,000 extra tokens

**Cache Invalidation Triggers:**
- Switching models mid-session (biggest penalty)
- Toggling MCP tools on/off
- Editing `.github/copilot-instructions.md` 
- Large context changes (auto-compaction)

**Engineering Target:**
97-98% cache hit rate is achievable with clean session hygiene.

### Expected Time

45 minutes:
- 15 minutes: Audit and prune MCP tools
- 20 minutes: Compare clean vs. messy session
- 10 minutes: Document findings

### Success Criteria Validation

Students should show measurable tool overhead savings and demonstrate understanding of cache invalidation impact through comparative measurements.

### Hints to Share

- Check VS Code Output panel for tool invocations—if a tool never appears, you don't need it enabled
- Cache hit rate visible in Output panel—look for "cache hit" vs "cache miss" counts
- Switching models mid-session is one of the most expensive cache invalidations
- If you must change configuration, finish your current subtask first to preserve cache value
