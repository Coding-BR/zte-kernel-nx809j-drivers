# haptic_86938 status

The reconstruction is incomplete and is not a replacement module. The stock inventory has 160 mapped functions; 61 source candidates have passed their applicable function-scoped automated core gates; 20 candidate sources await gates, and 79 functions remain `NOT_STARTED`. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest function-scoped Docker core build for `aw8693x_get_ram_data` reproduced in two clean cycles with SHA-256 `cf2d78d1f9852e53202bf5b96e6ac5880ea25cb3c07467069618cd94f4344e94` (3,606,752 bytes). Its hash and gate reports are recorded in the function attestation; no candidate module has been promoted. The full-driver audit still fails alias, undefined-symbol, function-traceability, and vermagic checks.

The stock module reports vermagic `6.12.23-maybe-dirty-4k`; the shared Docker kernel source reports `6.12.23-4k`. This difference and the remaining function reconstruction prevent a whole-driver readiness claim. See [README.md](README.md) and the per-function attestations for evidence.
