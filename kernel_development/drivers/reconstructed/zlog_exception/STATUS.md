# zlog_exception reconstruction status

- Target: `NX809J (RedMagic 11 Pro+)`
- Stock SHA-256: `30948fd9026aa0a33d5602c0a395f8bf89c9aaa717317c4c2866e29ab7cad372`
- Current state: `INCOMPLETE`
- Function inventory: 10/10 mapped and primary-reviewed
- KCFI: 9/9 applicable boundaries match type and exact symbol size
- Ghidra call graph: 10/10 functions match call multiplicity
- Host harness: PASS in two reproducible Docker builds/runs
- Independent review: pending
- Hardware validation: not executed

The candidate must not be described as functionally equivalent until every
offline gate passes and the exact candidate hash completes the controlled
hardware-validation protocol.
