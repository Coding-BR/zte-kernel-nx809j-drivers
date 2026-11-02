# aw8693x_set_wav_seq host harness

Run run_harness.py with --repo-root pointing to the repository root. The pinned Docker image builds the candidate with AddressSanitizer and UndefinedBehaviorSanitizer.

The baseline checks single-call behavior, low-byte register truncation for index + 10, payload byte, and length 1 across normal and boundary inputs. Four seeded mutants alter the offset, payload, or transfer length and must be rejected.

This models the wrapper contract only. It does not test kernel execution or hardware.
