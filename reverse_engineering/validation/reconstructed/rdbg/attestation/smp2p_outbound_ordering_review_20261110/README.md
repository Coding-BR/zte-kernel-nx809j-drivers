# `rdbg` outbound SMP2P ordering review — 2026-11-10

## Result

The AP-side outbound queue publication path statically orders the shared queue writes before its SMP2P notification. No missing write-before-kick barrier was found in this path.

## Evidence

Stock Ghidra and AArch64 assembly show `rdbg_write` publishing the sent-queue index and then calling `qcom_smem_state_update_bits()`. The current candidate does the same at the source level; its fresh assembly also retains the `qcom_smem_state_update_bits` relocation. Whole-function stock comparison is expected to fail because of the declared locking/context hardening: stock is 1068 bytes / 267 instructions, candidate is 1060 bytes / 265 instructions; the relocation check passes.

In the pinned kernel, `qcom_smem_state_update_bits()` dispatches to `smp2p_update_bits()`. That provider writes the SMP2P state and calls `qcom_smp2p_kick()` when the value changes. `qcom_smp2p_kick()` executes `wmb()` immediately before the mailbox or regmap doorbell, with a source comment stating that updated data must be written before the kick. The reviewed `rdbg_write` path updates the queue before invoking that API.

## Limits

This evidence establishes the kernel-side outbound ordering path only. It does not establish remote firmware cache/coherency behavior, the remote consumer's ordering contract, inbound queue ordering, or runtime behavior on the NX809J. ADB was empty, and no phone test was run.

## Evidence files and identities

- Stock Ghidra decompilation: `../../offline_static/ghidra_stock/rdbg.ko/decompiled/0002_00100a9c_rdbg_write.c`.
- Stock assembly: `../../offline_static/stock_assembly/0002_rdbg_write_00100a9c.asm`.
- Fresh current-candidate assembly and comparison: `candidate_assembly/` and `assembly_comparison.json`.
- Pinned provider excerpt: `kernel_smp2p_order_excerpt.txt`.
- Pinned kernel `smp2p.c` SHA-256: `372f7eca2129e779693843e032facbb62b245c526446414d19cbb4ee3cb3f465`.
- Pinned kernel `smem_state.c` SHA-256: `39360f4a65caf991621d7c19438b500cb0bd807d617491bd95fbda9cfb0b3265`.
- Pinned kernel `smem_state.h` SHA-256: `3579033bbf3fa5efb3e7368a37177108278c2f3b390ac2f5a0b59569d76299e1`.
- Current candidate module SHA-256: `7accb38ca56d57cced2ddb9c8f829e01f80aca37a54ea53aab05ab189573d5a9`.

