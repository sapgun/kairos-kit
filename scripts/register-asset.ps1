# KAIROS - register-asset.ps1
# Register files from Asset Library Pending_Review into Obsidian Asset Index.
# This script does NOT rename, move, delete, publish, or share files.
# It only creates pending records for human review.

param(
    [string]$AssetPath = "D:\KAIROS_ASSET_LIBRARY",
    [string]$VaultPath = "",
    [string]$Project = "Unassigned",
    [string]$AssetType = "Asset",
    [string]$Tool = "Unknown",
    [string]$Status = "Review"
)

if ([string]::IsNullOrWhiteSpace($VaultPath)) {
    $VaultPath = Join-Path $env:USERPROFILE "ObsidianVaults\KAIROS_Vault"
}

$PendingPath = Join-Path $AssetPath "00_Inbox\Pending_Review"
$AssetIndexDir = Join-Path $VaultPath "10_Asset_Index"
$AssetIndexFile = Join-Path $AssetIndexDir "ASSET_INDEX.md"
$ApprovalQueueFile = Join-Path $VaultPath "APPROVAL_QUEUE.md"

Write-Host ""
Write-Host "KAIROS Asset Registration" -ForegroundColor Cyan
Write-Host "=========================" -ForegroundColor Cyan
Write-Host ""

if (-not (Test-Path $PendingPath)) {
    Write-Host "[FAIL] Pending Review folder not found: $PendingPath" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $VaultPath)) {
    Write-Host "[FAIL] Obsidian Vault not found: $VaultPath" -ForegroundColor Red
    exit 1
}

New-Item -ItemType Directory -Force -Path $AssetIndexDir | Out-Null

if (-not (Test-Path $AssetIndexFile)) {
    @"
# KAIROS Asset Index

This file tracks assets registered from the KAIROS Asset Library.

## Pending Assets

| Date | Asset ID | File Name | Project | Type | Tool | Status | Source Path |
|---|---|---|---|---|---|---|---|
"@ | Out-File -Encoding utf8 $AssetIndexFile
}

if (-not (Test-Path $ApprovalQueueFile)) {
    @"
# KAIROS Approval Queue

## Pending Approvals

| Date | Approval ID | Project | Action | Level | Status | Notes |
|---|---|---|---|---|---|---|

## Approved

## Rejected
"@ | Out-File -Encoding utf8 $ApprovalQueueFile
}

$files = Get-ChildItem -Path $PendingPath -File -ErrorAction SilentlyContinue

if ($files.Count -eq 0) {
    Write-Host "[WARN] No files found in Pending_Review." -ForegroundColor Yellow
    Write-Host "       Put a file into: $PendingPath" -ForegroundColor Yellow
    exit 0
}

$today = Get-Date -Format "yyyy-MM-dd"
$idDate = Get-Date -Format "yyyyMMdd"
$registered = 0

foreach ($file in $files) {
    $safeFileName = $file.Name.Replace("|", "-")
    $assetId = "ASSET-$($Project.ToUpper().Replace('_','-'))-$idDate-$('{0:D3}' -f ($registered + 1))"
    $approvalId = "APPROVAL-$idDate-$('{0:D3}' -f ($registered + 1))"

    $sourcePath = $file.FullName.Replace("|", "-")

    # Asset Index record
    $assetLine = "| $today | $assetId | $safeFileName | $Project | $AssetType | $Tool | $Status | $sourcePath |"
    Add-Content -Encoding utf8 -Path $AssetIndexFile -Value $assetLine

    # Approval Queue record
    $approvalLine = "| $today | $approvalId | $Project | Review asset registration for $safeFileName | Level 2 | Pending | File remains in Pending_Review. No move/rename executed. |"
    Add-Content -Encoding utf8 -Path $ApprovalQueueFile -Value $approvalLine

    Write-Host "[OK] Registered: $safeFileName" -ForegroundColor Green
    Write-Host "     Asset ID: $assetId" -ForegroundColor DarkCyan
    Write-Host "     Approval ID: $approvalId" -ForegroundColor DarkCyan

    $registered++
}

Write-Host ""
Write-Host "Registration completed." -ForegroundColor Green
Write-Host "Registered assets: $registered" -ForegroundColor Green
Write-Host ""
Write-Host "Asset Index:" -ForegroundColor Cyan
Write-Host $AssetIndexFile
Write-Host ""
Write-Host "Approval Queue:" -ForegroundColor Cyan
Write-Host $ApprovalQueueFile
Write-Host ""
Write-Host "No files were moved, renamed, deleted, published, or shared." -ForegroundColor Yellow
