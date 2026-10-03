param(
    [Parameter(Mandatory = $true)]
    [string]$EngineeringRoot,
    [Parameter(Mandatory = $true)]
    [string]$EvidenceRunRoot,
    [string]$Driver = "zte_tpd"
)

$ErrorActionPreference = "Continue"
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\..")).Path
$Reports = Join-Path $PSScriptRoot "reports"
New-Item -ItemType Directory -Force -Path $Reports | Out-Null

function Invoke-Logged {
    param([string]$Name, [scriptblock]$Command)

    $output = @(& $Command 2>&1)
    $exitCode = $LASTEXITCODE
    [System.IO.File]::WriteAllLines((Join-Path $Reports $Name), [string[]]$output,
        [System.Text.UTF8Encoding]::new($false))
    $output | ForEach-Object { Write-Output $_ }
    return $exitCode
}

Push-Location $RepoRoot
try {
    Invoke-Logged "reference_modules.log" {
        python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify
    } | Out-Null
    Invoke-Logged "environment_static.log" {
        python .\reproducible_environment\verify_environment.py --mode static `
            --report (Join-Path $Reports "environment_static.json")
    } | Out-Null
    Invoke-Logged "validator_tests.log" {
        python -m pytest -q `
            workspace_tools\reconstruction_pipeline\tests\test_validate_contribution.py `
            workspace_tools\reconstruction_pipeline\tests\test_attest_tested_driver_microtasks.py `
            workspace_tools\reconstruction_pipeline\tests\test_verify_driver_microtasks.py `
            workspace_tools\reconstruction_pipeline\tests\test_validate_module_decomposition.py `
            workspace_tools\reconstruction_pipeline\tests\test_compare_kcfi_reports.py `
            workspace_tools\reconstruction_pipeline\tests\test_compare_function_assembly.py
    } | Out-Null
    Invoke-Logged "offline_audit.log" {
        python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py `
            --engineering-root $EngineeringRoot --driver $Driver --allow-incomplete `
            --output (Join-Path $Reports "offline_audit.json")
    } | Out-Null
    Invoke-Logged "module_decomposition.log" {
        python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py `
            --check --driver $Driver --output (Join-Path $Reports "module_decomposition.json")
    } | Out-Null
    Invoke-Logged "double_clean_rebuild.log" {
        python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py `
            --curated-root (Join-Path $RepoRoot "kernel_development\drivers\reconstructed") `
            --run-root $EvidenceRunRoot --driver $Driver --rebuild `
            --work-root (Join-Path $EngineeringRoot "validation\contribution-work-next116-syna-pm-suspend") `
            --output (Join-Path $Reports "double_clean_rebuild.json")
    } | Out-Null
    Invoke-Logged "llm_cycle.log" {
        python .\workspace_tools\reconstruction_pipeline\verify_llm_reconstruction_cycle.py `
            --driver $Driver --curated-root (Join-Path $EngineeringRoot "curated") `
            --run-root $EvidenceRunRoot `
            --evidence-root (Join-Path $EngineeringRoot "validation") `
            --audit (Join-Path $Reports "double_clean_rebuild.json")
    } | Out-Null
    Copy-Item (Join-Path $EngineeringRoot "validation\$Driver\cycle_validation.json") `
        (Join-Path $Reports "llm_cycle.json") -Force
} finally {
    Pop-Location
}
