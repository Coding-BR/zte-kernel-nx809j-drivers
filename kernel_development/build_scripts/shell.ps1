param([string]$Image = "")

$ErrorActionPreference = "Stop"
$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
if ($Image) { Write-Warning "Custom image names are ignored by the locked environment." }
& (Join-Path $RepoRoot "reproducible_environment\shell.ps1")
exit $LASTEXITCODE
