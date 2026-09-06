# tpd_sysfs_fwimage_store offline attestation

This package records the complete offline reconstruction evidence for the ZTE NX809J zte_tpd function at stock entry 0x0010dff0.

## Gates

- Ghidra decompilation and P-Code were retained as the analysis baseline.
- The candidate was built twice by the canonical Docker pipeline with clang-r536225.
- The stock and candidate AArch64 bodies both contain 56 instructions and 224 bytes; the comparator passed section, size, call-target and normalized relocation checks.
- KCFI type 0x30c400c0 and symbol size match the stock function.
- Joern --strict passed using the documented parser-compatible source view. That view is analysis-only and is not compiled into the kernel module.
- The host contract harness was independently compiled twice with AddressSanitizer and UndefinedBehaviorSanitizer. Both binaries have the same SHA-256 and both pass five cases.

## Recovered contract

The function rejects an absent firmware object or absent data with -ENOMEM, rejects zero firmware size with -EINVAL, bounds each write to the remaining firmware capacity, advances tpd_cdev + 0x448 while holding the mutex at tpd_cdev + 0xc60, and resets the position to zero when the end is reached.

## Scope boundary

OFFLINE_EXACT means that the available stock binary evidence is matched at function level. It does not claim equivalent Android runtime behavior, firmware lifetime behavior under all concurrent kernel users, or boot safety. Hardware validation remains deferred.
