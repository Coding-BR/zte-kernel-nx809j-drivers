# haptic_86938 status

The reconstruction is incomplete and is not a replacement module. The stock inventory has 160 mapped functions; thirty-eight source candidates have passed their applicable function-scoped automated core gates, and 122 functions remain `NOT_STARTED`. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest accumulated candidate module built reproducibly in two clean Docker cycles with SHA-256 `def0d87c62c1f87194c8338063eb2b19c07507def9f67c85dcb86a13e192f785`. It remains in the versioned attestation package and has not been promoted to `haptic_86938.ko`.

The stock module reports vermagic `6.12.23-maybe-dirty-4k`; the shared Docker kernel source reports `6.12.23-4k`. This difference and the remaining function reconstruction prevent a whole-driver readiness claim. See [README.md](README.md) and the per-function attestations for evidence.
