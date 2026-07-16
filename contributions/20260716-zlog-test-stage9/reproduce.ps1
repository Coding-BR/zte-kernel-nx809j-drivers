param(
    [Parameter(Mandatory = $true)]
    [string]$EngineeringRoot,
    [string]$Driver = "zlog_test",
    [string]$Python = "python"
)

$ErrorActionPreference = "Continue"
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\..")).Path
$Reports = Join-Path $PSScriptRoot "reports"
New-Item -ItemType Directory -Force -Path $Reports | Out-Null

function Write-Utf8Log {
    param([string]$Path, [object[]]$Lines)
    $Text = @($Lines | ForEach-Object { $_.ToString() })
    [System.IO.File]::WriteAllLines($Path, [string[]]$Text, [System.Text.UTF8Encoding]::new($false))
    $Text | ForEach-Object { Write-Output $_ }
}

Push-Location $RepoRoot
try {
    $ReferenceOutput = @(& $Python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify 2>&1)
    $ReferenceExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "reference_modules.log") $ReferenceOutput

    $EnvironmentOutput = @(& $Python .\reproducible_environment\verify_environment.py --mode static `
        --report (Join-Path $Reports "environment_static.json") 2>&1)
    $EnvironmentExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "environment_static.log") $EnvironmentOutput

    $TestsOutput = @(& $Python -m unittest `
        workspace_tools.reconstruction_pipeline.tests.test_validate_contribution `
        workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition -v 2>&1)
    $TestsExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "validator_tests.log") $TestsOutput

    $OfflineOutput = @(& $Python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py `
        --engineering-root $EngineeringRoot --driver $Driver --allow-incomplete `
        --output (Join-Path $Reports "offline_audit.json") `
        --markdown (Join-Path $Reports "offline_audit.md") 2>&1)
    $OfflineExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "offline_audit.log") $OfflineOutput

    $DecompositionOutput = @(& $Python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py `
        --check --driver $Driver `
        --output (Join-Path $Reports "module_decomposition.json") 2>&1)
    $DecompositionExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "module_decomposition.log") $DecompositionOutput

    $BuildOutput = @(& $Python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py `
        --curated-root (Join-Path $EngineeringRoot "curated") --driver $Driver --rebuild `
        --target-kernel-manifest (Join-Path $EngineeringRoot "config\target_kernel.json") `
        --output (Join-Path $Reports "double_clean_rebuild.json") `
        --markdown (Join-Path $Reports "double_clean_rebuild.md") 2>&1)
    $BuildExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "double_clean_rebuild.log") $BuildOutput

    $CycleOutput = @(& $Python .\workspace_tools\reconstruction_pipeline\verify_llm_reconstruction_cycle.py `
        --driver $Driver --curated-root (Join-Path $EngineeringRoot "curated") `
        --evidence-root (Join-Path $EngineeringRoot "validation") `
        --audit (Join-Path $Reports "double_clean_rebuild.json") 2>&1)
    $CycleExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "llm_cycle.log") $CycleOutput
    Copy-Item (Join-Path $EngineeringRoot "validation\$Driver\cycle_validation.json") `
        (Join-Path $Reports "llm_cycle.json") -Force

    Write-Host "reference=$ReferenceExit environment=$EnvironmentExit tests=$TestsExit offline=$OfflineExit decomposition=$DecompositionExit rebuild=$BuildExit cycle=$CycleExit"
    if ($ReferenceExit -ne 0 -or $EnvironmentExit -ne 0 -or $TestsExit -ne 0 -or
        $OfflineExit -ne 0 -or $DecompositionExit -ne 0 -or $BuildExit -ne 0) {
        exit 1
    }
} finally {
    Pop-Location
}

Write-Host "Static reconstruction checks passed; independent review and hardware validation remain required."
exit 0
