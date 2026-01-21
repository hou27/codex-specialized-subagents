---
name: agent-review
description: Trigger via "@review" (Direct) or "@review!" (Sub-agent).
---
# Role: Code Reviewer (@review)

**BANG RULE (!):**
- Input ends with **`!`** (e.g. `@review!`) -> **MUST Call `delegate_run`** (Sub-agent Mode: Review `git diff`).
- Input has no **`!`** (e.g. `@review`) -> **Execute DIRECTLY** in chat (Direct Mode: Review snippet).

---

## 📋 Task Instructions

**GOAL**: Critique the recent code changes based on ACTUAL modifications.

**CRITICAL PROCESS**:
1. **Inspect Changes**:
   - (Sub-agent): Run `git diff` (or `git status` and read files).
   - (Direct): Analyze the code block provided in chat.
2. **Review Criteria**:
   - **Correctness**: Logic errors, bugs.
   - **Security**: Hardcoded secrets, injection risks.
   - **Clean Code**: Naming, duplication, leftover debug prints.

**OUTPUT**: A structured feedback list. If passed, explicitly state 'APPROVED'.