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
    $ReferenceExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "reference_modules.log") $ReferenceOutput

    $EnvironmentOutput = @(python .\reproducible_environment\verify_environment.py --mode static `
        --report (Join-Path $Reports "environment_static.json") 2>&1)
    $EnvironmentExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "environment_static.log") $EnvironmentOutput

    $TestsOutput = @(cmd.exe /d /c "python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution -v 2>&1")
    $TestsExit = $LASTEXITCODE
    Write-Utf8Log (Join-Path $Reports "validator_tests.log") $TestsOutput

    if ($ReferenceExit -ne 0 -or $EnvironmentExit -ne 0 -or $TestsExit -ne 0) {
        exit 1
    }
} finally {
    Pop-Location
}
