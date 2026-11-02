# `fan_enable_show` and `fan_level_show` checkpoint

## Result

The method-scoped hard protocol returned `CORE_GATES_PASS` for both stock callbacks. All eight required automated gates passed: assembly and relocations, candidate Ghidra P-Code, reproducible Docker build, input identity, scoped Joern analysis, Joern slice, KCFI, and map identity. Joern resolved both methods and 16 calls. Promotion remains `NOT_AUTHORIZED`.

The two independent Docker builds produced byte-identical modules with SHA-256 `3250bdaf4b3d1e7922cd0667477bd6f5ccb3be3e185d7a7fae095fa189d11dcd`. The standalone assembly/relocation comparison and strict Ghidra semantic comparison also passed for both functions, with only section-relative address normalization enabled.

## Reconstructed behavior

`fan_enable_show` emits the stock debug record with the observed tag, function name, and source line 304, then returns the enable byte at `chip + 0x08 + 0x0c` as decimal text. The source deliberately reloads the state pointer after the logging call, matching the stock instructions and avoiding a cached pointer across the call.

`fan_level_show` reads the active flag at state offset `0x0c`, uses its inverse as the index selecting the current or pending level byte, and formats that byte as decimal text.

The two typed `*_kcfi_anchor` pointers are temporary candidate scaffolding. They preserve the stock sysfs show callback KCFI type until the actual attribute structures and group are reconstructed; they do not claim to reproduce the stock attribute objects.

## Remaining work

This is a two-method checkpoint, not a complete `soc_fan` reconstruction. The full-driver audit remains incomplete and `static_verified` is empty. Callback-table reconstruction, a direct host harness, independent review, KMI type review, LLVM IR diagnosis, and a semantic counterexample remain outstanding. Hardware validation has not been performed. Thirteen other stock functions in this module and the other difficult drivers still need work.