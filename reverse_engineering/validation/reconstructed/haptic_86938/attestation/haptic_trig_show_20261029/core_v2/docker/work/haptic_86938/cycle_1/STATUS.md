# haptic_86938 status

The reconstruction is incomplete and is not a replacement module. The stock inventory has 160 mapped functions; thirty source candidates have passed all eight function-scoped core gates, and 130 functions remain `NOT_STARTED`. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest accumulated candidate module built reproducibly in two clean Docker cycles with SHA-256 `654744ca3a13538772fd5176d2238de93f737e09cac33889c669f6c50d190220`. It remains in the versioned attestation package and has not been promoted to `haptic_86938.ko`.

The stock module reports vermagic `6.12.23-maybe-dirty-4k`; the shared Docker kernel source reports `6.12.23-4k`. This difference and the remaining function reconstruction prevent a whole-driver readiness claim. See [README.md](README.md) and the per-function attestations for evidence.
