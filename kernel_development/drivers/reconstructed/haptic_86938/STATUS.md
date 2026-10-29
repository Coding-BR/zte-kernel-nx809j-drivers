# haptic_86938 status

The reconstruction is incomplete and is not a replacement module. The stock inventory has 160 mapped functions; 62 source candidates have passed their applicable function-scoped automated core gates; 21 candidate sources await gates, and 77 functions remain `NOT_STARTED`. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest function-scoped Docker core build for `prct_mode_show` is recorded in its function attestation. `ram_work_init` now has a mapped and compiled source; its isolated object matches stock, but full-module linking stops at the missing local symbol `ram_work_routine`. No candidate module has been promoted. The full-driver audit still fails alias, undefined-symbol, function-traceability, and vermagic checks.

The stock module reports vermagic `6.12.23-maybe-dirty-4k`; the shared Docker kernel source reports `6.12.23-4k`. This difference and the remaining function reconstruction prevent a whole-driver readiness claim. See [README.md](README.md) and the per-function attestations for evidence.
