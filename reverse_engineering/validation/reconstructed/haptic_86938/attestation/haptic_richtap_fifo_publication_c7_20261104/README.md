# Shared Richtap FIFO publication review — candidate C7

**Review date:** 2026-11-04  
**Review type:** static candidate revalidation against stock code, HAL disassembly, and the pinned NX809J kernel  
**Candidate SHA-256:** `a2ec3ce4d51e1878e199017bda6cb01623589f54dc3c074f6b22a0586fd3ad0b`  
**Map SHA-256:** `41a7bdcaa16dea5f62a50dab9967e5fc60f9a4625ab65a4232a5bba7bb1a7002`

## Result

The C7 candidate still does not establish a complete ownership protocol for the shared FIFO between the kernel and the vendor HAL. C7 has kernel acquire loads and release stores in both FIFO functions, but the hash-bound HAL uses ordinary loads and stores for both ownership transfers. The candidate's kernel IRQ body also retains two ordinary state loads from the stock-exact implementation. The IRQ wrapper and RTP worker use the same kernel mutex around their cursor operations; the HAL does not participate in that mutex.

The FIFO pages are mapped as Normal cacheable shared RAM. This resolves the cacheability question, but it does not supply memory ordering. Linux documents acquire/release as one-way ordering operations and says that a CPU-side barrier alone does not force another CPU to observe the first CPU's accesses in order without a matching barrier. Arm permits Normal-memory accesses to be observed out of program order. The exact HAL and C7 instruction evidence therefore leaves both cross-boundary ownership edges unproven. This is an unresolved static protocol gate, not evidence that corruption occurred. See the [Linux memory-barrier documentation](https://docs.kernel.org/core-api/wrappers/memory-barriers.html) and Arm's [Armv8-A memory model guide](https://developer.arm.com/-/media/Arm%20Developer%20Community/PDF/Learn%20the%20Architecture/Armv8-A%20memory%20model%20guide.pdf?revision=58b1dd0a-3800-4218-b21a-f95a0332034c).

## Candidate C7 inspection

The canonical Docker image `nubia-sm8850-kernel-builder:nx809j-repro` (LLVM `llvm-objdump` 18.1.3) inspected the read-only curated C7 module. Its module hash and map hash matched the repository. Complete disassembly for `irq_handle`, `irq_handle_stock_exact`, `richtap_update_fifo_data`, and `richtap_rtp_work` is preserved in `candidate_c7_fifo_functions_objdump.txt`.

The C7 instructions are:

- `richtap_update_fifo_data`: `LDARB` of node state at `0x830c`; after consuming a node, clears `data_size` at `0x83c4`, then returns state with `STLRB` at `0x83cc`.
- `richtap_rtp_work`: reads node state with `LDARB` at `0x858c` and `0x8780`; after consuming a node, clears `data_size` at `0x8644`, then returns state with `STLRB` at `0x864c`.
- The stock-exact `irq_handle_stock_exact` body still tests node state with ordinary `LDRB` instructions at `0xaff4` and `0xb204`. These are control-flow checks; if the `U` check passes, it calls `richtap_update_fifo_data`, which checks state again before copying. These ordinary loads are retained stock behavior.

## HAL and mapping evidence

The NX809J vendor HAL `/vendor/lib64/libaacvibrator.so` was previously pulled read-only and hash-bound to SHA-256 `8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61`. Its writer `write_data_to_buffer` accesses FIFO state with ordinary `LDRB` at `0x1c208`, writes payload and length with ordinary stores, and publishes ready state `U` using ordinary `STRB` at `0x1c22c`. When reusing a node, it observes the kernel's free state through the same ordinary state load; there is no HAL acquire. The prior user-authorized advanced-envelope probe captured 1,077 calls to this writer while the phone still used the OEM stock module. That demonstrated a live producer path, not candidate behavior or ordering correctness.

The stock `richtap_rtp_work`, `richtap_update_fifo_data`, and `irq_handle` baselines are preserved as Ghidra decompilation and AArch64 assembly under `../../offline_static/`. The candidate worker/IRQ mutex and FIFO guards are declared hardening deviations. Stock consumer functions use ordinary state accesses, while C7 adds acquire/release operations only on the kernel side.

The stock mmap path and pinned kernel page-protection sources establish a shared `PAGE_SHARED` / `MT_NORMAL` mapping (Normal, cacheable RAM). Cache coherency does not create a release/acquire handshake. See the [hash-bound FIFO memory-attribute review](../haptic_richtap_fifo_memory_attributes_20261103/README.md), [HAL writer ordering review](../haptic_richtap_hal_fifo_writer_order_20261103/README.md), and [device producer revalidation](../haptic_richtap_device_hal_producer_revalidation_20261103/README.md).

## Disposition and next evidence

No kernel-only acquire or release change can establish the missing producer-side operation. Changing this protocol safely requires the HAL to publish and consume node ownership with matching ordering, a documented ABI contract that guarantees it, or a controlled end-to-end protocol test with evidence that proves the intended handoff. Do not promote either FIFO function based on the kernel instructions alone.

`richtap_rtp_work` and `richtap_update_fifo_data` remain `candidate_under_static_validation`, with `NOT_ESTABLISHED_HARDENED_DEVIATION` and independent review pending. No source or map status changed, and no new build was needed. The current ADB listing has no connected device; the candidate has not been installed. The prior live producer capture ran against the OEM stock module and did not test C7.

See `report.json` for file hashes, disassembly addresses, and exact evidence paths.
