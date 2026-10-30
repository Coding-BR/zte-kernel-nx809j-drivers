# AWRW callback hardening

Date: 2026-10-30  
Status: hardened candidate builds reproducibly; not an exact reconstruction or promoted module.

## Findings

- awrw_show had a conditional one-byte underwrite. With read mode, non-NULL data, and count == 0, it called snprintf(buf - 1, ...). The ASan probe reproduced this. The stock writer rejects zero counts, so the state is not reachable through that validated writer input; the show callback now safely returns 0 without writing.
- awrw_show and awrw_store shared a heap buffer without cross-open serialization. The pinned kernfs implementation gives each open file its own mutex. The old awrw_store freed/replaced the pointer before acquiring its per-device mutex, so the kernfs mutex did not prevent a concurrent show from dereferencing freed memory.

## Changes

Both callbacks now hold the existing per-device mutex at private_data + 0x248 while using or replacing the shared pointer/count/mode. awrw_store allocates the replacement before changing state; allocation failure returns -ENOMEM and leaves the old buffer installed. This intentionally changes stock behavior and invalidates the earlier exact-source reports for these two callbacks. The reconstruction map marks them as candidate_hardening_deviation; neither counts as reconstructed.

## Validation

- Pinned Docker builder, Clang clang-r536225: two clean module builds passed and were byte-identical. Module SHA-256: 5439b5a85d4791e82637f9f813c6b7a4b99ee699dfe0c7c570518de166ad8596.
- Host differential harness: two identical runs, 2,051 differential/error cases, all 256 byte values, counts 1 through 1,024.
- ASan/UBSan: zero-count probe returned 0 and left the buffer untouched; 10,000 concurrent writer replacements and 41870 show calls passed; the count-820 boundary case passed.
- ThreadSanitizer could compile, but its runtime is unsupported in this Docker environment (unexpected memory mapping). The stress test models the store replacement/free critical section using the same lock; it does not execute the ARM64 awrw_store callback.
- Whole-driver audit remains incomplete_or_failed: the current reconstructed module is not promoted, and ELF import, alias, vermagic, and function-traceability parity are incomplete. No hardware or target-kernel KASAN/KCSAN validation was run.

See docker/driver_audit.json and host_harness/output/harness_result.json for machine-readable results.
