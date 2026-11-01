## Update 2026-11-01 — aw_remove

The `aw_remove@0010823c` callback now has an exact source candidate. Its 300-byte AArch64 body, relocations, and KCFI type match stock; the host teardown harness passes three GPIO scenarios, and two Docker builds are byte-identical. The full driver remains incomplete: `richtap_misc.left_fops` still lacks reconstructed `unlocked_ioctl` and `mmap` callbacks, and module parity/traceability checks remain open. Promotion and hardware readiness are not claimed. See [the aw_remove attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw_remove_20261101/README.md).

# haptic_86938 status

The reconstruction remains incomplete and is not a replacement module. Offline stock evidence covers all 160 functions. As of 2026-10-30, 126 current source revisions have source-hash-bound passing function-scoped core reports; 32 functions remain `NOT_STARTED` without source files. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest source-bound process reconstructed `aw8693x_creat_node`: stock and candidate match at 26 AArch64 instructions / 104 bytes, all relocations, and KCFI ID `0x512cf1f0`; Joern passes; two clean Docker builds produce the same module SHA-256 `cde6756b6c4f2c9e666eedd12776e845440f4248e44f389b2599e6ecd4750f0d`. The five-entry sysfs table, its callback targets and all ten callback KCFI IDs match stock; the ASan/UBSan host harness passes. `get_ram_num` and `ram_load` remain source-hash-attested with their documented Ghidra results.

Function-scoped results do not establish whole-driver readiness. The broader module audit is incomplete, 32 functions still lack reconstructed source, an independent review remains required, hardware behavior is unverified, and no candidate module has been promoted. See [README.md](README.md) and the [aw8693x_creat_node attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw8693x_creat_node_20261030/README.md).

awrw_show and awrw_store were deliberately hardened on 2026-10-30 to serialize their shared buffer lifetime and prevent a zero-count underwrite. This changes stock behavior and invalidates earlier exact-source core reports for both callbacks; see the hardening report at ../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_awrw_hardening_20261029/HARDENING_REPORT.md. They are not counted as reconstructed or promoted.
