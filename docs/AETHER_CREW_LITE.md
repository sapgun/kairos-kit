# Aether Crew Lite

Aether Crew Lite is the project management and development squad module inside KAIROS.

It is designed for:

- Solo builders
- Small teams
- Startup projects
- Hackathon teams
- AI-native product builders
- Web3 builders

---

## Purpose

Most AI tools help with isolated tasks.

Aether Crew Lite helps structure the full project lifecycle:

- Project brief
- Backlog
- Sprint planning
- Development tasks
- QA checks
- Approval queue
- Risk log
- Retrospective

---

## Relationship with KAIROS

```txt
KAIROS
  └── Aether Crew Lite
        ├── PO Agent
        ├── Scrum Master Agent
        ├── Developer Agent
        ├── QA Agent
        ├── Orchestrator Agent
        └── Hermes Agent
```

KAIROS is the operating system.  
Aether Crew Lite is the project squad.

---

## Role Agents

### Product Owner Agent

Responsible for:

- Product goal
- User story
- Backlog priority
- Acceptance criteria
- MVP scope

### Scrum Master Agent

Responsible for:

- Sprint planning
- Daily check
- Blocker tracking
- Retrospective
- Process discipline

### Developer Agent

Responsible for:

- Implementation tasks
- Code planning
- Refactoring notes
- TDD checklist
- Technical execution

### QA Agent

Responsible for:

- Test cases
- Quality gates
- Bug reports
- Final review checklist

### Orchestrator Agent

Responsible for:

- Routing tasks
- Coordinating agents
- Escalating blockers
- Maintaining workflow state

### Hermes Agent

Responsible for:

- Approval requests
- Reminder messages
- Status summaries
- Sprint notifications
- Human-in-the-loop communication

Hermes is a messenger, not the source of truth.

---

## Manual v0.1 Workflow

1. Create a project brief
2. Write backlog items
3. Select sprint tasks
4. Assign an AI role or human owner
5. Track progress in Sprint Board
6. Put high-impact actions into Approval Queue
7. Record decisions in Decision Log
8. Review weekly

---

## Future v0.4 Workflow

Future versions may include:

- Agent prompt packs
- Router integration
- n8n workflow execution
- Hermes bot
- GitHub Issue sync
- Calendar sync
- Local LLM project summaries

---

## Current Status

Aether Crew Lite is currently a manual project template inside KAIROS v0.1.

It is not a fully autonomous multi-agent runtime yet.
