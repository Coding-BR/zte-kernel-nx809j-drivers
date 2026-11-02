# aw8693x_vbat_mode_config host harness

Run python run_harness.py --repo-root <repository-root> from this directory. The pinned Docker image builds the candidate with AddressSanitizer and UndefinedBehaviorSanitizer.

The harness checks calls to i2c_w_bits for flags 0, 1, 2, and 255, including register 0x4c, mask 0xffffffbf, and value 0x40 only for flag 1. Five seeded mutants alter the register, mask, equality predicate, or shift and must be rejected.

This models the wrapper contract only. It does not test kernel execution or hardware.