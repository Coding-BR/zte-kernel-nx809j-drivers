# Independent review: aw8693x_parse_dt

Target: aw8693x_parse_dt@00104d80  
Review scope: source semantics, exact-function reports, callback ABI evidence, harness and runner. Review was read-only.

## Function-level verdict

The reviewer independently rederived the parser behavior from stock decompilation, P-Code, AArch64 assembly and target-kernel OF helper sources. No semantic difference was found in the candidate. protocol_core_v2 reports CORE_GATES_PASS: exact AArch64 opcode/relocation comparison, normalized Ghidra C and P-Code comparison pass; both functions are 1,360 bytes with 340 instructions; KCFI type is 0x2e77d32a. The map’s exact-equivalence statement is supported for this function only.

## Findings corrected during review

- The initial host harness did not exercise -ENODATA and did not check the names/order of the final three presence lookups. The harness now asserts -EINVAL, -ENODATA, and -EOVERFLOW, records all 16 reads and all 19 property lookups, and compares their order and return classes.
- The initial harness runner used a created temporary directory inconsistently and did not record hashes for the test source and OF stubs. It now uses the mktemp directory for candidate and mutant files and records hashes for the candidate C, harness C, runner and four stub headers.
- The runner initially treated any nonzero mutant run as detection. It now requires a successful mutant compilation before execution and records that build return code separately. The current result is candidate 0, mutant build 0, mutant execution 1, Docker 0; the mutant fails the expected state-byte and relational checks.
- The reconstruction map’s semantic_equivalence value was stale. It now records exact static equivalence for this function and links the protocol, harness and review artifacts.

## Remaining limit

The stock callback table is proven: .rela.data+0xe0 points to .text+0x1f60, and aw_i2c_probe loads that slot with KCFI type 0x2e77d32a. The candidate has the exact parser function but no aw8693x_func_list table object. The broader Docker module audit remains incomplete_or_failed: the canonical reconstructed .ko is absent and alias/import parity is not established. The callback table and module integration must be reconstructed before claiming the haptic driver is complete. Hardware and board-specific DT validation also remain unperformed.

The function review does not authorize promotion of the complete driver.