param(
    [Parameter(Mandatory = $true)]
    [string]$EngineeringRoot,
    [string]$Driver = "zte_replace_me"
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
    $ReferenceOutput = @(python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify 2>&1)
    Write-Utf8Log (Join-Path $Reports "reference_modules.log") $ReferenceOutput
    $EnvironmentOutput = @(python .\reproducible_environment\verify_environment.py --mode static `
        --report (Join-Path $Reports "environment_static.json") 2>&1)
    Write-Utf8Log (Join-Path $Reports "environment_static.log") $EnvironmentOutput
    $TestsOutput = @(cmd.exe /d /c "python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution -v 2>&1")
    Write-Utf8Log (Join-Path $Reports "validator_tests.log") $TestsOutput
    $OfflineOutput = @(python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py `
        --engineering-root $EngineeringRoot --driver $Driver --allow-incomplete `
        --output (Join-Path $Reports "offline_audit.json") `
        --markdown (Join-Path $Reports "offline_audit.md") 2>&1)
    Write-Utf8Log (Join-Path $Reports "offline_audit.log") $OfflineOutput
    $BuildOutput = @(python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py `
        --curated-root (Join-Path $EngineeringRoot "curated") --driver $Driver --rebuild `
        --output (Join-Path $Reports "double_clean_rebuild.json") `
        --markdown (Join-Path $Reports "double_clean_rebuild.md") 2>&1)
    Write-Utf8Log (Join-Path $Reports "double_clean_rebuild.log") $BuildOutput
    $CycleOutput = @(python .\workspace_tools\reconstruction_pipeline\verify_llm_reconstruction_cycle.py `
        --driver $Driver --curated-root (Join-Path $EngineeringRoot "curated") `
        --evidence-root (Join-Path $EngineeringRoot "validation") `
        --audit (Join-Path $Reports "double_clean_rebuild.json") 2>&1)
    Write-Utf8Log (Join-Path $Reports "llm_cycle.log") $CycleOutput
    Copy-Item (Join-Path $EngineeringRoot "validation\$Driver\cycle_validation.json") `
        (Join-Path $Reports "llm_cycle.json") -Force
} finally {
    Pop-Location
}

Write-Host "Record the real exit codes/statuses, then run prepare_contribution_bundle.py."
Write-Host "Registre os codigos/estados reais e execute prepare_contribution_bundle.py."
