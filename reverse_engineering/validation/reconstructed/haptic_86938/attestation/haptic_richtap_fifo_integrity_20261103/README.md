# Richtap FIFO integrity hardening — 2026-11-03

## Finding

The stock probe allocates a 0x4000-byte pool containing sixteen 0x400-byte FIFO nodes. Each node has a 0x18-byte header, leaving a maximum 1000-byte payload. Stock `richtap_file_mmap` maps the pool to userspace with write permission. The IRQ and RTP worker paths consume the node cursor, signed size/count fields and `next` pointer without validating the fixed ring topology or bounds.

The source now validates the cursor against the trusted pool head, requires 0x400-byte alignment, checks that `next` is the sole valid ring successor, constrains node size/count and bounds total work to the 16000-byte RTP buffer. Invalid metadata causes the consumer to stop without copying through the invalid node; reset uses the trusted pool head. The worker follows the same bounds before starting or continuing RTP.

This changes stock behavior deliberately. Both affected function mappings remain `candidate_under_static_validation` with `NOT_ESTABLISHED_HARDENED_DEVIATION`; no exact semantic promotion is made. The full driver stays **INCOMPLETE**.

## Evidence phases

`microproofs/MP0_input_identity.json` through `MP6_boundary_oracle.json` are the preserved **pre-source-edit baseline**. Their source hashes and proposed contract describe the code before the hardening patch. They are not post-patch proof of implementation.

Post-patch evidence is separate:

- `host_harness/host_harness_report.json` compiles the actual helper in the pinned Docker image with `-Werror`, ASan and UBSan and exercises valid traversal, wrap, size/count boundaries and malformed pointers.
- `host_harness/bounded_model_report.json` reports 4,544,759 bounded checks over the encoded geometry and signed-size/count/copy bounds. The model does not simulate concurrent userspace writes or establish memory ordering.
- `plan_all/hard_protocol_plan.json` is `READY` for both changed functions.
- `core_all/hard_protocol_report.json` records scoped Joern, Docker reproducibility, assembly and KCFI results for both changed functions and the final source/map identity.
- `docker_curated_build_final.json` audits two clean builds from the canonical external curated snapshot.
- `curated_sync_final.json` records source-to-curated synchronization. Curated-only evidence files are preserved.
- `post_patch_validation.json` binds source, job, map, README and candidate module hashes and summarizes the gates.

## Limits

The core protocol's Joern and reproducible Docker gates pass. Assembly equality fails for both changed functions. The helper's KCFI callsite comparison passes; the worker's comparison fails because it has two additional indirect callsites, although every candidate callsite is guarded and its type is identified. The overall KCFI gate therefore fails. The separate curated audit also reproduces the module twice at the bound hash, but reports `incomplete_or_failed`: stock import parity is false (`gpio_free` missing and nine lifetime-support imports added), and whole-driver independent review is pending. The source-to-curated sync report has zero missing or mismatched source files; it preserves 100 curated-only evidence files, so the sync tool's aggregate `passed` field is false.

The helper harness and bounded model pass, but they do not prove runtime IRQ behavior, concurrent mutation of mapped payload contents, userspace producer ordering, latency, hardware operation, full-driver equivalence or whole-driver independent review. No hardware was used. Promotion is unauthorized.

## Current-candidate userspace publication review

The earlier [userspace publication review](../haptic_richtap_userspace_fifo_publication_review_20261103/README.md) was bound to candidate `37fc8692…`, before this FIFO hardening. Its open conclusion still applies, but its candidate/source hashes do not describe the current module. The current module and worker/helper disassembly were rechecked in [userspace_publication_revalidation.json](userspace_publication_revalidation.json): the search found no producer source or Android client package in the repository/Docker roots, and the changed functions contain no explicit ARM acquire/release or barrier instructions around the mapped FIFO fields. This remains an unverified publication contract; no race or runtime failure is asserted.

## Current-candidate VMA lifetime revalidation

The current candidate’s PFN-mapped FIFO page lifetime was revalidated against the pinned Docker kernel source and current candidate disassembly. See [the current VMA revalidation report](../haptic_richtap_vma_teardown_revalidation_20261103/vma_lifetime_revalidation_current_candidate.json). The older VMA report in that directory is explicitly historical and remains bound to candidate `7e0af6fc…`.
