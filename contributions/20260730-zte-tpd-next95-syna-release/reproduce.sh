#!/usr/bin/env bash
set -u -o pipefail

ENGINEERING_ROOT="${1:?usage: reproduce.sh ENGINEERING_ROOT [DRIVER]}"
DRIVER="${2:-zte_tpd}"
SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/../.." && pwd)"
REPORTS="$SCRIPT_DIR/reports"
mkdir -p "$REPORTS"
cd "$REPO_ROOT"

run_logged() {
  local name="$1"
  shift
  set +e
  "$@" 2>&1 | tee "$REPORTS/$name"
  local status=${PIPESTATUS[0]}
  set -e
  printf 'EXIT_CODE=%s\n' "$status" >> "$REPORTS/$name"
  return 0
}

run_logged reference_modules.log python workspace_tools/reconstruction_pipeline/manage_reference_modules.py verify
run_logged environment_static.log python reproducible_environment/verify_environment.py --mode static --report "$REPORTS/environment_static.json"
run_logged validator_tests.log python -m unittest workspace_tools.reconstruction_pipeline.tests.test_validate_contribution workspace_tools.reconstruction_pipeline.tests.test_validate_module_decomposition workspace_tools.reconstruction_pipeline.tests.test_validate_reconstructed_drivers workspace_tools.reconstruction_pipeline.tests.test_attest_tested_driver_microtasks workspace_tools.reconstruction_pipeline.tests.test_run_joern_reconstruction_gate workspace_tools.reconstruction_pipeline.tests.test_verify_driver_microtasks -v
mkdir -p "$ENGINEERING_ROOT/validation/$DRIVER/replays"
SYNA_OPEN_REPLAY="$(mktemp -d "$ENGINEERING_ROOT/validation/$DRIVER/replays/syna_open.XXXXXX")"
SYNA_OPEN_HARNESS="$SYNA_OPEN_REPLAY/report.json"
run_logged syna_open_harness.log python workspace_tools/reconstruction_pipeline/run_zte_tpd_syna_open_harness.py --repo-root "$REPO_ROOT" --output "$SYNA_OPEN_HARNESS" --repetitions 2
cp "$SYNA_OPEN_HARNESS" "$REPORTS/syna_open_harness_report.json"
POST_RESET_REPLAY="$(mktemp -d "$ENGINEERING_ROOT/validation/$DRIVER/replays/post_reset_callback.XXXXXX")"
POST_RESET_HARNESS="$POST_RESET_REPLAY/report.json"
run_logged post_reset_callback_harness.log python workspace_tools/reconstruction_pipeline/run_zte_tpd_post_reset_callback_harness.py --repo-root "$REPO_ROOT" --output "$POST_RESET_HARNESS" --repetitions 2
cp "$POST_RESET_HARNESS" "$REPORTS/post_reset_callback_harness_report.json"
DATA_DUPLICATOR_REPLAY="$(mktemp -d "$ENGINEERING_ROOT/validation/$DRIVER/replays/data_duplicator.XXXXXX")"
DATA_DUPLICATOR_HARNESS="$DATA_DUPLICATOR_REPLAY/report.json"
run_logged data_duplicator_harness.log python workspace_tools/reconstruction_pipeline/run_zte_tpd_data_duplicator_harness.py --repo-root "$REPO_ROOT" --output "$DATA_DUPLICATOR_HARNESS" --repetitions 2
cp "$DATA_DUPLICATOR_HARNESS" "$REPORTS/data_duplicator_harness_report.json"
CLEAR_DATA_DUPLICATOR_REPLAY="$(mktemp -d "$ENGINEERING_ROOT/validation/$DRIVER/replays/clear_data_duplicator.XXXXXX")"
CLEAR_DATA_DUPLICATOR_HARNESS="$CLEAR_DATA_DUPLICATOR_REPLAY/report.json"
run_logged clear_data_duplicator_harness.log python workspace_tools/reconstruction_pipeline/run_zte_tpd_clear_data_duplicator_harness.py --repo-root "$REPO_ROOT" --output "$CLEAR_DATA_DUPLICATOR_HARNESS" --repetitions 2
cp "$CLEAR_DATA_DUPLICATOR_HARNESS" "$REPORTS/clear_data_duplicator_harness_report.json"
REPORT_DISPATCHER_REPLAY="$(mktemp -d "$ENGINEERING_ROOT/validation/$DRIVER/replays/report_dispatcher.XXXXXX")"
REPORT_DISPATCHER_HARNESS="$REPORT_DISPATCHER_REPLAY/report.json"
run_logged report_dispatcher_harness.log python workspace_tools/reconstruction_pipeline/run_zte_tpd_report_dispatcher_harness.py --repo-root "$REPO_ROOT" --output "$REPORT_DISPATCHER_HARNESS" --repetitions 2
cp "$REPORT_DISPATCHER_HARNESS" "$REPORTS/report_dispatcher_harness_report.json"
CUSTOM_TOUCH_CALLBACK_REPLAY="$(mktemp -d "$ENGINEERING_ROOT/validation/$DRIVER/replays/custom_touch_callback.XXXXXX")"
CUSTOM_TOUCH_CALLBACK_HARNESS="$CUSTOM_TOUCH_CALLBACK_REPLAY/report.json"
run_logged custom_touch_callback_harness.log python workspace_tools/reconstruction_pipeline/run_zte_tpd_custom_touch_callback_harness.py --repo-root "$REPO_ROOT" --output "$CUSTOM_TOUCH_CALLBACK_HARNESS" --repetitions 2
cp "$CUSTOM_TOUCH_CALLBACK_HARNESS" "$REPORTS/custom_touch_callback_harness_report.json"
run_logged offline_audit.log python workspace_tools/reconstruction_pipeline/audit_offline_reconstruction.py --engineering-root "$ENGINEERING_ROOT" --driver "$DRIVER" --allow-incomplete --output "$REPORTS/offline_audit.json" --markdown "$REPORTS/offline_audit.md"
run_logged module_decomposition.log python workspace_tools/reconstruction_pipeline/validate_module_decomposition.py --check --driver "$DRIVER" --output "$REPORTS/module_decomposition.json"
run_logged double_clean_rebuild.log python workspace_tools/reconstruction_pipeline/validate_reconstructed_drivers.py --curated-root "$REPO_ROOT/kernel_development/drivers/reconstructed" --driver "$DRIVER" --rebuild --run-root "$ENGINEERING_ROOT/runs/public-replay-next101" --work-root "$ENGINEERING_ROOT/validation/contribution-work-next95-101" --output "$REPORTS/double_clean_rebuild.json"
run_logged llm_cycle.log python workspace_tools/reconstruction_pipeline/verify_llm_reconstruction_cycle.py --driver "$DRIVER" --curated-root "$REPO_ROOT/kernel_development/drivers/reconstructed" --run-root "$ENGINEERING_ROOT/runs/public-replay-next101" --evidence-root "$ENGINEERING_ROOT/validation" --audit "$REPORTS/double_clean_rebuild.json"
cp "$ENGINEERING_ROOT/validation/$DRIVER/cycle_validation.json" "$REPORTS/llm_cycle.json"
