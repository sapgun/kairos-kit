import sys
from pathlib import Path as _Path
sys.path.insert(0, str(_Path(__file__).resolve().parent))

import yaml
from pathlib import Path

def load_storage_config(repo_root: Path) -> dict:
    storage_file = repo_root / 'config' / 'storage.yaml'
    if not storage_file.exists():
        return {}
    with storage_file.open(encoding='utf-8') as f:
        return yaml.safe_load(f) or {}

def get_vault_path(config: dict) -> Path:
    try:
        p = config['obsidian']['vault_path']
        return Path(p)
    except (KeyError, TypeError):
        return Path.home() / 'ObsidianVaults' / 'VESPERA_Vault'

def get_backup_path(config: dict) -> Path:
    try:
        providers = config['backup']['providers']
        for p in providers:
            if p.get('type') == 'local':
                return Path(p['path'])
    except (KeyError, TypeError):
        pass
    return Path('D:/VESPERA_BACKUPS')

def get_asset_path(config: dict) -> Path:
    try:
        p = config['asset_storage']['primary_path']
        return Path(p)
    except (KeyError, TypeError):
        return Path('D:/VESPERA_ASSET_LIBRARY')
