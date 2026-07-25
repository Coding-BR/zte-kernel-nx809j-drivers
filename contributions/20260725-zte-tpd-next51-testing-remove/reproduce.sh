#!/usr/bin/env bash
set -u -o pipefail

ENGINEERING_ROOT="$1"
DRIVER="zte_tpd"
SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/../.." && pwd)"
REPORTS="$SCRIPT_DIR/reports"
mkdir -p "$REPORTS"
cd "$REPO_ROOT"

python workspace_tools/reconstruction_pipeline/manage_reference_modules.py verify
python reproducible_environment/verify_environment.py --mode static --report "$REPORTS/environment_static.json"
python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition -v
python -m pytest workspace_tools/reconstruction_pipeline/tests -q
python workspace_tools/reconstruction_pipeline/audit_offline_reconstruction.py --engineering-root "$ENGINEERING_ROOT" --driver "$DRIVER" --allow-incomplete --output "$REPORTS/offline_audit.json"
python workspace_tools/reconstruction_pipeline/validate_module_decomposition.py --check --driver "$DRIVER" --output "$REPORTS/module_decomposition.json"
python workspace_tools/reconstruction_pipeline/validate_reconstructed_drivers.py --curated-root "$ENGINEERING_ROOT/curated" --driver "$DRIVER" --rebuild --output "$REPORTS/double_clean_rebuild.json"
python workspace_tools/reconstruction_pipeline/verify_llm_reconstruction_cycle.py --driver "$DRIVER" --curated-root "$ENGINEERING_ROOT/curated" --evidence-root "$ENGINEERING_ROOT/validation" --audit "$REPORTS/double_clean_rebuild.json"
