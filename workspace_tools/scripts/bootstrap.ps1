param(
    [string]$Image = "nubia-sm8850-kernel-builder:latest"
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot

docker build -t $Image -f (Join-Path $Root "docker/Dockerfile") $Root
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

docker run --rm `
    --name nubia-sm8850-kernel-bootstrap `
    -v nubia_sm8850_kernel_src:/work/src `
    -v nubia_sm8850_kernel_toolchains:/work/toolchains `
    -v nubia_sm8850_kernel_cache:/work/cache `
    -v "${Root}/scripts:/work/scripts:ro" `
    -v "${Root}/artifacts:/work/artifacts" `
    $Image /bin/bash /work/scripts/bootstrap.sh
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
