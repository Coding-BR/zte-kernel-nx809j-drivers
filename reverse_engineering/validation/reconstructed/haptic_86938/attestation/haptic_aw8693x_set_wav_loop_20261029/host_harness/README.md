# aw8693x_set_wav_loop host harness

Run run_harness.py with --repo-root pointing to the repository root. The pinned Docker image builds the candidate with AddressSanitizer and UndefinedBehaviorSanitizer.

The baseline checks register selection, bit-0 branch, low-byte truncation, masks 0xffffff0f and 0xfffffff0, and shift-by-four behavior across boundary inputs. Five seeded mutants alter the register, even/odd mask, shift, or branch predicate and must be rejected.

This models the wrapper contract only. It does not test kernel execution or hardware.