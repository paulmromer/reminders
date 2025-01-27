#!/usr/bin/env python

from pathlib import Path 

dot_j = Path.home() / "reminders/settings/.jupyter"

excludes = [
    "data",
    "workspaces",
    "migrated",
    ".DS_Store"
]

for f in dot_j.rglob("*"):
    ex_tests = [ex in str(f) for ex in excludes]
    if not any(ex_tests):
        if f.is_file():
            if not any(ex_tests):
                print(f)
                s = f.read_text()
