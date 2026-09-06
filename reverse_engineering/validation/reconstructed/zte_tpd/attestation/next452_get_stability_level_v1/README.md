# `get_stability_level` Offline Exact Attestation

Status: `OFFLINE_EXACT`  
Hardware validation: `DEFERRED`  
Stock symbol: `get_stability_level@0x0010c148`  
Target: AArch64 Android GKI 6.12.23 vendor module reconstruction

This package records one isolated reconstruction unit. The source C file is
kept as the readable contract, while `get_stability_level_exact.S` is the
mechanically lifted AArch64 implementation used by the canonical Docker build.
The Assembly gate compares opcodes, ELF symbol size, section and normalized
relocations against the local NX809J stock `zte_tpd.ko`.

Validated properties:

- 60 AArch64 instructions and 240-byte symbol body.
- KCFI type `0xf4e9d97c` and callback guard `0x73fc0d79`.
- Joern strict gate: parser clean, mapped identity complete, no unresolved calls.
- Host contract harness: four ASan/UBSan cases passed.
- Canonical Docker build: two independent cycles passed with the same artifact.

The package does not claim that the reconstructed module has been loaded on the
phone. Hardware behavior, SPI interaction and boot compatibility remain a
separate validation phase.
