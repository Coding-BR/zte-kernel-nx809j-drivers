param(
    [string]$Image = "nubia-sm8850-kernel-builder:latest",
    [switch]$NoPublishRelease
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot

docker build -t $Image -f (Join-Path $Root "docker/Dockerfile") $Root
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

$publishValue = if ($NoPublishRelease) { "0" } else { "1" }
if (-not $NoPublishRelease -and [string]::IsNullOrWhiteSpace($env:GITHUB_TOKEN)) {
    $token = (& gh auth token 2>$null)
    if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($token)) {
        throw "Automatic release publishing requires GITHUB_TOKEN or an authenticated GitHub CLI session. Use -NoPublishRelease only for local test builds."
    }
    $env:GITHUB_TOKEN = $token.Trim()
}

docker run --rm `
    --name nubia-sm8850-kernel-build `
    -e PUBLISH_GITHUB_RELEASE=$publishValue `
    -e GITHUB_TOKEN="$env:GITHUB_TOKEN" `
    -e GITHUB_REPOSITORY="Coding-BR/android_kernel_nubia_sm8850_qwjujube" `
    -v nubia_sm8850_kernel_src:/work/src `
    -v nubia_sm8850_kernel_toolchains:/work/toolchains `
    -v nubia_sm8850_kernel_cache:/work/cache `
    -v "${Root}/scripts:/work/scripts:ro" `
    -v "${Root}/artifacts:/work/artifacts" `
    $Image /bin/bash /work/scripts/build_kernel.sh
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
