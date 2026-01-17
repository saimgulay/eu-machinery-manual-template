Param(
  [Parameter(Mandatory=$true)]
  [string]$ProductSlug
)

# Creates a timestamped evidence pack folder structure (Windows PowerShell).
# Comments intentionally in UK English.

$ErrorActionPreference = 'Stop'
$ts = Get-Date -Format "yyyyMMdd_HHmmss"
$rootDir = Resolve-Path (Join-Path $PSScriptRoot "..")
$packDir = Join-Path $rootDir ("evidence\_packs\{0}_{1}" -f $ts, $ProductSlug)

$folders = @("sources","assessments","tests","drawings","labels","translations","approvals","hashes")
foreach ($f in $folders) {
  New-Item -ItemType Directory -Force -Path (Join-Path $packDir $f) | Out-Null
}

$readme = @"
# Evidence Pack

- Timestamp: $ts
- Product slug: $ProductSlug
- Purpose: Evidence snapshot supporting a specific manual revision.

Next steps:
1) Place artefacts into the folders.
2) Run: python scripts\make_hashes.py "$packDir"
"@
Set-Content -Encoding UTF8 -Path (Join-Path $packDir "README.md") -Value $readme

Write-Output ("Created: {0}" -f $packDir)
