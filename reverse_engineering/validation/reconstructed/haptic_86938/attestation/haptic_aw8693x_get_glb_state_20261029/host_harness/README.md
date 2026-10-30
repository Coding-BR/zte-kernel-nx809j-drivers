# aw8693x_get_glb_state host harness

The pinned Docker image runs the wrapper harness under AddressSanitizer and UndefinedBehaviorSanitizer. It tests successful byte reads, zero, and helper failure with no buffer write; four seeded mutants change the register, transfer length, initial byte, or returned value and must be rejected.

This models the wrapper contract only and is not a device test.
