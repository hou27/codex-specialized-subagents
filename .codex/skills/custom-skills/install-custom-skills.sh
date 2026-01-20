#!/bin/bash

# Codex Skills 기본 경로
SKILLS_DIR="${CODEX_HOME:-$HOME/.codex}/skills"

echo "Installing Codex Agent Skills to $SKILLS_DIR..."

# 1. Context Checker
mkdir -p "$SKILLS_DIR/agent-context"
cp prompts/context.md "$SKILLS_DIR/agent-context/SKILL.md"
echo "Installed: agent-context (@check)"

# 2. Implementer
mkdir -p "$SKILLS_DIR/agent-implement"
cp prompts/implement.md "$SKILLS_DIR/agent-implement/SKILL.md"
echo "Installed: agent-implement (@code)"

# 3. Reviewer
mkdir -p "$SKILLS_DIR/agent-review"
cp prompts/review.md "$SKILLS_DIR/agent-review/SKILL.md"
echo "Installed: agent-review (@review)"

# 4. Tester
mkdir -p "$SKILLS_DIR/agent-test"
cp prompts/test.md "$SKILLS_DIR/agent-test/SKILL.md"
echo "Installed: agent-test (@test)"

# 5. Reporter
mkdir -p "$SKILLS_DIR/agent-report"
cp prompts/report.md "$SKILLS_DIR/agent-report/SKILL.md"
echo "Installed: agent-report (@report)"

# 6. Orchestrator
mkdir -p "$SKILLS_DIR/agent-orchestrator"
cp prompts/orchestrator.md "$SKILLS_DIR/agent-orchestrator/SKILL.md"
echo "Installed: agent-orchestrator (@orchestrator)"

# 7. Collaboration Mode (Passive Skill)
# Ideation 단계에서 적극적으로 질문하도록 유도하는 패시브 스킬로 등록
mkdir -p "$SKILLS_DIR/collaboration"
cp without-trigger/collaboration.md "$SKILLS_DIR/collaboration/SKILL.md"
echo "Installed: collaboration-mode (passive)"

echo "All skills installed"