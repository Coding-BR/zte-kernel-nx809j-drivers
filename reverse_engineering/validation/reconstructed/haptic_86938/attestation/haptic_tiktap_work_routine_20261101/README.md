# TikTap worker reconstruction status

Function: `tiktap_work_routine` at stock entry `00108c68` (1,060 bytes). This remains a static candidate; this document does not claim promotion or runtime equivalence.

## Defects found and corrected

1. **Stop-byte preservation.** The startup stop branch now unlocks directly. The stock path does not rewrite the byte there; the earlier candidate incorrectly routed through cleanup and changed a value such as `0x03` to `0x01`. Timeout and processing cleanup still set `tiktap_stop` to 1.
2. **Extra delay after sending a FIFO node.** After `set_rtp_data`, the worker now samples time immediately. The 1 ms delay remains only on the wait path, matching the stock branch layout.

## Static evidence

The Docker core protocol `protocol_core_v14` reports `CORE_GATES_PASS`. Exact AArch64 function assembly (265 instructions, 1,060 bytes) and relocations match stock. Candidate Ghidra normalized C and P-Code match; the KCFI entry and all six indirect callback sites pass. Joern scoped/slice checks and the two-cycle Docker reproducibility gate pass. Candidate module SHA-256: `30297afdbf492e5e566e71318ba1075d091dc2521cb18d985ef79586bad6ff80`. Candidate Ghidra function entry: `00109bc8`.

See `protocol_core_v14/hard_protocol_report.json`, its assembly/Ghidra/KCFI/Joern subreports, `SEMANTIC_REVIEW.json`, and `../tiktap_ghidra_candidate_v1/export_provenance.json`.

## Remaining blockers

The protocol does not authorize promotion. Required evidence gates still outstanding are `BOUNDED_MODEL`, `CALLBACK_TABLE`, `HOST_HARNESS`, `INDEPENDENT_REVIEW`, `KMI_TYPES`, `KUNIT_LOCKDEP_KCSAN`, `LLVM_IR_DIAGNOSIS`, `LOCK_LIFETIME`, `SANITIZERS`, `SEMANTIC_COUNTEREXAMPLE`, and `STATE_EFFECT_LEDGER`. In particular, shared QoS ownership and teardown/queue ordering need independent lifetime analysis.

The separate full-driver audit in `protocol_core_v14/docker/driver_audit.md` still reports `haptic_86938` as incomplete: the published reconstructed `.ko` is missing and alias/undefined-symbol parity checks fail. This function-level core pass does not repair or certify whole-module parity. Hardware validation was not run.
