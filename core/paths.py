from pathlib import Path
import os

def default_vault_path() -> Path:
    return Path(os.path.expanduser("~")) / "ObsidianVaults" / "VESPERA_Vault"

def default_asset_path() -> Path:
    return Path("D:/VESPERA_ASSET_LIBRARY")

def repo_root() -> Path:
    return Path(__file__).resolve().parent.parent
