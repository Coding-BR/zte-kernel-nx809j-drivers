# `tpd_zlog_register` — offline exact revalidation

This package records the current offline revalidation of stock function
`tpd_zlog_register` at `0010688c` for `zte_tpd`.

The versioned reconstruction and Docker-curated Kbuild snapshot were verified
byte-identical. The pinned Docker builder produced identical module bytes in
two independent container filesystems with different module paths.

Gates: Docker-backed ASan/UBSan host harness (9 cases, reproducible, PASS),
AArch64 assembly/relocation comparison (66 instructions, 264 bytes, PASS),
KCFI comparison (type ID `0xd02e5b64`, PASS), and Joern strict analysis
(PASS). The stock vmalloc-failure path preserves the observed `memset(NULL)`
call as a known stock defect. Hardware, Android sysfs, zlog transport and
module-loading validation remain deferred.
