# VESPERA - healthcheck.ps1
# Basic environment and folder check

param(
    [string]$VaultPath = "",
    [string]$AssetPath = ""
)

if ([string]::IsNullOrWhiteSpace($VaultPath)) {
    $VaultPath = Join-Path $env:USERPROFILE "ObsidianVaults\VESPERA_Vault"
}

if ([string]::IsNullOrWhiteSpace($AssetPath)) {
    $AssetPath = "D:\VESPERA_ASSET_LIBRARY"
}

Write-Host ""
Write-Host "VESPERA Healthcheck" -ForegroundColor Cyan
Write-Host "==================" -ForegroundColor Cyan
Write-Host ""

$script:ok = 0
$script:warn = 0
$script:fail = 0

function Check-Path {
    param(
        [string]$Label,
        [string]$Path,
        [bool]$Required = $true
    )

    if (Test-Path $Path) {
        Write-Host "[OK]   $Label -> $Path" -ForegroundColor Green
        $script:ok++
    } else {
        if ($Required) {
            Write-Host "[FAIL] $Label missing -> $Path" -ForegroundColor Red
            $script:fail++
        } else {
            Write-Host "[WARN] $Label missing -> $Path" -ForegroundColor Yellow
            $script:warn++
        }
    }
}

function Check-Command {
    param(
        [string]$Label,
        [string]$Command,
        [bool]$Required = $false
    )

    $exists = Get-Command $Command -ErrorAction SilentlyContinue

    if ($exists) {
        Write-Host "[OK]   $Label available ($Command)" -ForegroundColor Green
        $script:ok++
    } else {
        if ($Required) {
            Write-Host "[FAIL] $Label not found ($Command)" -ForegroundColor Red
            $script:fail++
        } else {
            Write-Host "[WARN] $Label not found ($Command)" -ForegroundColor Yellow
            $script:warn++
        }
    }
}

# Core repo files and folders
Check-Path "Repo README" ".\README.md"
Check-Path "Config folder" ".\config"
Check-Path "Docs folder" ".\docs"
Check-Path "Scripts folder" ".\scripts"
Check-Path "Obsidian templates" ".\templates\obsidian"

# Scripts
Check-Path "create-vault.ps1" ".\scripts\create-vault.ps1"
Check-Path "create-asset-library.ps1" ".\scripts\create-asset-library.ps1"
Check-Path "install.ps1" ".\scripts\install.ps1" $false
Check-Path "healthcheck.ps1" ".\scripts\healthcheck.ps1" $false

# Config files
Check-Path "agents.yaml" ".\config\agents.yaml"
Check-Path "permission_matrix.yaml" ".\config\permission_matrix.yaml"
Check-Path "storage.yaml" ".\config\storage.yaml" $false

# User runtime folders
Check-Path "Obsidian Vault" $VaultPath $false
Check-Path "Asset Library" $AssetPath $false
Check-Path "Asset Inbox" (Join-Path $AssetPath "00_Inbox") $false
Check-Path "Asset Pending Review" (Join-Path $AssetPath "00_Inbox\Pending_Review") $false

# Optional commands
Check-Command "Git" "git" $true
Check-Command "Python" "python" $false
Check-Command "Node.js" "node" $false
Check-Command "n8n" "n8n" $false
Check-Command "Ollama" "ollama" $false

Write-Host ""
Write-Host "Summary" -ForegroundColor Cyan
Write-Host "-------" -ForegroundColor Cyan
Write-Host "OK:   $script:ok" -ForegroundColor Green
Write-Host "WARN: $script:warn" -ForegroundColor Yellow
Write-Host "FAIL: $script:fail" -ForegroundColor Red

if ($script:fail -gt 0) {
    Write-Host ""
    Write-Host "Healthcheck completed with failures." -ForegroundColor Red
    exit 1
} else {
    Write-Host ""
    Write-Host "Healthcheck completed." -ForegroundColor Green
    exit 0
}
