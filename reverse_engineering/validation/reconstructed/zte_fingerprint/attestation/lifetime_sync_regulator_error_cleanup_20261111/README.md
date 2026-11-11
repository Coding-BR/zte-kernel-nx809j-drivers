# `gf_cleanup` regulator error-path audit

This batch fixes one cleanup discrepancy in `gf_cleanup`. If
`regulator_is_enabled()` returns a negative error, the old candidate logged the
error and skipped `regulator_disable()`. Stock takes the zero-versus-nonzero
branch and attempts the disable for any nonzero result. The target regulator
core also requires `regulator_enable()` calls to be balanced before
`regulator_put()`; the devm release callback calls `regulator_put()` when the
resource group is released.

The stock AArch64 body confirms this directly: `CBNZ w0` after
`regulator_is_enabled` branches to the `regulator_disable` call.

The candidate now attempts `regulator_disable()` on every nonzero query result,
records a negative query result, and logs a disable failure instead of always
reporting success. The zero result still skips the disable.

## Verification

- Canonical Docker source identity matched the pinned NX809J kernel.
- Two clean AArch64 module builds passed and produced the same SHA-256:
  `ed77cbf07e7cdf104450003a9f8bc0c1abacc0b703f591379c4d3feb396c590b`.
- The fresh module was not promoted. The curated `.ko` remains the older
  `e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21`.
- The full static validator remains `incomplete_or_failed`: candidate content
  and section layout, strict undefined-symbol parity, and 11 independent map
  reviews remain unresolved.
- No host harness or smartphone test was run for this batch.

See [audit.json](audit.json), [validator_verified.json](validator_verified.json), and
[validator_verified.md](validator_verified.md) for hash-bound evidence and full gate results.
