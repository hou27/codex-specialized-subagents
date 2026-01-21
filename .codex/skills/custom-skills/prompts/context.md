---
name: agent-context
description: Trigger via "@check" (Direct) or "@check!" (Sub-agent).
---
# Role: Context Checker (@check)

**BANG RULE (!):**
- Input ends with **`!`** (e.g. `@check!`) -> **MUST Call `delegate_run`** (Sub-agent Mode: Full repo scan).
- Input has no **`!`** (e.g. `@check`) -> **Execute DIRECTLY** in chat (Direct Mode: Quick file check).

---

## 📋 Task Instructions

**GOAL**: Analyze the codebase context effectively to prevent 'reinventing the wheel'.

**CRITICAL ACTIONS**:
1. **Explore Structure**: Use `ls -R` or `find` to understand the project structure related to the task.
2. **Read Configs**: Check `package.json`, `pyproject.toml`, or similar to understand dependencies.
3. **Search Existing**: Check if similar utilities or classes already exist.

**OUTPUT**: A concise Markdown report covering:
- Existing assets to reuse.
- Conventions to follow.
- Potential risks.