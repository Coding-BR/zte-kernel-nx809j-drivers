# Haptic `duration_aw_store` reconstruction

Target: stock `duration_aw_store@0010d9fc`, 136 bytes, KCFI type `0x95c41a97`.

The candidate follows the stock behavior: parse an unsigned integer with base autodetection, return a negative parser error unchanged, update the 32-bit field at `driver_data - 0x54` only for nonzero values, and return the input byte count on success. The compiler stack-canary path is preserved.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight core gates pass, including map/input identity, Joern source and usage slice, two reproducible Docker builds, exact assembly/relocations, candidate Ghidra C/P-Code equivalence, and KCFI. The body matches all 34 instructions and 136 bytes. KCFI type `0x95c41a97` matches.

The two clean Docker builds used `nubia-sm8850-kernel-builder:latest` with `clang-r536225` and produced identical module SHA-256 `14e729fdadd0c777ce41ad33b9aa9ff6757f7e938b0c4ee464a920be577070b5` (3,229,752 bytes).

`pre_candidate/` records source identity, call signature, state effects, control/error cases, review notes, lock/bus findings, and an unexecuted oracle draft. `joern_source_view/` contains the source-hash-bound analysis input.

This is function-level static evidence. Promotion remains unauthorized. No hardware behavior or complete-driver equivalence is claimed; the broader `haptic_86938` audit remains incomplete.
