param(
    [switch]$NoPublishRelease
)

$ErrorActionPreference = "Stop"
$EnvironmentRoot = $PSScriptRoot
$RepoRoot = Split-Path -Parent $EnvironmentRoot
$Image = "nubia-sm8850-kernel-builder:nx809j-repro"
$Artifacts = Join-Path $EnvironmentRoot "artifacts"
New-Item -ItemType Directory -Force -Path $Artifacts | Out-Null

if (-not (docker image inspect $Image 2>$null)) {
    & (Join-Path $EnvironmentRoot "bootstrap.ps1")
}

$publishValue = if ($NoPublishRelease) { "0" } else { "1" }
if (-not $NoPublishRelease -and [string]::IsNullOrWhiteSpace($env:GITHUB_TOKEN)) {
    $env:GITHUB_TOKEN = (& gh auth token).Trim()
}

docker run --rm `
    --name nx809j-repro-build `
    -e PUBLISH_GITHUB_RELEASE=$publishValue `
    -e GITHUB_TOKEN="$env:GITHUB_TOKEN" `
    -e GITHUB_REPOSITORY="Coding-BR/android_kernel_nubia_sm8850_qwjujube" `
    -v nubia_sm8850_kernel_src:/work/src `
    -v nubia_sm8850_kernel_toolchains:/work/toolchains `
    -v nubia_sm8850_kernel_cache:/work/cache `
    -v "${EnvironmentRoot}/scripts:/work/scripts:ro" `
    -v "${EnvironmentRoot}/inputs:/work/inputs:ro" `
    -v "${RepoRoot}/reference_modules/full_vendor_boot:/work/artifacts/vendor_boot_ramdisk/extract/lib/modules:ro" `
    -v "${Artifacts}:/work/output" `
    $Image /bin/bash /work/scripts/build_kernel.sh
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
