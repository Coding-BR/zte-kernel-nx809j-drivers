# zte_fingerprint full static validation

- Generated: 2026-10-03
- Verdict: `static_verified`
- Candidate SHA-256: `8fbc779e8238738398d80e24902c88fbdbd9b1552c935f4d3f010f029ac34247`
- Candidate size: 393544 bytes
- Function traceability: 30/30
- Fresh Docker builds: two, reproducible
- Docker image: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225`
- Hardware execution: deferred

The machine-readable audit is `independent_static_audit.json`; the Markdown
report is `independent_static_audit.md`. The audit used the public repository
stock/Ghidra evidence and the canonical Docker toolchain, and did not access a
device.
