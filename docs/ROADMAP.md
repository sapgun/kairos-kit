# KAIROS Roadmap

## v0.1 — Manual Operating Kit

Goal:

Use KAIROS manually with Obsidian + Asset Library + Permission Matrix.

Done when:

- `install.ps1` creates a vault and asset library
- Templates are copied into the vault
- Sample Aether Crew Lite project exists
- User can track one project manually
- User can record one asset in Asset Index
- Approval Queue can be used manually

Status:

In progress.

---

## v0.2 — Local Router

Goal:

Add a basic local routing layer.

Planned:

- `router.py`
- `secret_filter.py`
- `asset_watcher.py`
- `metadata_generator.py`
- routing rules
- suggested prompts

---

## v0.3 — Automation Layer

Goal:

Add n8n workflow samples and semi-automation.

Planned:

- Daily Project Brief workflow
- Asset Inbox Indexer workflow
- Weekly Review workflow
- Backup Healthcheck workflow
- Calendar Sync workflow

---

## v0.4 — Aether Crew Lite Agents

Goal:

Turn manual role templates into executable agent workflows.

Planned:

- PO Agent prompt
- Scrum Master Agent prompt
- Developer Agent prompt
- QA Agent prompt
- Orchestrator Agent prompt
- Hermes Agent prompt
- Human-in-the-loop approval flow

---

## v0.5 — KAIROS Console

Goal:

Add a lightweight GUI.

Planned:

- Approval Queue UI
- Asset Inbox review
- Project dashboard
- Routing panel

---

## v1.0 — Human-Controlled AI Workflow OS

Goal:

A stable local-first control plane for multi-AI workflows.

Principles:

- User-owned knowledge
- Storage independence
- Human approval for high-impact actions
- AI tools as workers
- Markdown-first memory
