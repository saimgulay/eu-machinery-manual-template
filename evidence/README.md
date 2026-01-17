# Evidence packs

Evidence packs are immutable, timestamped snapshots that back a specific manual revision.

## Location
- evidence/_packs/<YYYYMMDD_HHMMSS>_<product-slug>/

## Recommended contents
- sources/        (primary legal docs links + downloaded PDFs where licensing permits)
- assessments/    (risk assessment summary, hazard logs)
- tests/          (test logs, verification checklists, measurement reports)
- drawings/       (diagrams used in the manual)
- labels/         (label artwork inventory + placement)
- translations/   (translation provider artefacts, reviewer notes)
- approvals/      (internal approvals)

## Hashing
Run scripts to generate:
- hashes/SHA256SUMS.txt
This enables tamper-evidence and traceability.
