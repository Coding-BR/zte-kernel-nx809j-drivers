# Current charger lifetime review — 2026-11-03

## Result

Static review found no candidate-specific teardown race that justifies a source change. The lifecycle wrapper serializes registration against stop, drains the notifier callback before cancelling its only charger delayed-work item, drains that queue before dropping the cached power_supply reference, and then calls the retained stock disconnect body. This is a static conclusion; runtime stress and NX809J hardware validation remain open.

The review is bound to candidate SHA-256 58f43110317979745449c4b355b71f7eabf24dd6782ed26bb787af16eebd2a38. The curated Docker snapshot is byte-identical. The canonical build report records two accepted clean cycles with the same module hash and clean source synchronization.

## Reproduction

From the repository root, the current module functions were freshly extracted with the canonical Docker toolchain. These commands are reproducible:

    python workspace_tools/reconstruction_pipeline/extract_module_assembly.py kernel_development/drivers/reconstructed/zte_tpd/zte_tpd.ko --output-dir reverse_engineering/validation/reconstructed/zte_tpd/attestation/syna_charger_lifecycle_review_20261103/candidate_assembly --function syna_tpd_charger_lifecycle_stop --function syna_tpd_register_fw_class --function syna_dev_disconnect --function syna_dev_disconnect_stock_exact --function syna_charger_notify_call --function syna_work_charger_detect_work
    python workspace_tools/reconstruction_pipeline/extract_module_assembly.py reference_modules/stock/zte_tpd.ko --output-dir reverse_engineering/validation/reconstructed/zte_tpd/attestation/syna_charger_lifecycle_review_20261103/stock_assembly --function syna_dev_disconnect
    python workspace_tools/reconstruction_pipeline/compare_function_assembly.py --stock-dir reverse_engineering/validation/reconstructed/zte_tpd/attestation/syna_charger_lifecycle_review_20261103/stock_assembly --candidate-dir reverse_engineering/validation/reconstructed/zte_tpd/attestation/syna_charger_lifecycle_review_20261103/candidate_assembly --function-pair syna_dev_disconnect=syna_dev_disconnect_stock_exact --output reverse_engineering/validation/reconstructed/zte_tpd/attestation/syna_charger_lifecycle_review_20261103/disconnect_exact_comparison.json

The kernel API contract was read from the pinned Docker source volume nubia_sm8850_kernel_src_nx809j_oout_20261030; file hashes, line ranges, and conclusions are recorded in review.json.

## Decision

No source change was made. Keep the function mapped as HARDENED_STOCK_DEVIATION / INTENTIONAL_HARDENING_DEVIATION; the retained stock body is exact, while the notifier and resource lifetime wrapper intentionally adds teardown synchronization.
