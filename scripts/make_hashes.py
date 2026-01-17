#!/usr/bin/env python3
"""
Generate SHA-256 hashes for an evidence pack.

- Writes: <pack>/hashes/SHA256SUMS.txt
- Excludes the hashes output file itself.
- Comments intentionally in UK English.
"""

from __future__ import annotations

import hashlib
import sys
from pathlib import Path


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def main() -> int:
    if len(sys.argv) != 2:
        print("Usage: make_hashes.py <evidence-pack-path>")
        return 2

    pack = Path(sys.argv[1]).resolve()
    if not pack.exists() or not pack.is_dir():
        print(f"Error: not a directory: {pack}")
        return 2

    hashes_dir = pack / "hashes"
    hashes_dir.mkdir(parents=True, exist_ok=True)
    out_file = hashes_dir / "SHA256SUMS.txt"

    files: list[Path] = []
    for p in pack.rglob("*"):
        if p.is_file():
            if p.resolve() == out_file.resolve():
                continue
            files.append(p)

    files.sort(key=lambda x: str(x).lower())

    lines: list[str] = []
    for f in files:
        digest = sha256_file(f)
        rel = f.relative_to(pack).as_posix()
        lines.append(f"{digest}  {rel}")

    out_file.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Wrote: {out_file}")
    print(f"Files hashed: {len(files)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
