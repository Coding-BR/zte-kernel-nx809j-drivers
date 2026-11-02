# `tp_sensibility_level_write` Offline Exact Attestation

Status: `OFFLINE_EXACT`  
Hardware validation: `DEFERRED`  
Stock symbol: `tp_sensibility_level_write@0x0010c3f8`  
Target: AArch64 Android GKI 6.12.23 vendor module reconstruction

This package records one isolated setter reconstruction unit. The historical C
export is preserved for comparison, while `tp_sensibility_level_write_exact.S`
is the mechanically lifted implementation used by the canonical Docker build.

Validated properties:

- 66 AArch64 instructions and 264-byte symbol body.
- KCFI type `0xc3d43b4d` and callback guard `0xe1d63dc1`.
- Stock callback layout at `tpd_cdev + 0xf68` and value byte at `+0x40`.
- Joern strict gate: parser clean, mapped identity complete, no unresolved calls.
- Exact host harness: five ASan/UBSan cases passed.
- Canonical Docker build: two independent cycles passed with the same artifact.

The older C export carries an unresolved callback-layout difference and is not
used for the exact Assembly object. This package does not claim hardware
behavior or boot compatibility; smartphone validation remains deferred.
