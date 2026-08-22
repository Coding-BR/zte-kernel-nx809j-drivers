# `set_stability_level` Offline Exact Attestation

Status: `OFFLINE_EXACT`  
Hardware validation: `DEFERRED`  
Stock symbol: `set_stability_level@0x0010c23c`  
Target: AArch64 Android GKI 6.12.23 vendor module reconstruction

This package records one isolated setter reconstruction unit. The readable C
contract and the mechanically lifted AArch64 implementation are preserved
alongside stock/candidate Assembly, KCFI, Joern, harness and reproducible
Docker evidence.

Validated properties:

- 49 AArch64 instructions and 196-byte symbol body.
- KCFI type `0xc3d43b4d` and callback guard `0x6af8b499`.
- Joern strict gate: parser clean, mapped identity complete, no unresolved calls.
- Host contract harness: four ASan/UBSan cases passed.
- Canonical Docker build: two independent cycles passed with the same artifact.

This is an offline function-level claim only. No smartphone execution was
performed; SPI behavior, hardware side effects and boot compatibility remain
deferred to the later controlled device phase.
