# aw8693x_set_bst_vol host harness

Run run_harness.py with --repo-root pointing to the repository root. The pinned Docker image builds the candidate with AddressSanitizer and UndefinedBehaviorSanitizer.

The baseline checks lower and upper clamping, register 6, mask 0xffffffe0, and single-call behavior across values 0, 4, 5, 6, 24, 25, 26, and 255. Six seeded mutants alter clamp bounds, register, or mask and must be rejected.

This models the wrapper contract only. It does not test kernel execution or hardware.
