# RDBG SMEM state shadow recovery (2026-11-11)

## Result

The candidate now binds the software SMEM shadow to the provider-state handle. If `rdbg_probe` obtains a different handle, it resets `gpio_out_offset` and the 32 shadow registers before publishing the new handle. `rdbg_write` updates its shadow and cursor only after `qcom_smem_state_update_bits()` succeeds. The module still returns the number of bytes already queued if notification fails, avoiding a duplicate queue write on user retry; notification may be delayed until a later successful update.

This is a declared hardening deviation from stock. Static and runtime validation are incomplete; no promotion is authorized.

## Changes

- `rdbg_reconstruction_layout.h` models the 32-word state shadow at offset `0x148`, ending at `0x1c8`, with compile-time layout assertions. The SMEM pointer is typed as `struct qcom_smem_state *` for the target's `container_of` use.
- `rdbg_probe` serializes handle lookup, identity comparison, shadow/cursor reset, pointer replacement, and old-handle release under `rdbg_smem_state_lock`.
- `rdbg_write` uses the named shadow array. On provider update error it leaves shadow/cursor unchanged and exits the notification helper.
- `reconstruction_map.json` keeps both functions marked `candidate_hardening_deviation`; the implementation is not labeled stock-equivalent.

## Evidence and validation

- Candidate module SHA-256: `aab63c927d0865e58360321046d71457c712c85d3d67af95a91998c63370fb26` (791,752 bytes).
- Two clean builds in the canonical Docker builder produced the same module bytes and the same hash.
- Kernel source commit: `3356b35306d35d5a480e3b63df1a9f065b5d9f55`; builder image: `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`.
- Pinned provider source hashes and the exact state/update/unregister excerpts are in [`kernel_provider_lifetime_excerpt.md`](kernel_provider_lifetime_excerpt.md).
- Core gates: `DOCKER_REPRODUCIBLE`, `INPUT_IDENTITY`, `MAP_IDENTITY`, `JOERN_SCOPED`, `JOERN_SLICE`, and `KCFI` passed; `ASSEMBLY_RELOCATIONS` failed. The protocol report is [`hard_protocol_report.json`](protocol_core_bootstrap_final/hard_protocol_report.json), with `core_status=CORE_GATES_FAIL` and `promotion_authorized=false`.
- Strict Ghidra comparison failed for both changed functions. `rdbg_probe`: stock/candidate body 544/688 bytes and P-Code records 434/589. `rdbg_write`: 1064/1104 bytes and 909/966 records. Both differ in normalized decompiled C and P-Code operation shape. No fallback was used. Full report: [`ghidra_semantic_comparison.json`](ghidra_semantic_comparison.json).
- The candidate's Ghidra export matches the module executable MD5 (`eb9b2bbc7db89dfee4a460e6cd2f7a23`); the stock export also matches its reference module. Identity passed, semantic equivalence did not.
- The protocol input used `candidate_under_static_validation` for the two scoped mappings; their final source-map status was restored to `candidate_hardening_deviation` afterward. [`map_validation_stage.json`](map_validation_stage.json) records the input and final map hashes. The job input profile is [`validation_job.json`](validation_job.json).
- The final curated Docker sync copied only `STATUS.md` and `reconstruction_map.json`; the verified rerun reported zero drift and no removals. Evidence: [`curated_sync_final_verified.json`](curated_sync_final_verified.json).

## Open lifetime limitation

The RDBG mutex only coordinates RDBG callers. In the pinned kernel, `qcom_smem_state_update_bits()` checks `orphan` and calls provider `ops.update_bits(priv)` without a provider-call lifetime lock. SMP2P unregister marks the state orphaned and removal proceeds independently. This leaves a static remove-vs-update lifetime window involving provider-private data. The source evidence is recorded in [`kernel_provider_lifetime_excerpt.md`](kernel_provider_lifetime_excerpt.md); the race was not reproduced dynamically.

The RDBG driver still has no per-device `.remove` callback. Provider unbind/rebind, active open files, physical device behavior, and remote firmware delivery remain unverified. The candidate is incomplete and not promoted.
