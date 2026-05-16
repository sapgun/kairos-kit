# KAIROS

**Knowledge & AI Resource Orchestration System**

> Own your knowledge. Orchestrate your AI team.

KAIROS는 여러 AI 도구를 쓰는 사람이  
**지식, 에셋, 승인, 프로젝트 맥락**을 자기 소유 저장소 중심으로 통합 관리하기 위한  
**local-first AI operations kit**입니다.

## Why KAIROS?

현대 AI 워크플로는 강력하지만 파편화되어 있습니다.  
ChatGPT, Claude, Grok, Runway, Kling, Canva, n8n 등 수많은 도구를 쓰다 보면  
대화·결정·에셋·승인 기록이 여기저기 흩어집니다.

**KAIROS는 그 문제를 해결합니다.**

## Core Philosophy

1. **AI tools are workers, not owners.**
2. Markdown is the source of truth.
3. Creative assets must be recovered from AI platforms.
4. Automation starts with human approval.
5. Local-first is the default.
6. Cloud is for access and backup, not dependency.
7. Final authority belongs to the user.

## What KAIROS Includes (v0.1)

- Obsidian Vault 구조 + 핵심 템플릿
- Asset Library 구조 (local / Google Drive / NAS / S3 준비)
- AI Team Roles (`config/agents.yaml`)
- Permission Matrix + Approval Queue
- Aether Crew Lite 프로젝트 템플릿
- install.ps1, healthcheck.ps1, backup.ps1
- 전체 문서 (docs/)

## What KAIROS Is Not

- 완성형 SaaS 앱
- Notion / Tana 대체재
- 완전 자율 에이전트
- wallet / payment 자동화 도구

## Quick Start (5분)

1. `.\scripts\install.ps1` 실행
2. Obsidian에서 `KAIROS_Vault` 열기
3. `01_Projects\Aether_Crew_Lite`에서 첫 프로젝트 시작
4. `APPROVAL_QUEUE.md`와 `ASSET_INDEX.md` 사용 시작

## Architecture

자세한 내용은 [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) 참조

## Roadmap

- **v0.1** — Manual Operating System (현재)
- **v0.2** — Local Router
- **v0.3** — n8n Automation Layer
- **v0.4** — Aether Crew Lite Agent
- **v0.5** — GUI Console
- **v1.0** — KAIROS Control Plane

자세한 로드맵은 [`docs/ROADMAP.md`](docs/ROADMAP.md) 참조

## License

MIT

---

**AI tools are workers. You are the OS.**
