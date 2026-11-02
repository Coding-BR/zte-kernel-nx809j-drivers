# Haptic `osc_save_store` reconstruction

Target: stock `osc_save_store@0010ccd8`, 132 bytes, KCFI type `0x95c41a97`.

The candidate parses an unsigned integer with base autodetection, returns a negative `kstrtouint` error unchanged, writes the 32-bit parsed value to `driver_data - 0x10` on every successful parse (including zero), and returns the supplied byte count. The compiler stack-canary path is preserved.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight core gates pass, including map/input identity, Joern source and usage slice, two reproducible Docker builds, exact assembly/relocations, candidate Ghidra C/P-Code equivalence, and KCFI. The body matches all 33 instructions and 132 bytes. KCFI type `0x95c41a97` matches.

The two clean Docker builds used `nubia-sm8850-kernel-builder:latest` with `clang-r536225` and produced identical module SHA-256 `73b06e6d8b5811b9746d0028f7212988bd6437612a12eb2fe35618cf50969137` (3,168,512 bytes).

`pre_candidate/` records stock identity, call signature, state effects, control/error cases, review notes, lock/bus findings, and an unexecuted oracle draft. `joern_source_view/` contains the source-hash-bound analysis input.

This is function-level static evidence. Promotion remains unauthorized. No hardware behavior or complete-driver equivalence is claimed; the broader `haptic_86938` audit remains incomplete.
