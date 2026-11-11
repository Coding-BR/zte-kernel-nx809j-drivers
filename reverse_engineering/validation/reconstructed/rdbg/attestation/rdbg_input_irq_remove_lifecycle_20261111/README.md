# RDBG input IRQ and open-file lifecycle batch

**Result:** reproducible source build and strict Joern gate passed; candidate promotion remains blocked.

## Change

This batch handles the input IRQ and open-file lifetime across per-device unbind/rebind:

- `open` checks the minor before indexing device arrays, rejects offline or duplicate opens, and uses the IRQ snapshot captured for that file.
- `remove` for the matching input node marks the IRQ offline, invalidates the active file's IRQ ownership, wakes all blocked readers, and synchronizes IRQ teardown with `free_irq`.
- `read` returns `-ENODEV` when removal has taken the input side offline.
- `release` and `remove` share a lifecycle mutex, so release cannot double-free an IRQ while remove is tearing it down. Queue and mutex state remains until the open file is released.

## Evidence

- Canonical Docker rebuild: both clean builds match at SHA-256 `ea8df043f38c9eaca65d86907099ead0f94054f59b9fda6c1cb16aaf3047b406`, size 880,912 bytes. See `docker_validation.json` and the canonical work directory recorded there.
- Source sync: seven changed source/header files were copied to the Docker curated snapshot; no stale curated source file was removed. See `source_sync_dryrun.json` and `source_sync_applied.json`.
- Status documentation sync: one file copied to the Docker curated snapshot and zero stale files removed. See `status_sync_dryrun.json`, `status_sync_applied.json`, and `status_sync_verified.json`.
- Strict Joern source gate: PASS, zero parser problems, no blockers. See `joern_gate/joern_gate_report.json` and `joern_gate/input_manifest.json`.
- Mapped KCFI comparison: PASS for all eight stock-mapped functions. See `kcfi_comparison_mapped.json`.
- Assembly comparison: 8 functions checked; `on_interrupt_from` is exact, and 7 functions differ in instruction body, relocation set, and/or size under declared hardening. This is not an assembly-equivalence pass. See `assembly_comparison.json` and `candidate_assembly/manifest.json`.

## Promotion status

The repo and Docker curated `rdbg.ko` remain the last promoted module at SHA-256 `30a548c904a8cb8e6ea53966c427a9276a4727b8958017cf9e86a854342d23a5` (797,936 bytes). The fresh source build is `ea8df043f38c9eaca65d86907099ead0f94054f59b9fda6c1cb16aaf3047b406` (880,912 bytes), so the candidate runtime bytes and section layout do not match the curated module.

The full validator reports `incomplete_or_failed`. Strict import parity remains unresolved; the unexpected imports are `__of_parse_phandle_with_args`, `__stack_chk_fail`, `complete_all`, `device_link_add`, `free_irq`, `of_find_device_by_node`, `of_get_parent`, `of_property_match_string`, `platform_driver_unregister`, `put_device`, and `qcom_smem_state_put`. Independent review for seven existing hardening deviations is also pending. Consequently, the reconstruction map and curated module were not updated or promoted. See `docker_validation.md` and `docker_validation.json`.

The broad KCFI report `kcfi_comparison.json` included candidate-only functions and is not the mapped gate result; `kcfi_comparison_mapped.json` is the correctly scoped 8-function comparison.

No phone test, module load, unbind/rebind exercise, or hardware validation was performed. This batch is offline static evidence and does not establish complete reconstruction or runtime correctness.
