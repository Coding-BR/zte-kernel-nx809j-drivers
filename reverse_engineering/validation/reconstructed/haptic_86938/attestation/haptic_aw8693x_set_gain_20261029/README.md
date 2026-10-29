# aw8693x_set_gain reconstruction

## Static behavior and MP0-MP7 findings

Stock entry 0010473c is an 88-byte AArch64 function with KCFI ID 0x1d0adf6e. It stores the second argument as one byte, calls i2c_w_bytes(haptic, 7, &data, 1), ignores the helper return, checks the stack canary, and calls __stack_chk_fail on mismatch.

The versioned MP0-MP7 files record stock identity, helper ABI, stack and bus effects, the linear control/error path, callback and pointer lifetime, resource lifetime, register 7 payload, and limits. Stock helper analysis shows i2c_w_bytes copies the local byte into its transfer buffer before invoking the transfer helper. Hardware completion remains unverified.

## Validation

core_runnerbound_v2/hard_protocol_report.json passes all eight automated core gates: input/map identity, Joern and slice, two clean Docker builds, assembly and relocations, KCFI, and candidate Ghidra C/P-Code. Both Docker cycles produced SHA-256 3af88d74f468997e9135783e793e5445324477baf97c5565302fcee068008afd (2,544,944 bytes). Stock and candidate match at 22 instructions and 88 bytes, including i2c_w_bytes and __stack_chk_fail relocations. KCFI matches at 0x1d0adf6e.

Fresh Ghidra normalized C and P-Code match the stock function. The pinned Docker ASan/UBSan host harness passes four input values and rejects four seeded mutations of register, length, or payload byte.

The initial core_runnerbound_v1 is retained as diagnostic evidence; its executable gates passed and the candidate Ghidra export was added before final core_runnerbound_v2.

## Limits

The host harness models the wrapper contract only. It does not establish hardware behavior, exact caller typedef, or whole-driver equivalence. Hardware validation was not performed; whole-driver semantic equivalence remains NOT_ESTABLISHED; module promotion is not authorized.
