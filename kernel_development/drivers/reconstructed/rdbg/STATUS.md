# rdbg — lifetime-hardened offline candidate; validation incomplete

Status: `HARDENED_CANDIDATE_OFFLINE`; runtime and hardware validation remain incomplete.

- The map covers all 8 stock functions: 2 remain `PROMOTED_OFFLINE_EXACT`; `init_module`, `cleanup_module`, `rdbg_open`, `rdbg_release`, `rdbg_read`, and `rdbg_write` are `HARDENED_STOCK_DEVIATION`.
- Current candidate: SHA-256 `0a4382429d683cf40fb4027f02ab7f3988d56fc5f5bcf3de3609d442389a0580`, 784784 bytes. Two clean builds in the canonical Docker workspace produced this same hash.
- Static lifecycle fixes: unregister the platform driver before freeing shared client storage; unwind successful registration on every later init failure; free `clients` when driver registration fails; release all 16 character-device minors reserved by init.
- Reader concurrency hardening remains: a per-open mutex serializes consumer dequeues, and the consumer queue uses `write_mutex` for free-node handoff. Stock `rdbg_data` tail bytes remain untouched because stock `rdbg_write` uses the SMP2P state shadow through offset `0x1c8`.
- The generic offline audit remains `incomplete_or_failed`: the candidate adds target-exported `free_irq` and `platform_driver_unregister` imports, and the six hardened mappings lack independent second review. Traceability, target identity, and reproducible-build results are recorded in [`platform_driver_teardown_hardening_20261110`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/platform_driver_teardown_hardening_20261110/README.md).
- Remote firmware memory ordering remains unproven. No runtime module reload, failure-injection, KUnit, lockdep, KCSAN, or NX809J test was run. ADB reported no attached device; no module was loaded.

The full lifecycle batch record is [`platform_driver_teardown_hardening_20261110/README.md`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/platform_driver_teardown_hardening_20261110/README.md).
