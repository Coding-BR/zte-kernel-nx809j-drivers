# `ram_load` reconstruction

Stock target: `ram_load@0010b2e0`, 872 bytes, KCFI type ID `0x879dc3f4`.

## Root cause and correction

The stock work routine references `ram_load` as its firmware completion callback, but the reconstruction map had `source_file: null` and `status: NOT_STARTED`, and the target Makefile did not include the object. This caused modpost to stop at an unresolved local callback. The callback also directly calls `get_ram_num`, which was unmapped and absent from the build.

Added the callback source and Makefile entry, reconstructed the direct dependency, and mapped both stock functions. The source preserves the retry limit and delayed-work scheduling, checksum and error paths, zeroed container allocation, operations-table update, success state/length updates, and `get_ram_num` call. The related `get_ram_num` evidence is in [its attestation](../haptic_get_ram_num_20261029/README.md).

## Validation

- Two clean Docker builds produce the same object SHA-256; see [object build record](docker_object_builds.json).
- In the full linked candidate, `ram_load` matches all 218 stock instructions, 872 bytes, section, and relocations. The stock and candidate function KCFI IDs match at `0x879dc3f4`; the updater callsite uses `0xd1700c10`. See [assembly comparison](assembly_comparison.json), [linked assembly](candidate_module_assembly/0000_ram_load.asm), and [KCFI comparison](kcfi_comparison.json).
- Strict Joern reconstruction gate passed on the final map revision: [report](joern/gate_v2/joern_gate_report.json).
- The full module links reproducibly in two clean Docker rebuilds at 3,825,464 bytes with SHA-256 `95abc66ba76208a9a6aa9cc96c67c9997daf3d8113ea189e4a02f85d6b590b10`: [driver audit](docker/driver_audit.json).

The independent driver audit remains incomplete. It reports 74 stock functions still `NOT_STARTED`, a missing alias and 56 stock imports, and the stock-versus-Docker vermagic difference. The candidate module was not promoted. This evidence establishes the callback reconstruction and reproducible link, not whole-driver equivalence or hardware behavior.
