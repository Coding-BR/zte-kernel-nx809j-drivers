# `get_ram_num` reconstruction

Stock target: `get_ram_num@0010b648`, 460 bytes. This is a direct-call helper used by `ram_load` and `ram_num_show`.

## Reconstructed behavior

When RAM initialization is set, the function locks the mutex at `haptic + 0x2f0`, calls operations-table slots `0x38`, `0x68`, `0xf8`, and `0x130`, converts the returned first-wave address, computes and stores the RAM count at `haptic + 0x45c`, logs both values, clears the flag callback, and unlocks. If initialization is not set, it logs the stock error and returns.

The operations-table type IDs match at every indirect callsite: `0x847a0830` at slots `0x38` and `0xf8`, `0x1d0adf6e` twice at slot `0x68`, and `0x13c2d68c` at slot `0x130`. See the [callsite comparison](kcfi_callsite_comparison.json). The stock has no unambiguous standalone function preamble: the word before this entry is the real `BL __fortify_panic` at the end of `ram_load`. The separately compiled candidate emits a function type word; it is not required for this direct-call-only function.

## Validation and remaining difference

- Two clean Docker object builds are byte-identical; the full module also links reproducibly: [build record](docker_object_builds.json) and [driver audit](../haptic_ram_load_20261029/docker/driver_audit.json).
- Strict Joern reconstruction gate passed on the final map revision: [report](joern/gate_v2/joern_gate_report.json).
- The linked candidate has 116 instructions and 464 bytes versus the stock 115 instructions and 460 bytes. Relocations match. The assembly comparison records the compiler's different error-path block placement and its two-instruction 16-bit byte-swap sequence; the stock uses a single `rev16`. See [comparison](assembly_comparison.json), [stock assembly](../../offline_static/stock_assembly/0105_get_ram_num_0010b648.asm), and [candidate assembly](../haptic_ram_load_20261029/candidate_module_assembly/0001_get_ram_num.asm).

This function remains under static validation and its map keeps `semantic_equivalence` as `NOT_ESTABLISHED`. No hardware behavior is claimed, and the candidate module was not promoted.
