#!/usr/bin/env bash
set -euo pipefail

# Creates a timestamped evidence pack folder structure (macOS/Linux).
# Comments intentionally in UK English.

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <product-slug>"
  exit 2
fi

slug="$1"
ts="$(date +%Y%m%d_%H%M%S)"
root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
pack_dir="${root_dir}/evidence/_packs/${ts}_${slug}"

mkdir -p "${pack_dir}"/{sources,assessments,tests,drawings,labels,translations,approvals,hashes}

cat > "${pack_dir}/README.md" <<EOF
# Evidence Pack

- Timestamp: ${ts}
- Product slug: ${slug}
- Purpose: Evidence snapshot supporting a specific manual revision.

Next steps:
1) Place artefacts into the folders.
2) Run: python3 scripts/make_hashes.py "${pack_dir}"
EOF

echo "Created: ${pack_dir}"
