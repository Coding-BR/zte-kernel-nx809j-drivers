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

function Write-Utf8Log {
    param([string]$Path, [object[]]$Lines)
    $Text = @($Lines | ForEach-Object { $_.ToString() })
    [System.IO.File]::WriteAllLines(
        $Path,
        [string[]]$Text,
        [System.Text.UTF8Encoding]::new($false)
    )
    $Text | ForEach-Object { Write-Output $_ }
}

Push-Location $RepoRoot
try {
    $ReferenceOutput = @(python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify 2>&1)
    Write-Utf8Log (Join-Path $Reports "reference_modules.log") $ReferenceOutput

    $EnvironmentOutput = @(python .\reproducible_environment\verify_environment.py --mode static `
        --report (Join-Path $Reports "environment_static.json") 2>&1)
    Write-Utf8Log (Join-Path $Reports "environment_static.log") $EnvironmentOutput

    $TestsOutput = @(cmd.exe /d /c "(python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition -v && python -m pytest workspace_tools/reconstruction_pipeline/tests -q) 2>&1")
    Write-Utf8Log (Join-Path $Reports "validator_tests.log") $TestsOutput

    $OfflineOutput = @(python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py `
        --engineering-root $EngineeringRoot --driver $Driver --allow-incomplete `
        --output (Join-Path $Reports "offline_audit.json") `
        --markdown (Join-Path $Reports "offline_audit.md") 2>&1)
    Write-Utf8Log (Join-Path $Reports "offline_audit.log") $OfflineOutput

    $DecompositionOutput = @(python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py `
        --check --driver $Driver `
        --output (Join-Path $Reports "module_decomposition.json") 2>&1)
    Write-Utf8Log (Join-Path $Reports "module_decomposition.log") $DecompositionOutput

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

    if ($RunJoern) {
        if (-not $JoernHome) {
            $JoernHome = Join-Path $RepoRoot "reproducible_environment\.tools\joern-v4.0.548"
        }
        $RunId = "review-" + (Get-Date -Format "yyyyMMdd-HHmmss")
        $JoernOutput = Join-Path $EngineeringRoot "validation\$Driver\joern\$RunId"
        $JoernArgs = @(
            ".\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py",
            "--driver", $Driver,
            "--function", "syna_testing_pt01_zte",
            "--source-root", ".\kernel_development\drivers\reconstructed\zte_tpd",
            "--ghidra-export", ".\reverse_engineering\validation\reconstructed\zte_tpd\offline_static\ghidra_stock",
            "--reconstruction-map", ".\kernel_development\drivers\reconstructed\zte_tpd\reconstruction_map.json",
            "--output-dir", $JoernOutput,
            "--joern-home", $JoernHome,
            "--define", "__user", "--define", "__init", "--define", "__exit",
            "--strict"
        )
        if ($JavaHome) {
            $JoernArgs += @("--java-home", $JavaHome)
        }
        $JoernOutputText = @(python @JoernArgs 2>&1)
        Write-Utf8Log (Join-Path $Reports "joern_rerun.log") $JoernOutputText
        Copy-Item (Join-Path $JoernOutput "joern_gate_summary.json") `
            (Join-Path $Reports "joern_function_gate.json") -Force
    }
} finally {
    Pop-Location
}

Write-Host "Review every exit code and status before refreshing the manifest."
Write-Host "Revise cada codigo de saida e estado antes de atualizar o manifesto."
