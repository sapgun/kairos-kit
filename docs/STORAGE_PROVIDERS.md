
VESPERA Storage Providers

VESPERA does not require a specific storage provider.

Google Drive is optional.

Users can choose where their assets live.

VESPERA standardizes:

Folder structure
Metadata
Indexing
Approval workflow
Naming rules

But the actual storage location belongs to the user.

Supported Storage Provider Patterns
ProviderUse Case
Local DiskFastest local workflow
External SSD/HDDLarge media archive
Google DriveCloud sync and sharing
OneDriveMicrosoft ecosystem
DropboxSimple cloud sync
NASSelf-owned storage
Synology / TrueNASLong-term home or team server
S3-compatible StorageScalable remote storage
Backblaze B2Low-cost offsite backup
Custom PathAny mounted folder
Recommended Setups
Solo Builder
asset_storage:
  provider: local
  primary_path: "D:/VESPERA_ASSET_LIBRARY"

Best for:

Solo builders
Fast local use
Early testing
Google Drive Setup
asset_storage:
  provider: google_drive
  primary_path: "G:/My Drive/VESPERA_ASSET_LIBRARY"

Best for:

Cross-device access
Easy sharing
Creator workflows

Warning:

Google Drive is sync, not true backup.
Use additional backup if files are important.

NAS Setup
asset_storage:
  provider: nas
  primary_path: "\\NAS01\\VESPERA_ASSET_LIBRARY"

Best for:

Large media files
Long-term archive
Self-owned infrastructure
Small teams
External Drive Setup
asset_storage:
  provider: external_drive
  primary_path: "E:/VESPERA_ASSET_LIBRARY"

Best for:

Video-heavy workflows
Offline storage
Large source files
S3-Compatible Setup
asset_storage:
  provider: s3
  bucket: "VESPERA-assets"
  region: "ap-northeast-2"
  local_cache: "D:/VESPERA_CACHE"

Best for:

Advanced users
Remote backup
Team storage
Scalable archive
Storage Independence Principle

VESPERA must not depend on a single storage provider.

The user should be able to move from:

Local Disk → Google Drive → NAS → S3

without changing the core workflow.

The provider is replaceable.
The structure remains stable.

Standard Internal Structure

Regardless of provider, use:

VESPERA_ASSET_LIBRARY/
  00_Inbox/
  01_Projects/
  02_Content/
  03_Brand/
  04_Source_Files/
  08_Exports/
  90_Metadata/
  99_Archive/
Backup Recommendation

A good baseline:

Primary: Local Disk or NAS
Secondary: Google Drive or External Drive
Offsite: Backblaze B2 or S3-compatible storage

For most users:

Primary: Local Disk
Backup: Google Drive or External SSD

For creators:

Primary: External SSD or NAS
Backup: Cloud or second drive

For sensitive projects:

Primary: Encrypted local storage
Backup: Encrypted remote backup

