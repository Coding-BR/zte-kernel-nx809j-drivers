# `richtap_rtp_work` host harness

`run_host_harness.py` compiles the reconstruction in the pinned NX809J Docker image with GCC, AddressSanitizer, and UndefinedBehaviorSanitizer. The host-only branch initializes the observed work-item offsets and models the AArch64 partial-copy sequence in C; the kernel branch remains separately checked by the pinned AArch64 build and exact instruction/relocation comparison.

The six cases cover FIFO drain across two ready nodes, partial copy and cursor retention, the empty sentinel, start failure, the invalid-state retry limit, and both refill-loop exit paths. Callback ordering and key state mutations are asserted in the harness. `host_harness_report.json` records source and harness hashes, compiler flags, Docker image, output, and result.

This harness does not establish concurrent FIFO lifetime safety or hardware timing. Those remain separate review gates.
