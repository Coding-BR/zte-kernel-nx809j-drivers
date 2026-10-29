# haptic_86938 status

The reconstruction is incomplete and is not a replacement module. The stock inventory has 160 mapped functions; 62 source candidates have passed their applicable function-scoped automated core gates; 24 candidate sources await gates, and 74 functions remain `NOT_STARTED`. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest function-scoped Docker core build for `prct_mode_show` is recorded in its function attestation. `ram_work_init` and `ram_work_routine` have stock-matching isolated objects. The previously missing `ram_load` callback and its direct dependency `get_ram_num` now have mapped sources; two clean Docker builds link the full candidate module reproducibly. `ram_load` matches stock instructions, size, relocations, and KCFI. `get_ram_num` remains under static validation with documented control-flow-layout and byte-swap instruction differences. No candidate module has been promoted. The full-driver audit remains incomplete: 74 functions are unmapped, and alias, undefined-symbol, and vermagic parity checks fail.

The stock module reports vermagic `6.12.23-maybe-dirty-4k`; the shared Docker kernel source reports `6.12.23-4k`. This difference and the remaining function reconstruction prevent a whole-driver readiness claim. See [README.md](README.md) and the per-function attestations for evidence.
