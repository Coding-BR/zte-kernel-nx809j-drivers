# zte_touch_probe: baseline evidence and open reconstruction work

## Scope

This note records the incomplete reconstruction baseline for
`zte_touch_probe` at stock Ghidra entry `001087e4`. It is not a PASS claim and
does not promote microtask `025_zte_touch_probe`.

## Proven corrections

Ghidra calls, P-Code, and the stock AArch64 module proved that the previous
candidate diverged in two ways:

- It called `tpd_zlog_init()` from `zte_touch_probe`, while the stock function
  inlines the ZLOG initialization stores. The helper call was replaced with
  the proven inline stores, preserving the stock call graph.
- The candidate used a partial device layout. The stock allocation is
  `devm_kmalloc(pdev + 0x10, 0x1008, 0xdc0)` and stores the platform device at
  `+0xdc8`. The candidate had `0xe50` and `+0xc10`.

The following offsets are now aligned with the stock function:

| Purpose | Stock offset |
| --- | ---: |
| device allocation | `0x1008` bytes |
| platform-device pointer | `0xdc8` |
| platform-device child pointer | `0xdd0` |
| firmware-update kobject | `0xc50` |
| command mutex | `0xc60` |
| report mutex | `0xc90` |
| resume mutex | `0xcc0` |
| ZLOG reset/registration/timer range | `0xb50` through `0xbf8` |

## Current gates

| Gate | Result | Meaning |
| --- | --- | --- |
| Canonical Docker build | PASS | Two independent Linux filesystems produced the same candidate SHA-256. |
| Joern strict call graph | PASS | No unexpected mapped direct call remains. |
| KCFI type | PASS | Candidate and stock use type ID `0xc7f8c87c`. |
| KCFI symbol size | FAIL | Candidate is `4084` bytes; stock is `3712` bytes. |
| AArch64 opcode/relocation comparison | FAIL | Function body and relocations are not yet identical. |
| Ghidra normalized C/P-Code comparison | FAIL | The candidate has a different control/data-flow shape. |
| Host harness | NOT RUN | It must model allocation failure, both queued works, all proc/sysfs error branches, and teardown. |
| Android runtime/hardware | NOT RUN | Deliberately deferred by project policy. |

## Required next work

1. Use the saved candidate Ghidra export to enumerate the remaining P-Code
   differences rather than inferring fields from C formatting.
2. Reconstruct the complete `0x1008` device layout in the layout headers,
   including distinct lock class keys and every field accessed by probe.
3. Build a direct host harness for allocation failure, `proc_mkdir`, every
   `proc_create`, sysfs failure, workqueue failure, delayed-work scheduling,
   and ZLOG timer initialization.
4. Re-run canonical build, KCFI, Joern, assembly and Ghidra semantic gates.
   Promote the microtask only when every required gate is PASS and evidence
   hashes are recorded by `attest_tested_driver_microtasks.py`.

## Evidence

The hash-bound reports for this baseline are under
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next168_zte_touch_probe_baseline_v1/`.
They document both passing and failing gates so later work starts from facts,
not from a reconstructed claim.
