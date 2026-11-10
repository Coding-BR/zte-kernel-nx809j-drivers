# rdbg — hardened offline candidate; validation incomplete

Status: `HARDENED_CANDIDATE_OFFLINE`; runtime and hardware validation remain incomplete.

- The map covers all 8 stock functions: 6 remain `PROMOTED_OFFLINE_EXACT`; `rdbg_open` and `rdbg_release` are `HARDENED_STOCK_DEVIATION` because they now release the per-open threaded IRQ safely.
- Current candidate: SHA-256 `caeaecef9cb59d128114bb7b3fe01726580382dd05d41407cdd68d8d753fd7db`, 782112 bytes.
- The canonical Docker validator produced the same candidate in two clean builds. AArch64/REL, target vermagic, aliases, namespaces, source identity, candidate identity, and runtime section/content checks pass. The validator reports `incomplete_or_failed` because the hardened candidate intentionally adds the exported `free_irq` import; all other undefined imports match stock. Details: [`docker_final_audit.json`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/irq_lifetime_hardening_20261110/docker_final_audit.json).
- The open failure path now calls `free_irq` before destroying initialized SMQ state and the write mutex. Release wakes readers, frees and synchronizes the IRQ, destroys queue/mutex state, then clears `device_opened`.
- Strict stock assembly comparison reports expected differences in those two functions. The generated candidate assembly and comparison are preserved in `attestation/irq_lifetime_hardening_20261110/`; this is a declared hardening deviation, not offline-exact parity.
- Remaining findings: concurrent `read()` calls can still race on consumer SMQ indices; platform-driver/module teardown hazards remain; remote firmware memory ordering is unproven. No host harness for these open/release paths or NX809J runtime test has been run.
- ADB reported no attached device during this batch. The candidate remains offline-only; no module was loaded and no phone action was performed.

The full batch record is [`irq_lifetime_hardening_20261110/README.md`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/irq_lifetime_hardening_20261110/README.md).
