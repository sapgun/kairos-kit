# KAIROS Asset Management

KAIROS treats AI-generated assets as first-class project memory.

AI tools can generate images, videos, infographics, documents, pitch decks, and design files, but they should not become the final storage location.

The rule is simple:

> Generate anywhere. Recover into KAIROS. Index in Obsidian.

---

## Why Asset Management Matters

When using many AI tools, files quickly become scattered across:

- ChatGPT
- Grok
- Gemini
- Claude
- Kimi
- Canva
- Figma
- Runway
- Kling
- Pika
- HeyGen
- Local folders
- Downloads folder

Without a unified asset system, it becomes difficult to know:

- Which file is the latest version
- Which asset was approved
- Which asset belongs to which project
- Which AI tool generated the asset
- Which file was already published
- Which file is still a draft

KAIROS solves this with a structured Asset Library and Obsidian-based indexing.

---

## Core Principle

AI tools are generation engines, not asset storage systems.

KAIROS Asset Library is the source of truth for generated files.

Obsidian stores metadata, meaning, usage context, and status.

---

## Standard Asset Library Structure

```txt
KAIROS_ASSET_LIBRARY/
  00_Inbox/
    Pending_Review/
    Approved_To_Move/
    Rejected/

  01_Projects/
    Aether_Crew_Lite/
      00_Inbox/
      02_Images/
      03_Infographics/
      04_Videos/
      05_Demo/
      06_Pitch/
      07_Social/
      08_Source/
      09_Final/

  02_Content/
  03_Brand/
  04_Source_Files/
  08_Exports/
    Final/
  90_Metadata/
  99_Archive/

Set-Location "D:\KAIROS-KIT"

# Ensure folders exist
New-Item -ItemType Directory -Force -Path "docs" | Out-Null
New-Item -ItemType Directory -Force -Path "config" | Out-Null
New-Item -ItemType Directory -Force -Path "scripts" | Out-Null
New-Item -ItemType Directory -Force -Path "examples\sample_asset_index" | Out-Null

# docs/ASSET_MANAGEMENT.md
@'
# KAIROS Asset Management

KAIROS treats AI-generated assets as first-class project memory.

AI tools can generate images, videos, infographics, documents, pitch decks, and design files, but they should not become the final storage location.

The rule is simple:

> Generate anywhere. Recover into KAIROS. Index in Obsidian.

---

## Why Asset Management Matters

When using many AI tools, files quickly become scattered across:

- ChatGPT
- Grok
- Gemini
- Claude
- Kimi
- Canva
- Figma
- Runway
- Kling
- Pika
- HeyGen
- Local folders
- Downloads folder

Without a unified asset system, it becomes difficult to know:

- Which file is the latest version
- Which asset was approved
- Which asset belongs to which project
- Which AI tool generated the asset
- Which file was already published
- Which file is still a draft

KAIROS solves this with a structured Asset Library and Obsidian-based indexing.

---

## Core Principle

AI tools are generation engines, not asset storage systems.

KAIROS Asset Library is the source of truth for generated files.

Obsidian stores metadata, meaning, usage context, and status.

---

## Standard Asset Library Structure

```txt
KAIROS_ASSET_LIBRARY/
  00_Inbox/
    Pending_Review/
    Approved_To_Move/
    Rejected/

  01_Projects/
    Aether_Crew_Lite/
      00_Inbox/
      02_Images/
      03_Infographics/
      04_Videos/
      05_Demo/
      06_Pitch/
      07_Social/
      08_Source/
      09_Final/

  02_Content/
  03_Brand/
  04_Source_Files/
  08_Exports/
    Final/
  90_Metadata/
  99_Archive/
Asset Naming Rule
YYYYMMDD_ProjectName_AssetType_Tool_Version_Status.ext

Examples:

20260516_AetherCrew_Thumbnail_Grok_v01_Draft.png
20260516_AetherCrew_ProductDemo_Kling_v01_Review.mp4
20260517_NodeNest_HeroVideo_Runway_v03_Final.mp4
20260518_HeyChain_PitchDeck_Canva_v01_Final.pdf
Status Values
StatusMeaning
DraftFirst generated version
ReviewNeeds human review
ApprovedApproved for use
FinalFinal export
PublishedAlready posted or delivered
ArchivedNo longer active
RejectedNot used
Recommended Workflow
1. Generate asset in any AI tool
2. Download the file
3. Save it into 00_Inbox/Pending_Review
4. Add or update Obsidian Asset Index
5. Suggest filename and destination
6. Human approves
7. Move asset to project folder
8. Mark final or published when used
Human Approval Rule

KAIROS should not automatically rename, move, delete, publish, or share assets without approval.

Recommended permission level:

Suggest filename: Level 0
Create pending asset record: Level 1
Rename or move file: Level 2
Mark as Final: Level 2
Share public link: Level 3
Delete file: Level 3
Store secrets: Level 4 / Forbidden
Sidecar Metadata

For important assets, create a sidecar metadata file.

Example:

20260516_AetherCrew_ProductDemo_Kling_v01_Draft.mp4
20260516_AetherCrew_ProductDemo_Kling_v01_Draft.asset.md

Example metadata:

---
type: asset
asset_id: ASSET-AETHER-20260516-001
project: Aether_Crew_Lite
asset_type: video
tool: Kling
status: draft
version: v01
storage_provider: local
storage_path: D:/KAIROS_ASSET_LIBRARY/01_Projects/Aether_Crew_Lite/04_Videos
created: 2026-05-16
---

# Asset Notes

## Purpose

Short product demo video for Aether Crew Lite.

## Prompt

Self-hosted AI Scrum squad dashboard, clean startup SaaS interface.

## Review Notes

- Needs clearer UI sequence
- Reduce flashy motion
What Not To Store

Do not store the following in the Asset Library:

.env
Private keys
Seed phrases
Mnemonics
Wallet backups
API keys
Credentials
Sensitive customer data

Use an encrypted vault for sensitive materials.

---

## Register Pending Assets

KAIROS provides a safe registration script:

```powershell
.\scripts\register-asset.ps1 -Project Aether_Crew_Lite -AssetType Thumbnail -Tool ChatGPT

This script:

Reads files from 00_Inbox/Pending_Review
Adds pending records to Obsidian Asset Index
Adds review items to Approval Queue
Does not rename files
Does not move files
Does not delete files
Does not publish or share files

This follows the KAIROS human-in-the-loop principle.

AI or scripts may suggest and register.
The user approves before any high-impact action.
