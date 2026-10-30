# haptic_86938 aw8693x_cont_config

Target: aw8693x_cont_config at stock entry 001040c4; source haptic_86938_fn_117_aw8693x_cont_config.c.

## Validation

- Core protocol: **CORE_GATES_PASS**. All eight automated gates passed.
- Docker clean builds reproduced identical module bytes: SHA-256 c6204567de3810f5986f0c6e28e50ecb2dc17c6d42703871f4a6a8711e7f2153 (5550928 bytes).
- Function body: 392 bytes and 98 instructions in stock and candidate; instruction and relocation comparison passed.
- KCFI type ID: 0x847a0830 in stock and candidate.
- Candidate Ghidra entry: 001069c8; body length 392 bytes; strict Ghidra C/P-Code comparison passed without fallback.
- Joern scoped analysis and slice, map identity, and input identity passed.

The exact assembly match required preserving the stock stack layout: two uninitialized four-byte locals at their observed offsets and the play value held in w21 until its store. The source uses the kernel uninitialized annotation for those byte arrays.

## Remaining work

This is a static candidate, not a promoted reconstruction. The protocol runner does not promote by design. Independent review, bounded-model, host sanitizer, semantic counterexample, state-effect and register-bus ledgers, LLVM IR diagnosis, and runtime/KUnit/Lockdep/KCSAN evidence remain outstanding. See supplemental_gate_status.json.
