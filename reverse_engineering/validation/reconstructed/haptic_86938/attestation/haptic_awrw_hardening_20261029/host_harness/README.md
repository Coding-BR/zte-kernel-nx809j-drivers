# Hardened AWRW host harness

This harness compiles the current awrw_show source in the pinned Docker builder with ASan/UBSan. It checks the count-zero boundary, the 819/820 page boundary, differential behavior for counts 1 through 1,024, all byte values, and a concurrent writer model that replaces and frees the shared buffer under the same per-device lock used by awrw_show.

The concurrent writer is a focused lifetime model, not an execution of the ARM64 awrw_store callback. The full module is separately built twice through validate_reconstructed_drivers.py. ThreadSanitizer compiles in the image but its runtime currently exits with an unsupported memory-mapping error.

Run from the repository root:

    python reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_awrw_hardening_20261029/host_harness/run_harness.py --repo-root .

Results are written to output/harness_result.json. See ../HARDENING_REPORT.md for findings and limits.
