# zte_ramdisk_reboot full static validation

- Generated: 2026-10-03
- Verdict: `static_verified`
- Candidate SHA-256: `1f027cf0fab9269141d722b225b04bfea688add1d28577ba1cbd03543e388892`
- Candidate size: 221584 bytes
- Function traceability: 13/13
- Fresh Docker builds: two, reproducible
- Docker image: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225`
- Hardware execution: deferred

The machine-readable audit is `independent_static_audit.json`; the Markdown
report is `independent_static_audit.md`. The audit used the public repository
stock/Ghidra evidence and the canonical Docker toolchain, and did not access a
device.
