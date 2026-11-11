# RDBG per-device unbind/rebind lifetime review (2026-11-11)

## Result

Static review confirms a reference leak on repeated successful probe and an unsynchronized publication path for the SMEM state pointer and bit. The driver has no per-device remove callback. No use-after-free or runtime failure was reproduced.

The driver remains HARDENED_CANDIDATE_OFFLINE and incomplete. This review changes documentation and the function map only; it does not change C source or the candidate module.

## Bound inputs

- Stock module SHA-256: 05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12.
- Stock rdbg_probe assembly SHA-256: 363d63c568c1d02b822efac9d5ce29bd41ab172e1bb8e08c59c7bf0432f9ca5b.
- Candidate module SHA-256: 7accb38ca56d57cced2ddb9c8f829e01f80aca37a54ea53aab05ab189573d5a9.
- Candidate source files, map, and module match the canonical curated Docker snapshot. Fifteen source/control files were byte-compared.
- Docker image: nubia-sm8850-kernel-builder:latest, image ID sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390.
- Pinned kernel source commit: 3356b35306d35d5a480e3b63df1a9f065b5d9f55; inspected read-only from Docker volume nubia_sm8850_kernel_src_nx809j_oout_20261030.

## Findings

1. rdbg_driver sets probe but no remove callback. In the pinned kernel, platform unbind invokes the driver callback only when non-null; generic unbind still releases devres.
2. rdbg_probe calls non-devm qcom_smem_state_get() on each matching probe and stores the returned pointer directly into rdbg_data.out.smem_state. The pinned API increments a kref and requires a matching qcom_smem_state_put(). A successful rebind therefore replaces the only stored pointer while leaving the previous acquired reference outstanding. Module-exit cleanup puts only the currently reachable pointer once.
3. Probe writes smem_bit through the output pointer passed to qcom_smem_state_get() and then stores smem_state. rdbg_write reads both in send_interrupt_to_subsystem() without a common lock. Its write_mutex protects queue allocation, but is unlocked before the interrupt/state update. Platform unbind/rebind does not serialize that character-device path.
4. The effect is bounded statically: repeated binds can leak SMEM-state references, and concurrent probe/write can race on the published state pair. This review does not establish a use-after-free, a device crash, or observed data corruption.

## Recommended repair boundary

Add per-device lifecycle state outside the fixed rdbg_data layout, whose stride is 0x1c8 and is also advanced explicitly by inline assembly in rdbg_probe. A remove callback must prevent new opens/operations, serialize state publication with state use, drain in-flight users, and release the handle exactly once. Keep existing open file descriptors safe across unbind by making subsequent operations fail cleanly or by retaining a valid state reference until their final use. Then validate repeated bind/unbind, an open descriptor crossing unbind, and a write concurrent with reprobe in the canonical Docker build and on hardware when available.

## Validation limits

- adb devices -l showed no attached device.
- No phone test, module load, or runtime unbind/rebind was performed.
- No source changed, so no Docker rebuild was needed. Docker was used to inspect the pinned driver core and SMEM-state API.
