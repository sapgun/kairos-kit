# VESPERA Architecture

VESPERA is a human-controlled, local-first operating structure for multi-AI workflows.

It is not a fully autonomous agent.

It is a control layer for:

- Knowledge
- Assets
- Projects
- AI roles
- Approvals
- Automation
- Storage providers

---

## Design Goal

VESPERA exists to prevent fragmentation.

AI tools can generate ideas, code, images, videos, documents, and research.  
But the user must own the long-term memory, context, assets, and decisions.

---

## High-Level Architecture

```txt
                         User
          Final Decision Maker / Root Authority
                           |
                           v
                    VESPERA Core
       Router / Policy / Permission / State / Audit
                           |
      -----------------------------------------------------
      |             |              |          |            |
      v             v              v          v            v
 Knowledge      Asset Layer      AI Team   Automation   Interface
 Obsidian       Local/Drive/NAS  Agents    n8n         CLI/GUI
 Markdown       S3/Custom Path   Tools     Calendar    Obsidian
```

---

## Core Layers

### 1. Knowledge Layer

The Knowledge Layer stores meaning and context.

Default tool:

- Obsidian
- Markdown
- YAML frontmatter
- Git-friendly files

Stores:

- Project briefs
- Decision logs
- Daily logs
- Debug logs
- Approval queue
- Risk logs
- Sprint boards
- Asset indexes

---

### 2. Asset Layer

The Asset Layer stores large creative and project files.

Examples:

- Images
- Videos
- Infographics
- PDFs
- Pitch decks
- Source files
- AI-generated media

Storage providers are replaceable.

Supported patterns:

- Local disk
- External drive
- Google Drive
- OneDrive
- Dropbox
- NAS
- S3-compatible storage
- Custom path

VESPERA standardizes folder structure and metadata.  
It does not force a storage vendor.

---

### 3. AI Team Layer

AI tools are treated as workers.

Examples:

- ChatGPT: strategy and synthesis
- Claude Code: architecture and codebase analysis
- Codex: execution and code review
- Gemini: research and criticism
- Grok: network intelligence and X trends
- Kimi: long-context and media research
- Jules: GitHub task execution
- Local LLM: routing, summaries, security filtering

---

### 4. Project Layer

Aether Crew Lite is the project management squad inside VESPERA.

It defines:

- Product Owner Agent
- Scrum Master Agent
- Developer Agent
- QA Agent
- Orchestrator Agent
- Hermes Agent

In v0.1, these roles are manual templates.  
Future versions may connect them to actual agents.

---

### 5. Approval Layer

VESPERA is human-controlled.

AI can propose.  
AI can prepare.  
AI can summarize.  
AI can execute low-risk tasks.

But high-impact actions must pass through the Approval Queue.

---

## Permission Flow

```txt
Task Created
    |
    v
VESPERA Core evaluates risk
    |
    +--> Level 0: Free
    |
    +--> Level 1: Log Only
    |
    +--> Level 2: Human Approval Required
    |
    +--> Level 3: Double Confirmation Required
    |
    +--> Level 4: Manual Only / Forbidden
```

---

## Hermes Role

Hermes is an optional communication adapter.

Hermes does not own state.  
Hermes does not execute critical actions.

Hermes only delivers:

- Approval requests
- Reminders
- Sprint updates
- Asset review messages
- Blocker alerts

If Hermes fails, VESPERA still works because state remains in:

- VESPERA Core
- Obsidian
- Approval Queue
- Audit Log

---

## Storage Independence

VESPERA must not depend on Google Drive or any single provider.

The user chooses where assets live.

Examples:

```txt
Local:
D:\VESPERA_ASSET_LIBRARY

Google Drive:
G:\My Drive\VESPERA_ASSET_LIBRARY

NAS:
\\NAS01\VESPERA_ASSET_LIBRARY
```

VESPERA defines the structure.  
The user controls the storage.

---

## v0.1 Scope

v0.1 is manual-first.

Implemented:

- Folder structures
- Templates
- Setup scripts
- Sample project
- Permission Matrix
- Approval Queue

Not implemented yet:

- AI Router CLI
- Real n8n automation
- Hermes bot
- GUI
- Local LLM asset tagging
