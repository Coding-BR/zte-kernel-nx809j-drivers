#!/usr/bin/env bash
set -u -o pipefail

ENGINEERING_ROOT="${1:?usage: reproduce.sh ENGINEERING_ROOT [DRIVER] [PYTHON]}"
DRIVER="${2:-zlog_test}"
PYTHON="${3:-python}"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/../.." && pwd)"
REPORTS="${SCRIPT_DIR}/reports"
mkdir -p "${REPORTS}"
cd "${REPO_ROOT}"

"${PYTHON}" workspace_tools/reconstruction_pipeline/manage_reference_modules.py verify 2>&1 | tee "${REPORTS}/reference_modules.log"
REFERENCE_EXIT="${PIPESTATUS[0]}"
"${PYTHON}" reproducible_environment/verify_environment.py --mode static --report "${REPORTS}/environment_static.json" 2>&1 | tee "${REPORTS}/environment_static.log"
ENVIRONMENT_EXIT="${PIPESTATUS[0]}"
"${PYTHON}" -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition -v 2>&1 | tee "${REPORTS}/validator_tests.log"
TESTS_EXIT="${PIPESTATUS[0]}"
"${PYTHON}" workspace_tools/reconstruction_pipeline/audit_offline_reconstruction.py --engineering-root "${ENGINEERING_ROOT}" --driver "${DRIVER}" --allow-incomplete --output "${REPORTS}/offline_audit.json" --markdown "${REPORTS}/offline_audit.md" 2>&1 | tee "${REPORTS}/offline_audit.log"
OFFLINE_EXIT="${PIPESTATUS[0]}"
"${PYTHON}" workspace_tools/reconstruction_pipeline/validate_module_decomposition.py --check --driver "${DRIVER}" --output "${REPORTS}/module_decomposition.json" 2>&1 | tee "${REPORTS}/module_decomposition.log"
DECOMPOSITION_EXIT="${PIPESTATUS[0]}"
"${PYTHON}" workspace_tools/reconstruction_pipeline/validate_reconstructed_drivers.py --curated-root "${ENGINEERING_ROOT}/curated" --driver "${DRIVER}" --rebuild --target-kernel-manifest "${ENGINEERING_ROOT}/config/target_kernel.json" --output "${REPORTS}/double_clean_rebuild.json" --markdown "${REPORTS}/double_clean_rebuild.md" 2>&1 | tee "${REPORTS}/double_clean_rebuild.log"
BUILD_EXIT="${PIPESTATUS[0]}"
"${PYTHON}" workspace_tools/reconstruction_pipeline/verify_llm_reconstruction_cycle.py --driver "${DRIVER}" --curated-root "${ENGINEERING_ROOT}/curated" --evidence-root "${ENGINEERING_ROOT}/validation" --audit "${REPORTS}/double_clean_rebuild.json" 2>&1 | tee "${REPORTS}/llm_cycle.log"
CYCLE_EXIT="${PIPESTATUS[0]}"
cp "${ENGINEERING_ROOT}/validation/${DRIVER}/cycle_validation.json" "${REPORTS}/llm_cycle.json"

printf 'reference=%s environment=%s tests=%s offline=%s decomposition=%s rebuild=%s cycle=%s\n' \
  "${REFERENCE_EXIT}" "${ENVIRONMENT_EXIT}" "${TESTS_EXIT}" "${OFFLINE_EXIT}" \
  "${DECOMPOSITION_EXIT}" "${BUILD_EXIT}" "${CYCLE_EXIT}"

test "${REFERENCE_EXIT}" -eq 0
test "${ENVIRONMENT_EXIT}" -eq 0
test "${TESTS_EXIT}" -eq 0
test "${OFFLINE_EXIT}" -eq 0
test "${DECOMPOSITION_EXIT}" -eq 0
test "${BUILD_EXIT}" -eq 0

printf '%s\n' 'Static reconstruction checks passed; independent review and hardware validation remain required.'
