$ErrorActionPreference = "Stop"
$EnvironmentRoot = $PSScriptRoot
$RepoRoot = Split-Path -Parent $EnvironmentRoot
$Image = "nubia-sm8850-kernel-builder:nx809j-repro"

if (-not (docker image inspect $Image 2>$null)) {
    & (Join-Path $EnvironmentRoot "bootstrap.ps1")
}

docker run --rm -it `
    --name nx809j-repro-shell `
    -v nubia_sm8850_kernel_src:/work/src `
    -v nubia_sm8850_kernel_toolchains:/work/toolchains `
    -v nubia_sm8850_kernel_cache:/work/cache `
    -v "${EnvironmentRoot}/scripts:/work/scripts:ro" `
    -v "${EnvironmentRoot}/inputs:/work/inputs:ro" `
    -v "${RepoRoot}/reference_modules:/work/reference_modules:ro" `
    $Image /bin/bash
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
