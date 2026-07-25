param(
    [Parameter(Mandatory = $true)]
    [string]$EngineeringRoot,
    [string]$Driver = "zte_tpd"
)

$ErrorActionPreference = "Continue"
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\..")).Path
$Reports = Join-Path $PSScriptRoot "reports"
New-Item -ItemType Directory -Force -Path $Reports | Out-Null

Push-Location $RepoRoot
try {
    python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify
    python .\reproducible_environment\verify_environment.py --mode static --report (Join-Path $Reports "environment_static.json")
    python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition -v
    python -m pytest workspace_tools\reconstruction_pipeline\tests -q
    python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py --engineering-root $EngineeringRoot --driver $Driver --allow-incomplete --output (Join-Path $Reports "offline_audit.json")
    python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py --check --driver $Driver --output (Join-Path $Reports "module_decomposition.json")
    python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py --curated-root (Join-Path $EngineeringRoot "curated") --driver $Driver --rebuild --output (Join-Path $Reports "double_clean_rebuild.json")
    python .\workspace_tools\reconstruction_pipeline\verify_llm_reconstruction_cycle.py --driver $Driver --curated-root (Join-Path $EngineeringRoot "curated") --evidence-root (Join-Path $EngineeringRoot "validation") --audit (Join-Path $Reports "double_clean_rebuild.json")
} finally {
    Pop-Location
}
