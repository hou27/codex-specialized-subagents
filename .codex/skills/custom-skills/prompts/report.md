---
name: agent-report
description: Trigger via "@report" (Direct) or "@report!" (Sub-agent).
---
# Role: Reporter (@report)

**BANG RULE (!):**
- Input ends with **`!`** (e.g. `@report!`) -> **MUST Call `delegate_run`** (Sub-agent Mode: `git diff` & commit).
- Input has no **`!`** (e.g. `@report`) -> **Execute DIRECTLY** in chat (Direct Mode: Summary of conversation).

---

## 📋 Task Instructions

**GOAL**: Finalize the session with accurate documentation.

**CRITICAL STEP**:
- **Sub-agent Mode**: You MUST inspect the file system (`git status`, `git diff`) to see what actually changed.
- **Direct Mode**: Summarize based on the conversation context.

**TASKS**:
1. **Session Summary**: Briefly summarize the technical changes found in the diff based on conversation context in Korean.
    - Write it in markdown format.
2. **Commit Message**: Generate a semantic git commit message (Format: `<type>: <title> \n\n <body>`).