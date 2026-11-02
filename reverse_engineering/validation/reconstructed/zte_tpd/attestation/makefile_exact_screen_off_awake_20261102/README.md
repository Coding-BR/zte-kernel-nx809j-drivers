# zte_tpd exact screen-off-awake build repair

## Finding

The stock Ghidra export for `tpd_set_screen_off_awake` (entry `0012ca1c`) passes `&DAT_0013c39a` to `_printk`, consistent with a constant format string. The reconstructed tree already contained `tpd_set_screen_off_awake_exact.S`, which places that string in `.rodata.str1.1`, but the active `Makefile` did not select the assembly file. Its wildcard therefore compiled `tpd_set_screen_off_awake.c`, which referenced `unk_3B5E0`, a writable 256-byte global in `.data`. That caused the two relocations to point at mutable storage and made the candidate differ from the Docker build.

## Repair

The `Makefile` now excludes the C draft and its object and links `tpd_set_screen_off_awake_exact.o`. The validator's `--promote-fresh` path now updates `reconstruction_map.json` with the promoted module hash, keeping the candidate and its attestation bound together.

## Evidence

- Two clean Docker builds are reproducible and both produce SHA-256 `7c1c0ecc84bf985a0f8105f69c33595b4247e671b99870fe0b9a6dc2207b682e` (6,291,168 bytes).
- The format-string relocations at function-relative offsets 52 and 56 both resolve to `.rodata.str1.1`; the 88-byte function is preserved.
- The Docker audit reports `static_verified`; traceability, mapping review, kernel identity, ABI/import checks, candidate section contents/layout, and map hash binding pass.
- The repository candidate and `engenharia\curated\zte_tpd` candidate have the same SHA-256. Source sync after promotion passes with no remaining differences.
- The previous 24-driver audit had 19 static-verified drivers. With `zte_tpd` repaired, the current combined count is 20/24; `ftmmod`, `haptic_86938`, `rdbg`, and `soc_fan` still need independent mapping review.
- Hardware validation was not performed. The audit retains its expected stock dependency-metadata warning.

See `repair_summary.json` and the Docker audit outputs in this directory.
