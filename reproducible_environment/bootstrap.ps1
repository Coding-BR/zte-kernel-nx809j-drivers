param(
    [switch]$RebuildImage,
    [switch]$InstallGhidra
)

$ErrorActionPreference = "Stop"
$EnvironmentRoot = $PSScriptRoot
$RepoRoot = Split-Path -Parent $EnvironmentRoot
$Lock = Get-Content -Raw -LiteralPath (Join-Path $EnvironmentRoot "environment.lock.json") | ConvertFrom-Json
$Image = "nubia-sm8850-kernel-builder:nx809j-repro"
$ExactImageReady = $false

if (-not $RebuildImage -and (docker image inspect $Lock.docker.image_id 2>$null)) {
    docker tag $Lock.docker.image_id $Image
    $ExactImageReady = $true
}

if (-not $RebuildImage -and -not $ExactImageReady -and $Lock.docker.published) {
    docker pull $Lock.docker.oci_reference
    if ($LASTEXITCODE -eq 0) {
        docker tag $Lock.docker.oci_reference $Image
        $ExactImageReady = $true
    }
}

if (-not $RebuildImage -and -not $ExactImageReady) {
    $Release = $Lock.docker.release_fallback
    $Cache = Join-Path $EnvironmentRoot ".cache"
    $Archive = Join-Path $Cache $Release.asset
    New-Item -ItemType Directory -Force -Path $Cache | Out-Null
    gh release download $Release.tag --repo $Release.repository `
        --pattern $Release.asset --dir $Cache --clobber
    if ($LASTEXITCODE -eq 0 -and (Test-Path -LiteralPath $Archive)) {
        $ActualArchiveHash = (Get-FileHash -LiteralPath $Archive -Algorithm SHA256).Hash.ToLower()
        if ($ActualArchiveHash -ne $Release.sha256) {
            throw "Docker release asset SHA-256 mismatch."
        }
        docker load -i $Archive
        if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
        docker tag $Lock.docker.image_id $Image
        $ExactImageReady = $true
    }
}

if ($RebuildImage -or -not $ExactImageReady) {
    docker build -t $Image -f (Join-Path $EnvironmentRoot "docker\Dockerfile") $EnvironmentRoot
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Write-Warning "The fallback Dockerfile recreates the package set, but only the published OCI digest proves an identical image."
}

if ($ExactImageReady) {
    $ActualImage = (docker image inspect $Image --format '{{.Id}}').Trim()
    if ($ActualImage -ne $Lock.docker.image_id) {
        throw "Loaded Docker image does not match environment.lock.json."
    }
}

docker run --rm `
    --name nx809j-repro-bootstrap `
    -v nubia_sm8850_kernel_src:/work/src `
    -v nubia_sm8850_kernel_toolchains:/work/toolchains `
    -v nubia_sm8850_kernel_cache:/work/cache `
    -v "${EnvironmentRoot}/scripts:/work/scripts:ro" `
    -v "${EnvironmentRoot}/inputs:/work/inputs:ro" `
    -v "${RepoRoot}/reference_modules/full_vendor_boot:/work/artifacts/vendor_boot_ramdisk/extract/lib/modules:ro" `
    $Image /bin/bash /work/scripts/bootstrap.sh
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

if ($InstallGhidra) {
    & (Join-Path $EnvironmentRoot "install_ghidra.ps1")
}

python (Join-Path $EnvironmentRoot "verify_environment.py") --mode runtime
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
