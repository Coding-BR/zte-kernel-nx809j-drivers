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

The reconstruction remains incomplete and is not a verified replacement module. The current map contains 160 stock functions, has no unmapped stock entries, and each mapping has a source file. Of these, 158 remain `candidate_under_static_validation`; `awrw_show` and `awrw_store` are `candidate_hardening_deviation` because their deliberate safety changes differ from stock. Whole-driver semantic equivalence and hardware behavior are not established.

On 2026-11-02, the versioned source tree was synchronized into `engenharia/curated/haptic_86938`: 194 files. The initial tree manifest was `611ffda4facdab3c7b7a5637dfc8ca19eff1b710c8487decbccc6e84c181d45f`; after adding the candidate hash to the map and refreshing this status, the final matching source/curated manifest is recorded in the current snapshot attestation. Two clean Docker builds produced identical module SHA-256 `d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f`, now also bound in the reconstruction map. ELF runtime content/layout, modinfo, aliases, undefined symbols, target identity, vermagic and candidate-hash binding pass. The full audit remains `incomplete_or_failed` because the 160 mappings have not passed independent review; it does not mark the driver `static_verified`.

The first current-module Ghidra export had 176 entries, including 13 truncated function bodies and 16 spurious interior entries. The candidate ELF symbol sizes were used to repair those extents; the final export now has 160/160 exact name-and-size matches. A second P-Code error in `ram_load@00105cb4` was traced to Ghidra treating `__fortify_panic` as returning. The pinned kernel header declares it `__noreturn`; applying that property removed the decompiler error, and all 160 final functions decompile. Before/after audits and the repaired export are preserved in `attestation/haptic_current_docker_snapshot_20261102/`.

`get_ram_num@00106020` was rerun against the Docker curated source, repaired candidate export and candidate-bound map. All automated core gates pass; KCFI is correctly `NOT_REQUIRED`. Report: `attestation/haptic_current_docker_snapshot_20261102/core_snapshot_final_20261102/hard_protocol_report.json`. The function remains `candidate_under_static_validation`; bounded model, host harness, semantic-counterexample, state/effect, sanitizer and independent-review evidence remain open.

The broader module audit still has open callback, KMI, lifetime/concurrency, kernel sanitizer and hardware work. The older claim that 32 functions lacked sources and that the Docker curated `.ko` was absent is superseded by the current map and snapshot audit above. See [README.md](README.md), the [Docker snapshot attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_current_docker_snapshot_20261102/README.md), and the [aw8693x_creat_node attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw8693x_creat_node_20261102/README.md).
