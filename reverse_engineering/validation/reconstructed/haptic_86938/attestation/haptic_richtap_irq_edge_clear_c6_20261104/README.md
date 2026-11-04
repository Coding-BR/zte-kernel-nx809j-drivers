# C6 startup IRQ gate and SYSINT ordering review — 2026-11-04

## Scope

Read-only review of the current C6 candidate against stock Ghidra C, preserved stock AArch64 assembly, the C6 module disassembled in the canonical Docker image, and the available Awinic product documentation. No reconstruction source or map changed.

## Findings

- Stock irq_config and the compiled C6 irq_config pass request flags 0x2002 to devm_request_threaded_irq. The stock IRQ setup and preserved decompilation bind this request to irq_handle.
- The C6 lifetime wrapper returns IRQ_HANDLED when shutdown or the Richtap arming gate is active. It does this before taking the global IRQ/stop mutex and rechecks the gate after acquiring the mutex. In both cases it skips irq_handle_stock_exact, so no SYSINT read or stock FIFO service occurs in that invocation. This is a deliberate transition-IRQ suppression introduced to avoid keeping the one-shot IRQ thread behind the long RTP startup poll.
- The RTP worker keeps the arming gate active until startup and initial FIFO setup finish. In the field_11 == 1 branch it calls irq_clear before enabling RTP AEI. In the other branch it enables RTP AEI before calling irq_clear. The latter order matches the stock Ghidra decompilation and preserved stock assembly.
- The candidate irq_clear callback reads SYSINT at register 0x02. Awinic’s public AW86938 product page says the dedicated interrupt output reports real-time FIFO status and chip error status, but the public page does not specify the precise latch/reassert behavior for this sequence.

## Assessment

A transition interrupt can be acknowledged by the threaded handler while the arming gate is set, without running the stock service path. The worker subsequently clears status and configures AEI before clearing the gate. In the non-loop branch, AEI is enabled before the SYSINT read; an event arriving in that interval may be coalesced with the clear. This is a conditional static concern, not a reproduced lost event. The same AEI/clear order exists in stock, and the available evidence does not establish the chip’s exact event-retention behavior.

No code reorder is justified from this evidence alone. Keep irq_handle as a reviewed hardening deviation and richtap_rtp_work under static validation. Closing this point needs chip-specific register semantics or a targeted on-device IRQ/status trace during the non-loop startup path. The current ADB check reports no connected devices; no candidate was loaded and no runtime claim is made.

## Evidence binding

The current candidate C6 SHA-256 is c6aec6ea8d630255ea10a7aa3db5d8f7de60e960f414818daa901028c2a6d156, identical in the repository and canonical Docker curated snapshot. Stock module SHA-256 is 05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e. The current reconstruction map SHA-256 is 3773f78f259b46ae3a0d0d06743b1bdf8e043b7c3fe60aa45b445b93affb5fa6. Detailed input hashes and the exact Docker disassembly are in irq_edge_clear_review.json and candidate_c6_irq_edge_clear_disassembly.txt.

Awinic reference: https://www.awinic.com/en/productDetail/AW86938ACSR
The canonical Docker curated snapshot was synchronized with this evidence and the updated STATUS.md. Its current file inventory and hashes are recorded in curated_snapshot_manifest_20261104.json.
