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
cp prompts/REPORT.md "$SKILLS_DIR/agent-report/SKILL.md"
echo "Installed: agent-report (@report)"

# 6. Orchestrator
mkdir -p "$SKILLS_DIR/agent-orchestrator"
cp prompts/orchestrator.md "$SKILLS_DIR/agent-orchestrator/SKILL.md"
echo "Installed: agent-orchestrator (@orchestrator)"

echo "All skills installed"