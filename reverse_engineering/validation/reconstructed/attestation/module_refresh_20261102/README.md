# Reproducible candidate refresh — five NX809J drivers (2026-11-02)

The all-driver baseline audit found five candidate modules with stale source-file path strings in allocated read-only data. For each, `/zte_tpd/<file>` was embedded in the old candidate, while current Docker builds embed `/<driver>/<file>`. Their machine-code sections were unchanged; relocation records shifted to the new string offsets. Each module rebuilt identically in two isolated Docker cycles. The fresh output replaced the repository candidate, and `candidate_sha256` was added or updated in its reconstruction map.

The five-driver repository audit and Docker curated audit both report `static_verified` for all five, with no errors or warnings. The Docker snapshot source trees, maps, and binaries were synchronized and rebuilt separately. Per-driver sync manifests are versioned beside these reports.

See `repository_promotion_audit_20261102.json` and `docker_curated_audit_20261102.json` for build, ELF, vermagic, aliases, namespaces, symbol parity, map binding, and traceability evidence. These results cover offline static gates; they do not claim hardware validation or complete semantic equivalence.
