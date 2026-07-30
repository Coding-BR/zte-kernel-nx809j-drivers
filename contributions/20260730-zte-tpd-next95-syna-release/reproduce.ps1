param(
    [Parameter(Mandatory = $true)]
    [string]$EngineeringRoot,
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
    $output += "EXIT_CODE=$exitCode"
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
        python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution `
            workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition `
            workspace_tools.reconstruction_pipeline.tests.test_validate_reconstructed_drivers `
            workspace_tools.reconstruction_pipeline.tests.test_attest_tested_driver_microtasks `
            workspace_tools.reconstruction_pipeline.tests.test_compare_function_assembly `
            workspace_tools.reconstruction_pipeline.tests.test_compare_kcfi_reports `
            workspace_tools.reconstruction_pipeline.tests.test_run_joern_reconstruction_gate `
            workspace_tools.reconstruction_pipeline.tests.test_verify_driver_microtasks -v
    } | Out-Null
    $synaOpenReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\syna_open_" + [guid]::NewGuid().ToString("N"))
    $synaOpenHarness = Join-Path $synaOpenReplay "report.json"
    Invoke-Logged "syna_open_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_syna_open_harness.py `
            --repo-root $RepoRoot --output $synaOpenHarness --repetitions 2
    } | Out-Null
    Copy-Item $synaOpenHarness (Join-Path $Reports "syna_open_harness_report.json") -Force
    $postResetReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\post_reset_callback_" + [guid]::NewGuid().ToString("N"))
    $postResetHarness = Join-Path $postResetReplay "report.json"
    Invoke-Logged "post_reset_callback_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_post_reset_callback_harness.py `
            --repo-root $RepoRoot --output $postResetHarness --repetitions 2
    } | Out-Null
    Copy-Item $postResetHarness (Join-Path $Reports "post_reset_callback_harness_report.json") -Force
    $dataDuplicatorReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\data_duplicator_" + [guid]::NewGuid().ToString("N"))
    $dataDuplicatorHarness = Join-Path $dataDuplicatorReplay "report.json"
    Invoke-Logged "data_duplicator_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_data_duplicator_harness.py `
            --repo-root $RepoRoot --output $dataDuplicatorHarness --repetitions 2
    } | Out-Null
    Copy-Item $dataDuplicatorHarness (Join-Path $Reports "data_duplicator_harness_report.json") -Force
    $clearDataDuplicatorReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\clear_data_duplicator_" + [guid]::NewGuid().ToString("N"))
    $clearDataDuplicatorHarness = Join-Path $clearDataDuplicatorReplay "report.json"
    Invoke-Logged "clear_data_duplicator_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_clear_data_duplicator_harness.py `
            --repo-root $RepoRoot --output $clearDataDuplicatorHarness --repetitions 2
    } | Out-Null
    Copy-Item $clearDataDuplicatorHarness (Join-Path $Reports "clear_data_duplicator_harness_report.json") -Force
    $reportDispatcherReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\report_dispatcher_" + [guid]::NewGuid().ToString("N"))
    $reportDispatcherHarness = Join-Path $reportDispatcherReplay "report.json"
    Invoke-Logged "report_dispatcher_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_report_dispatcher_harness.py `
            --repo-root $RepoRoot --output $reportDispatcherHarness --repetitions 2
    } | Out-Null
    Copy-Item $reportDispatcherHarness (Join-Path $Reports "report_dispatcher_harness_report.json") -Force
    $customTouchCallbackReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\custom_touch_callback_" + [guid]::NewGuid().ToString("N"))
    $customTouchCallbackHarness = Join-Path $customTouchCallbackReplay "report.json"
    Invoke-Logged "custom_touch_callback_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_custom_touch_callback_harness.py `
            --repo-root $RepoRoot --output $customTouchCallbackHarness --repetitions 2
    } | Out-Null
    Copy-Item $customTouchCallbackHarness (Join-Path $Reports "custom_touch_callback_harness_report.json") -Force
    $customGestureCallbackReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\custom_gesture_callback_" + [guid]::NewGuid().ToString("N"))
    $customGestureCallbackHarness = Join-Path $customGestureCallbackReplay "report.json"
    Invoke-Logged "custom_gesture_callback_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_custom_gesture_callback_harness.py `
            --repo-root $RepoRoot --output $customGestureCallbackHarness --repetitions 2
    } | Out-Null
    Copy-Item $customGestureCallbackHarness (Join-Path $Reports "custom_gesture_callback_harness_report.json") -Force
    $palMemFreeReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\pal_mem_free_" + [guid]::NewGuid().ToString("N"))
    $palMemFreeHarness = Join-Path $palMemFreeReplay "report.json"
    Invoke-Logged "pal_mem_free_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_pal_mem_free_harness.py `
            --repo-root $RepoRoot --output $palMemFreeHarness --repetitions 2
    } | Out-Null
    Copy-Item $palMemFreeHarness (Join-Path $Reports "pal_mem_free_harness_report.json") -Force
    $palMemFreeBaseReplay = Join-Path $EngineeringRoot ("validation\$Driver\replays\pal_mem_free_base_" + [guid]::NewGuid().ToString("N"))
    $palMemFreeBaseHarness = Join-Path $palMemFreeBaseReplay "report.json"
    Invoke-Logged "pal_mem_free_base_harness.log" {
        python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_pal_mem_free_base_harness.py `
            --repo-root $RepoRoot --output $palMemFreeBaseHarness --repetitions 2
    } | Out-Null
    Copy-Item $palMemFreeBaseHarness (Join-Path $Reports "pal_mem_free_base_harness_report.json") -Force
    Invoke-Logged "offline_audit.log" {
        python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py `
            --engineering-root $EngineeringRoot --driver $Driver --allow-incomplete `
            --output (Join-Path $Reports "offline_audit.json") `
            --markdown (Join-Path $Reports "offline_audit.md")
    } | Out-Null
    Invoke-Logged "module_decomposition.log" {
        python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py `
            --check --driver $Driver --output (Join-Path $Reports "module_decomposition.json")
    } | Out-Null
    Invoke-Logged "double_clean_rebuild.log" {
        python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py `
            --curated-root (Join-Path $RepoRoot "kernel_development\drivers\reconstructed") --driver $Driver --rebuild `
            --run-root (Join-Path $EngineeringRoot "runs\public-replay-next104") `
            --work-root (Join-Path $EngineeringRoot "validation\contribution-work-next95-104-final") `
            --output (Join-Path $Reports "double_clean_rebuild.json")
    } | Out-Null
    Invoke-Logged "llm_cycle.log" {
        python .\workspace_tools\reconstruction_pipeline\verify_llm_reconstruction_cycle.py `
            --driver $Driver --curated-root (Join-Path $RepoRoot "kernel_development\drivers\reconstructed") `
            --run-root (Join-Path $EngineeringRoot "runs\public-replay-next104") `
            --evidence-root (Join-Path $EngineeringRoot "validation") `
            --audit (Join-Path $Reports "double_clean_rebuild.json")
    } | Out-Null
    Copy-Item (Join-Path $EngineeringRoot "validation\$Driver\cycle_validation.json") `
        (Join-Path $Reports "llm_cycle.json") -Force
} finally {
    Pop-Location
}
