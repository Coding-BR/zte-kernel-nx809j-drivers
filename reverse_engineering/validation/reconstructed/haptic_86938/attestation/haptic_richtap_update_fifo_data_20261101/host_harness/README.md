# Richtap FIFO host harness

run_host_harness.py compiles the reconstructed callback with GCC inside the pinned NX809J Docker image using ASan and UBSan. On non-AArch64 hosts, the candidate selects a C fallback for its bounds trap and signed offset; the kernel AArch64 path remains covered separately by the pinned Docker build and exact stock assembly comparison.

The harness checks partial copies, draining into a second FIFO node, the final valid payload offset (1000), empty FIFO behavior, invalid-state retries/logging, and the offset-1001 trap. host_harness_report.json records the compiler flags, source hash, output, and result.
