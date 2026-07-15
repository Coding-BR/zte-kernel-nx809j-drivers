#!/usr/bin/env bash
set -u -o pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/../.." && pwd)"
REPORTS="${SCRIPT_DIR}/reports"
mkdir -p "${REPORTS}"
cd "${REPO_ROOT}"

python workspace_tools/reconstruction_pipeline/manage_reference_modules.py verify 2>&1 | tee "${REPORTS}/reference_modules.log"
REFERENCE_EXIT="${PIPESTATUS[0]}"
python reproducible_environment/verify_environment.py --mode static --report "${REPORTS}/environment_static.json" 2>&1 | tee "${REPORTS}/environment_static.log"
ENVIRONMENT_EXIT="${PIPESTATUS[0]}"
python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution -v 2>&1 | tee "${REPORTS}/validator_tests.log"
TESTS_EXIT="${PIPESTATUS[0]}"

test "${REFERENCE_EXIT}" -eq 0
test "${ENVIRONMENT_EXIT}" -eq 0
test "${TESTS_EXIT}" -eq 0
