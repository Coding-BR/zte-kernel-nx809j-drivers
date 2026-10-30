# aw8693x_set_gain host harness

The harness runs in the pinned Docker image with AddressSanitizer and UndefinedBehaviorSanitizer. It checks gain values 0, 1, 127, and 255, verifying one write to register 7 with exactly one payload byte and one helper call. Four seeded mutants change the register, length, or byte value and must be rejected.

This models the wrapper call contract only; it does not test kernel or device behavior.
