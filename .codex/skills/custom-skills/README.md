# Addtional Custom Agents

Codex CLI를 사용할 때 추가로 활용하기 위한 5가지 에이전트 Skill과 Orchestrator 정의  
각 스킬은 특정 키워드(`@`)로 시작할 때 `delegate_run`을 통해 Subagent를 호출하도록 함

## How to install

```bash
./install-custom-skills.sh
```

## Included Skills
- **Orchestrator** (`@orchestrator`): 전체 5단계(분석, 구현, 리뷰, 테스트, 문서화)를 순차적으로 관리
- **Context Checker** (`@check`): 코드베이스 분석 및 컨텍스트 제공
- **Implementer** (`@code`): 기능 구현
- **Reviewer** (`@review`): 코드 리뷰
- **Reporter** (`@report`): 작업 요약 및 커밋 메시지 생성
- **Tester** (`@test`): 기능 테스트