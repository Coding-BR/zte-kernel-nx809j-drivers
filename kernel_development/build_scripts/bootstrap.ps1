param(
    [string]$Image = "",
    [switch]$RebuildImage,
    [switch]$InstallGhidra
)

$ErrorActionPreference = "Stop"
$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
if ($Image) { Write-Warning "Custom image names are ignored by the locked environment." }
& (Join-Path $RepoRoot "reproducible_environment\bootstrap.ps1") `
    -RebuildImage:$RebuildImage -InstallGhidra:$InstallGhidra
exit $LASTEXITCODE
