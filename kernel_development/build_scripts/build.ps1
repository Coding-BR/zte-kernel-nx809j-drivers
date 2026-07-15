param(
    [string]$Image = "",
    [switch]$NoPublishRelease
)

$ErrorActionPreference = "Stop"
$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
if ($Image) { Write-Warning "Custom image names are ignored by the locked environment." }
& (Join-Path $RepoRoot "reproducible_environment\build.ps1") `
    -NoPublishRelease:$NoPublishRelease
exit $LASTEXITCODE
