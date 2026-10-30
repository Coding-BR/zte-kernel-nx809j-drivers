# haptic_86938 awrw callbacks — paired static validation

Date: 2026-10-29. Target functions: **awrw_show@0010d518** and **awrw_store@0010d620**.

## Problem found and corrected

The earlier awrw_show evidence came from a candidate module that did not contain awrw_store. The separate awrw_store Ghidra export also initially bounded the function at 816 bytes, although the stock ELF symbol and body are 856 bytes. Combining those artifacts was invalid.

I rebuilt the current candidate with the pinned Docker kernel toolchain, exported that exact module to Ghidra, corrected the awrw_store body boundary from the ELF symbol extent, and scoped both callbacks from one candidate. The paired job is in workspace_tools/reconstruction_pipeline/hard_driver_job.haptic_86938_awrw_callbacks_20261029.json.

## Result

- Core protocol: **CORE_GATES_PASS**; all eight automated gates passed.
- Docker candidate: 2e19782ab7257a05973f256beb961b75303c7d0a62adb73df5b3b7a39136e134 (5547464 bytes), reproduced identically in both clean cycles.
- Stock body sizes: awrw_show 260 bytes; awrw_store 856 bytes. Candidate Ghidra reports the same extents.
- Strict assembly/relocation comparison passed for both callbacks.
- Ghidra C/P-Code comparison passed. The narrowly documented normalized-C fallback applied only to awrw_store for the inferred pointee type of the opaque printk format pointer; awrw_show used no fallback.
- KCFI passed for both (show 0xae84bcd4; store 0x95c41a97); Joern scoped analysis/slices, input identity, and map identity passed.

## Remaining integration risk

Promotion remains unauthorized. The stock callbacks share a pointer/count/mode tuple without a common lock: awrw_store can free or replace the pointer before acquiring the mutex, while awrw_show reads the tuple without that mutex. Kernfs uses a mutex per open file, so independent opens can race. The current reconstruction preserves the stock behavior and therefore does not remove this race. A hardening patch would be a separate semantic change and needs its own review and validation.

The callback registration/table is also not reconstructed in this candidate. KUnit/Lockdep/KCSAN, a pair-level lifetime proof, and the remaining supplemental gates have not passed. See supplemental_gate_status.json and pair_scope_report.json.
