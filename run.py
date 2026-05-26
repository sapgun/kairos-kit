"""
VESPERA entry point - run from project root.
Usage: py run.py <command>
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent / "core"))

from vespera import main

if __name__ == "__main__":
    main()
