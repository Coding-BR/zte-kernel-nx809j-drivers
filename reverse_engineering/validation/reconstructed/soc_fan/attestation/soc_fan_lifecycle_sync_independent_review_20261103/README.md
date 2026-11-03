# `soc_fan` lifecycle and synchronization review — 2026-11-03

This fresh static review covers the nine lifecycle/sysfs mappings currently classified as intentional hardening deviations. It binds the repository source (`b17527a9…`), candidate module (`65ee4afb…`), stock module (`4da6fb10…`), preserved Ghidra export, current assembly comparison, and the target kernel implementation in the read-only Docker volume.

## Result

- The probe error paths, managed GPIO/IRQ lifetime, sysfs callback drain, hrtimer cancellation, regulator-reference accounting, and shared-state lock coverage are consistent with the reviewed stock control flow and current source.
- The timer callback remains instruction and relocation identical to stock at 70 instructions / 280 bytes. The current driver comparison reports 6 exact functions and 9 expected hardening deviations; KCFI reports 9/9 selected type IDs matching.
- The nine mappings remain `candidate_hardening_deviation`. This review does not call them stock-exact or claim complete behavioral equivalence.
- A fresh directed Docker audit completed two clean, reproducible builds at the same candidate SHA. Source identity, candidate/map binding, function traceability and the declared deviation review passed. The full driver remains `incomplete_or_failed` only because `undefined_symbols_match` is false for the intended managed-resource and teardown import changes; `static_verified` remains empty.
- The post-sync global inventory reports 24/24 repository/Docker candidate, source snapshot, build-input and map matches, 24 Ghidra inventories covering 1,039 functions, and zero structural findings.

## Remaining risks

If `regulator_disable` fails during removal, the enable reference remains positive and the rail may stay on; `devm_regulator_get` releases the handle with `regulator_put` and does not disable it. The module-global `chip` pointer also leaves multi-device operation unproven. The stock path can mask a regulator-enable error with a later successful PWM result. KCSAN, runtime and NX809J hardware checks remain outstanding. This was a separate Codex review pass, not a second human review.

The detailed hash-bound findings and the exact map classification are in [`review.json`](review.json).
