# zte_misc full static validation

- Generated: 2026-10-03
- Verdict: `static_verified`
- Candidate SHA-256: `dc73dc76eeff233834c2f1e636eedb4f8f3181ee9f0c7afddbf80dcbaa4d28ba`
- Candidate size: 252448 bytes
- Function traceability: 14/14
- Fresh Docker builds: two, reproducible
- Docker image: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225`
- Hardware execution: deferred

The machine-readable audit is `independent_static_audit.json`; the Markdown
report is `independent_static_audit.md`. The audit used the public repository
stock/Ghidra evidence and the canonical Docker toolchain, and did not access a
device. The exact `zte_misc_probe` evidence remains in the preceding
`next085_zte_misc_probe_exact_v1` attestation.
