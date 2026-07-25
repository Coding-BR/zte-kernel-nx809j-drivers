param(
    [Parameter(Mandatory = $true)]
    [string]$EngineeringRoot,
    [string]$JavaHome = $env:JAVA_HOME,
    [string]$JoernHome = ".\reproducible_environment\.tools\joern-v4.0.548"
)

$ErrorActionPreference = "Stop"
$bundle = ".\contributions\20260724-joern-runtime-gate\reports"
$run = Join-Path $EngineeringRoot "validation\zte_ir\joern\reproduce-v4.0.548"

python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py `
  --driver zte_ir `
  --source-root .\kernel_development\drivers\reconstructed\zte_ir `
  --ghidra-export .\reverse_engineering\validation\reconstructed\zte_ir\offline_static\ghidra_stock `
  --reconstruction-map .\kernel_development\drivers\reconstructed\zte_ir\reconstruction_map.json `
  --output-dir $run `
  --joern-home $JoernHome `
  --java-home $JavaHome `
  --define __user `
  --define __init `
  --define __exit `
  --strict
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

python .\reproducible_environment\verify_environment.py `
  --mode static `
  --report "$bundle\environment_static.json"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

python -m unittest `
  workspace_tools.reconstruction_pipeline.tests.test_validate_contribution `
  workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition `
  -v
exit $LASTEXITCODE
