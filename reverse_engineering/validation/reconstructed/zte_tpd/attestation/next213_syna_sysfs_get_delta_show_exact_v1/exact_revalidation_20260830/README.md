# `syna_sysfs_get_delta_show` — offline exact revalidation

This package records the independent offline revalidation of stock function
`syna_sysfs_get_delta_show` at `0011aadc` (1224 bytes) for `zte_tpd`.

The exact AArch64 reconstruction and Docker-curated Kbuild snapshot were
verified byte-identical. The pinned Docker builder produced identical module
bytes in two independent container filesystems with different module paths.

Gates: Docker-backed ASan/UBSan host harness (3 cases, reproducible, PASS),
AArch64 assembly/relocation comparison (306 instructions, 1224 bytes, PASS),
KCFI comparison (type ID `0x4e31a072`, PASS), and Joern strict analysis
(PASS). Hardware, Android sysfs, and module-loading validation remain
deferred.
