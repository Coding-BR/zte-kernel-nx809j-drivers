param(
    [Parameter(Mandatory = $true)]
    [string]$EngineeringRoot,
    [string]$Driver = "zte_tpd",
    [switch]$RunJoern,
    [string]$JoernHome = "",
    [string]$JavaHome = $env:JAVA_HOME
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
    python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py --engineering-root $EngineeringRoot --driver $Driver --allow-incomplete --output (Join-Path $Reports "offline_audit.json") --markdown (Join-Path $Reports "offline_audit.md")
    python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py --check --driver $Driver --output (Join-Path $Reports "module_decomposition.json")
    python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py --curated-root (Join-Path $EngineeringRoot "curated") --driver $Driver --rebuild --output (Join-Path $Reports "double_clean_rebuild.json") --markdown (Join-Path $Reports "double_clean_rebuild.md")
    python .\workspace_tools\reconstruction_pipeline\verify_llm_reconstruction_cycle.py --driver $Driver --curated-root (Join-Path $EngineeringRoot "curated") --evidence-root (Join-Path $EngineeringRoot "validation") --audit (Join-Path $Reports "double_clean_rebuild.json")

    if ($RunJoern) {
        if (-not $JoernHome) {
            $JoernHome = Join-Path $RepoRoot "reproducible_environment\.tools\joern-v4.0.548"
        }
        $JoernOutput = Join-Path $EngineeringRoot "validation\$Driver\joern\review-next50"
        python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py --driver $Driver --function syna_testing_create_dir --source-root .\kernel_development\drivers\reconstructed\zte_tpd --ghidra-export .\reverse_engineering\validation\reconstructed\zte_tpd\offline_static\ghidra_stock --reconstruction-map .\kernel_development\drivers\reconstructed\zte_tpd\reconstruction_map.json --output-dir $JoernOutput --joern-home $JoernHome --java-home $JavaHome --define __user --define __init --define __exit --strict
    }
} finally {
    Pop-Location
}
