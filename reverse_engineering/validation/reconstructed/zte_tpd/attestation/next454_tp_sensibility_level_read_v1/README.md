# `tp_sensibility_level_read` Offline Exact Attestation

Status: `OFFLINE_EXACT`  
Hardware validation: `DEFERRED`  
Stock symbol: `tp_sensibility_level_read@0x0010c304`  
Target: AArch64 Android GKI 6.12.23 vendor module reconstruction

This package records one isolated getter reconstruction unit. The readable C
contract and mechanically lifted AArch64 implementation are preserved with
stock/candidate Assembly, KCFI, Joern, harness and reproducible Docker
evidence.

Validated properties:

- 60 AArch64 instructions and 240-byte symbol body.
- KCFI type `0xf4e9d97c` and callback guard `0x73fc0d79`.
- Byte-sized value at `tpd_cdev + 0x40` and callback at `tpd_cdev + 0xf60`.
- Joern strict gate: parser clean, mapped identity complete, no unresolved calls.
- Host contract harness: four ASan/UBSan cases passed.
- Canonical Docker build: two independent cycles passed with the same artifact.

This is an offline function-level claim only. No smartphone execution was
performed; hardware behavior and boot compatibility remain deferred.
