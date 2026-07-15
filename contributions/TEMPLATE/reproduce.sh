#!/usr/bin/env bash
set -u -o pipefail

ENGINEERING_ROOT="${1:?usage: reproduce.sh ENGINEERING_ROOT [DRIVER]}"
DRIVER="${2:-zte_replace_me}"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/../.." && pwd)"
REPORTS="${SCRIPT_DIR}/reports"
mkdir -p "${REPORTS}"
cd "${REPO_ROOT}"

python workspace_tools/reconstruction_pipeline/manage_reference_modules.py verify 2>&1 | tee "${REPORTS}/reference_modules.log"
python reproducible_environment/verify_environment.py --mode static --report "${REPORTS}/environment_static.json" 2>&1 | tee "${REPORTS}/environment_static.log"
python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution -v 2>&1 | tee "${REPORTS}/validator_tests.log"
python workspace_tools/reconstruction_pipeline/audit_offline_reconstruction.py --engineering-root "${ENGINEERING_ROOT}" --driver "${DRIVER}" --allow-incomplete --output "${REPORTS}/offline_audit.json" --markdown "${REPORTS}/offline_audit.md" 2>&1 | tee "${REPORTS}/offline_audit.log"
python workspace_tools/reconstruction_pipeline/validate_reconstructed_drivers.py --curated-root "${ENGINEERING_ROOT}/curated" --driver "${DRIVER}" --rebuild --output "${REPORTS}/double_clean_rebuild.json" --markdown "${REPORTS}/double_clean_rebuild.md" 2>&1 | tee "${REPORTS}/double_clean_rebuild.log"
python workspace_tools/reconstruction_pipeline/verify_llm_reconstruction_cycle.py --driver "${DRIVER}" --curated-root "${ENGINEERING_ROOT}/curated" --evidence-root "${ENGINEERING_ROOT}/validation" --audit "${REPORTS}/double_clean_rebuild.json" 2>&1 | tee "${REPORTS}/llm_cycle.log"
cp "${ENGINEERING_ROOT}/validation/${DRIVER}/cycle_validation.json" "${REPORTS}/llm_cycle.json"

printf '%s\n' \
  'Record the real exit codes/statuses, then run prepare_contribution_bundle.py.' \
  'Registre os codigos/estados reais e execute prepare_contribution_bundle.py.'
