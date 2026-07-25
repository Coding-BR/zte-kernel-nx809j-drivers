#!/usr/bin/env bash
set -u -o pipefail

ENGINEERING_ROOT="${1:?usage: reproduce.sh ENGINEERING_ROOT [DRIVER] [--joern]}"
DRIVER="${2:-zte_tpd}"
JOERN_MODE="${3:-}"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/../.." && pwd)"
REPORTS="${SCRIPT_DIR}/reports"
mkdir -p "${REPORTS}"
cd "${REPO_ROOT}"

python workspace_tools/reconstruction_pipeline/manage_reference_modules.py verify 2>&1 | tee "${REPORTS}/reference_modules.log"
python reproducible_environment/verify_environment.py --mode static --report "${REPORTS}/environment_static.json" 2>&1 | tee "${REPORTS}/environment_static.log"
(python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition -v && python -m pytest workspace_tools/reconstruction_pipeline/tests -q) 2>&1 | tee "${REPORTS}/validator_tests.log"
python workspace_tools/reconstruction_pipeline/audit_offline_reconstruction.py --engineering-root "${ENGINEERING_ROOT}" --driver "${DRIVER}" --allow-incomplete --output "${REPORTS}/offline_audit.json" --markdown "${REPORTS}/offline_audit.md" 2>&1 | tee "${REPORTS}/offline_audit.log"
python workspace_tools/reconstruction_pipeline/validate_module_decomposition.py --check --driver "${DRIVER}" --output "${REPORTS}/module_decomposition.json" 2>&1 | tee "${REPORTS}/module_decomposition.log"
python workspace_tools/reconstruction_pipeline/validate_reconstructed_drivers.py --curated-root "${ENGINEERING_ROOT}/curated" --driver "${DRIVER}" --rebuild --output "${REPORTS}/double_clean_rebuild.json" --markdown "${REPORTS}/double_clean_rebuild.md" 2>&1 | tee "${REPORTS}/double_clean_rebuild.log"
python workspace_tools/reconstruction_pipeline/verify_llm_reconstruction_cycle.py --driver "${DRIVER}" --curated-root "${ENGINEERING_ROOT}/curated" --evidence-root "${ENGINEERING_ROOT}/validation" --audit "${REPORTS}/double_clean_rebuild.json" 2>&1 | tee "${REPORTS}/llm_cycle.log"
cp "${ENGINEERING_ROOT}/validation/${DRIVER}/cycle_validation.json" "${REPORTS}/llm_cycle.json"

if [[ "${JOERN_MODE}" == "--joern" ]]; then
  : "${JAVA_HOME:?JAVA_HOME must point to Java 21 for the Joern rerun}"
  JOERN_HOME="${JOERN_HOME:-${REPO_ROOT}/reproducible_environment/.tools/joern-v4.0.548}"
  JOERN_OUTPUT="${ENGINEERING_ROOT}/validation/${DRIVER}/joern/review-$(date -u +%Y%m%d-%H%M%S)"
  python workspace_tools/reconstruction_pipeline/run_joern_reconstruction_gate.py \
    --driver "${DRIVER}" \
    --function syna_testing_pt05_zte \
    --source-root kernel_development/drivers/reconstructed/zte_tpd \
    --ghidra-export reverse_engineering/validation/reconstructed/zte_tpd/offline_static/ghidra_stock \
    --reconstruction-map kernel_development/drivers/reconstructed/zte_tpd/reconstruction_map.json \
    --output-dir "${JOERN_OUTPUT}" \
    --joern-home "${JOERN_HOME}" \
    --java-home "${JAVA_HOME}" \
    --define __user --define __init --define __exit \
    --strict 2>&1 | tee "${REPORTS}/joern_rerun.log"
  cp "${JOERN_OUTPUT}/joern_gate_summary.json" "${REPORTS}/joern_function_gate.json"
fi

printf '%s\n' \
  'Review every exit code and status before refreshing the manifest.' \
  'Revise cada codigo de saida e estado antes de atualizar o manifesto.'
