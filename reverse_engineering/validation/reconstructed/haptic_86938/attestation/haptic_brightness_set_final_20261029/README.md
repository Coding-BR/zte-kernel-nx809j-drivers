# brightness_set reconstruction

- Stock entry: `0x0010960c`; function body: 164 bytes / 41 AArch64 instructions.
- KCFI identifies the LED callback signature `void(struct led_classdev *, enum led_brightness)`: stock and candidate type ID `0xb35420b3`.
- The callback logs entry, checks the initialization flag at `cdev - 0xa2`, and logs the stock error when clear. Otherwise it locks the mutex at `cdev + 0x248`, stores the brightness at `cdev - 0x50` and `cdev - 0x68`, sets the flag at `cdev - 0x8d`, unlocks, and queues the work on CPU `0x20` using the stock workqueue and work offsets.
- All eight automated core gates passed, including strict assembly and relocation equality, normalized Ghidra C and P-code, KCFI, Joern, input/map identity, and reproducible Docker builds (`hard_protocol_report.json`). Both Docker builds produced SHA-256 `80ca4a83bcce39fb6ab5e05a2244718f1e5425524fe8ba4576ab2e7cf02934bb`.
- This is one function-level candidate. Promotion remains unauthorized; the reconstruction map remains `candidate_under_static_validation` and `semantic_equivalence: NOT_ESTABLISHED`. The module-wide audit still reports 55 unmapped stock functions and unresolved ABI/module metadata mismatches. No full-driver or hardware equivalence is claimed.

Ghidra emitted non-fatal DWARF import warnings for this module, then completed binary analysis and exported all 107 functions. The full and function-scoped candidate exports, job, and hard-protocol evidence are preserved.
