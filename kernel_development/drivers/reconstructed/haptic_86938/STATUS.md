# haptic_86938 status

The reconstruction remains incomplete and is not a replacement module. Offline stock evidence covers all 160 functions. As of 2026-10-30, 125 current source revisions have source-hash-bound passing function-scoped core reports; 33 functions remain `NOT_STARTED` without source files. Whole-driver semantic equivalence and hardware behavior have not been established.

The latest source-bound process repaired `get_ram_num`: stock and candidate match at 115 AArch64 instructions / 460 bytes, including relocations; strict normalized Ghidra C/P-Code comparison and Joern pass; both Docker cycles produce module SHA-256 `53ced20c84cae9214caa6beffb7d20da29ef48f72162a250cd469144f0fa46fa`. The previous 116/464 result belonged to an older source revision. `ram_load` remains source-hash-attested with its documented exact-assembly fallback.

Function-scoped results do not establish whole-driver readiness. The broader module audit is incomplete, 33 functions still lack reconstructed source, hardware behavior is unverified, and no candidate module has been promoted. See [README.md](README.md) and the [get_ram_num attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_get_ram_num_refresh_20261030/README.md).

awrw_show and awrw_store were deliberately hardened on 2026-10-30 to serialize their shared buffer lifetime and prevent a zero-count underwrite. This changes stock behavior and invalidates earlier exact-source core reports for both callbacks; see the hardening report at ../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_awrw_hardening_20261029/HARDENING_REPORT.md. They are not counted as reconstructed or promoted.
