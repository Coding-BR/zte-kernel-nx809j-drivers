# Haptic `trig_store` reconstruction

Target: stock `trig_store@00106940`, 620 bytes, callback KCFI type
`0x95c41a97`.

## Findings and correction

The callback parses nine unsigned values and acts only after all nine conversions
succeed. It accepts trigger numbers 1–3, checks the one-wire and RAM-init state,
bounds positive and negative sequence values against `driver_data[0x3b4]`, writes
the selected 13-byte trigger record, and calls its matching configuration helper
under the trigger mutex. Every path returns the supplied byte count.

The first candidate was four bytes larger because 32-bit pointer-index arithmetic
compiled to a separate multiply and add. Widening the index to `size_t` reproduced
the stock `umaddl`. Source access ordering and dispatch flow were then adjusted
until the function body, all 155 instructions, and relocations matched exactly.

## Validation

The final hard protocol report in `core_v3/` records `CORE_GATES_PASS` for
assembly/relocations, candidate Ghidra P-Code, two clean Docker builds, input and
map identity, Joern scope/slice, and KCFI. Candidate module SHA-256:
`52187f4689769ce847074a10314e0e7169036c317a6b2a208ad9243be487bae9`.

This is function-level static evidence. Promotion remains unauthorized; no
hardware test or complete-driver equivalence is claimed. The broader Docker audit
still reports the partial `haptic_86938` module as `incomplete_or_failed`.
`pre_candidate/` preserves the identity, call, state, error, review, lock, and
register ledgers; its oracle is a draft and was not executed.
