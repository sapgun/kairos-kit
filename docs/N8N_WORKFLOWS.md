# KAIROS n8n Workflows

n8n is the automation layer for KAIROS.

In v0.1, n8n workflows are placeholders and planning templates.

Real workflow execution is planned for v0.3.

---

## Role of n8n

n8n should execute actions after the KAIROS approval system allows them.

n8n is not the decision maker.

```txt
KAIROS Core decides permission level
Approval Queue waits for human approval
n8n executes approved workflow
Obsidian records the result
```

---

## Planned Workflows

### 1. Daily Project Brief

Purpose:

- Read project status
- Summarize today's tasks
- Check pending approvals
- Check asset inbox
- Send daily summary

Trigger:

- Every morning
- Manual trigger
- Future Hermes trigger

Outputs:

- Obsidian Daily Log
- Optional Slack / Telegram message

---

### 2. Asset Inbox Indexer

Purpose:

- Detect new files in Asset Library Inbox
- Create pending asset record
- Suggest project / type / status
- Wait for human approval before renaming or moving

Important:

This should be semi-automated first.

AI can suggest.  
User approves.  
n8n executes.

---

### 3. Weekly Review

Purpose:

- Collect completed tasks
- Collect unresolved risks
- Collect decisions
- Summarize weekly progress
- Suggest next week's priorities

Outputs:

- Weekly Review note
- Optional reminder message

---

### 4. Backup Healthcheck

Purpose:

- Check whether vault and asset library exist
- Check recent backup status
- Warn user if backup is missing

---

## Current Template Files

```txt
templates/n8n/
  daily_project_brief.json
  asset_inbox_indexer.json
  weekly_review.json
```

These are placeholders in v0.1.

---

## v0.3 Goal

The v0.3 milestone should provide importable n8n workflow JSON files for:

- Daily Project Brief
- Asset Inbox Indexer
- Weekly Review
- Backup Healthcheck
- Calendar Sync
- GitHub Issue Sync
