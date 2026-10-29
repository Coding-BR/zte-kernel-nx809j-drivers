# haptic_86938 status

The reconstruction is incomplete and is not a replacement module. The stock inventory has 160 mapped functions; forty-one source candidates have passed their applicable function-scoped automated core gates, and 119 functions remain `NOT_STARTED`. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest accumulated candidate module built reproducibly in two clean Docker cycles with SHA-256 `1063d9b97b65f7dabe6e29a4916895067676ade34ae989c96b67335e2f0eb724`. It remains in the versioned attestation package and has not been promoted to `haptic_86938.ko`.

The stock module reports vermagic `6.12.23-maybe-dirty-4k`; the shared Docker kernel source reports `6.12.23-4k`. This difference and the remaining function reconstruction prevent a whole-driver readiness claim. See [README.md](README.md) and the per-function attestations for evidence.
