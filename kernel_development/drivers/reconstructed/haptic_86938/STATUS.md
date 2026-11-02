## Update 2026-11-02 — aw8693x_play_mode

The function aw8693x_play_mode (stock entry 00104798) was revalidated against
the current Docker-built module, SHA-256
d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f. Its fresh
candidate Ghidra export has executable MD5 fb463a0a82b6191a9e8d3903c5c28988.
Protocol core v8, v9 and the map-bound v10 run pass all eight automated core
gates, including assembly/relocations, Ghidra/P-Code, KCFI, Joern, input
identity and map identity. Both Docker build cycles are byte-identical.

The bounded AArch64 model matches stock and candidate for all 256 u8 inputs.
The Docker host contract passes two reproducible ASan/UBSan builds with 2,150
checks each. It detects mutations to an RTP I2C value, printk priority and
printk site code. That audit fixed a gap in the earlier harness, whose printk
shim erased the priority prefix and whose assertions checked only text
fragments. The versioned state/effect ledger now binds the stock, candidate,
model, host report and core report by hash.

The mapping remains candidate_under_static_validation and semantic equivalence
is not established. The protocol runner is non-promoting by design; all eight
automated gates pass, but promotion remains unauthorized. The callback-table,
independent-review, KMI, KUnit/Lockdep/KCSAN, LLVM IR, lock/lifetime,
sanitizer, semantic-counterexample and evidence-acceptance gates remain open.
The entire haptic_86938 driver remains incomplete. See the aw8693x_play_mode
revalidation notes at
../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/aw8693x_play_mode_20261101/REVALIDATION_NOTES_20261102.md.

## Update 2026-11-02 — aw8693x_creat_node

The current Docker candidate module is d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f. The 104-byte function body, instruction/relocation sequence, P-Code shape, KCFI, Docker reproducibility, Joern gates and final map-bound core_v7 pass. The first fresh Ghidra comparison found only a type-rendering discrepancy for the same 40-byte sysfs group object: stock emits object while candidate emits address-of; the object moved from .data+0x190 to .data+0x2a0. A scoped same-name/same-section binding fallback is now documented and independently backed by the ELF table audit; no other C syntax is normalized.

The fresh ELF audit confirms the five ordered 0644 callbacks and NULL terminator, the Docker ASan/UBSan harness passes, and the current KCFI comparison matches all ten sysfs callback type IDs. The function remains candidate_under_static_validation; raw strict normalized-C equality is false, semantic equivalence is not established, and promotion is unauthorized. Independent review and remaining KMI/semantic-counterexample evidence are still open. See attestation/haptic_aw8693x_creat_node_20261102/README.md.

## Update 2026-11-02 — I²C module registration core revalidation

haptic_86938_i2c_init (init_module@001119fc) and
haptic_86938_i2c_exit (cleanup_module@00111a64) pass the current hard
protocol core. The final report at
reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_i2c_registration_20261102/protocol_core_v6_mapbound/hard_protocol_report.json
records all eight automated gates as PASS. Docker cycles 1 and 2 produced the
same module SHA-256
d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f;
the checked-in candidate .ko now has that hash. Function-scoped assembly,
relocations, Ghidra decompilation/P-Code, KCFI and Joern gates pass. The
registration-object audit separately passes all 31 checks.

The first fresh run exposed a stale candidate Ghidra export; it was regenerated
from the reproducible Docker module and the final core run now binds the export,
map, 191 source files and 10 runner scripts by hash. The registration functions
remain candidate_under_static_validation; semantic equivalence and promotion
are not claimed. The broader callback-table gate, host harness, KMI type review,
LLVM IR diagnosis, semantic counterexample and independent review remain
outstanding. The whole haptic_86938 driver remains incomplete. See the
revalidation notes at
../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_i2c_registration_20261102/REVALIDATION_NOTES.md.

## Update 2026-11-01 — aw_remove

The `aw_remove@0010823c` callback has an exact source candidate. Its 300-byte AArch64 body, relocations, and KCFI type match stock; the host teardown harness passes three GPIO scenarios, and two Docker builds are byte-identical. At that point, `richtap_misc.left_fops` lacked both `unlocked_ioctl` and `mmap`; `mmap` has since been reconstructed as recorded below. The ioctl callback and whole-module parity/traceability checks remain open. Promotion and hardware readiness are not claimed. See [the aw_remove attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw_remove_20261101/README.md).

## Update 2026-11-01 — richtap_file_mmap

`richtap_file_mmap@0010e92c` is now implemented in the candidate and wired to `left_fops.mmap`. Protocol core v10 passes all seven required gates. The function body matches stock at 248 bytes / 62 instructions, with matching relocations and KCFI ID `0x7de14acc`; two Docker builds are byte-identical. A direct `.altinstructions` audit also caught and fixed the missing `ARM64_BTI` record at `+0x1c`; all four function-scoped ARM64 alternative records now match stock. See the [mmap attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_file_mmap_20261101/README.md).

# haptic_86938 status

The reconstruction remains incomplete and is not a replacement module. Offline stock evidence covers all 160 functions. As of 2026-10-30, 126 current source revisions have source-hash-bound passing function-scoped core reports; 32 functions remain `NOT_STARTED` without source files. Whole-driver semantic equivalence and hardware behavior have not been established.

The prior source-bound process reconstructed `aw8693x_creat_node`: stock and candidate match at 26 AArch64 instructions / 104 bytes, all relocations, and KCFI ID `0x512cf1f0`; Joern passes; two clean Docker builds produce the same module SHA-256 `cde6756b6c4f2c9e666eedd12776e845440f4248e44f389b2599e6ecd4750f0d`. The five-entry sysfs table, its callback targets and all ten callback KCFI IDs match stock; the ASan/UBSan host harness passes. `get_ram_num` and `ram_load` remain source-hash-attested with their documented Ghidra results.

Function-scoped results do not establish whole-driver readiness. The broader module audit remains incomplete: `richtap_file_unlocked_ioctl` is still missing, the curated candidate `.ko` is absent, alias and undefined-symbol parity fail, 32 functions still lacked source as of 2026-10-30, an independent review remains required, and hardware behavior is unverified. No candidate module has been promoted. See [README.md](README.md) and the [aw8693x_creat_node attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw8693x_creat_node_20261030/README.md).

awrw_show and awrw_store were deliberately hardened on 2026-10-30 to serialize their shared buffer lifetime and prevent a zero-count underwrite. This changes stock behavior and invalidates earlier exact-source core reports for both callbacks; see the hardening report at ../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_awrw_hardening_20261029/HARDENING_REPORT.md. They are not counted as reconstructed or promoted.
