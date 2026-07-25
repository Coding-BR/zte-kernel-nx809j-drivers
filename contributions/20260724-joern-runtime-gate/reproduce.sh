#!/usr/bin/env bash
set -euo pipefail

ENGINEERING_ROOT="${1:?usage: reproduce.sh ENGINEERING_ROOT [JOERN_HOME]}"
JOERN_HOME="${2:-./reproducible_environment/.tools/joern-v4.0.548}"
: "${JAVA_HOME:?JAVA_HOME must point to the locked Java 21 runtime}"

BUNDLE="./contributions/20260724-joern-runtime-gate/reports"
RUN="${ENGINEERING_ROOT}/validation/zte_ir/joern/reproduce-v4.0.548"

python ./workspace_tools/reconstruction_pipeline/run_joern_reconstruction_gate.py \
  --driver zte_ir \
  --source-root ./kernel_development/drivers/reconstructed/zte_ir \
  --ghidra-export ./reverse_engineering/validation/reconstructed/zte_ir/offline_static/ghidra_stock \
  --reconstruction-map ./kernel_development/drivers/reconstructed/zte_ir/reconstruction_map.json \
  --output-dir "$RUN" \
  --joern-home "$JOERN_HOME" \
  --java-home "$JAVA_HOME" \
  --define __user \
  --define __init \
  --define __exit \
  --strict

python ./workspace_tools/reconstruction_pipeline/manage_reference_modules.py verify
python ./reproducible_environment/verify_environment.py \
  --mode static \
  --report "$BUNDLE/environment_static.json"
python -m unittest \
  workspace_tools.reconstruction_pipeline.tests.test_validate_contribution \
  workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition \
  -v
