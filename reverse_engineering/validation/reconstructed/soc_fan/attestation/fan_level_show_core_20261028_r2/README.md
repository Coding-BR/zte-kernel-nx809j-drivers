# `fan_level_show` core checkpoint

## Result

The method-scoped hard protocol completed with `CORE_GATES_PASS`. All eight required automated results passed: assembly and relocations, candidate Ghidra P-Code, reproducible Docker build, input identity, scoped Joern analysis, Joern slice, KCFI, and reconstruction-map identity. Joern resolved one internal source method and ten calls for the selected function. Promotion remains `NOT_AUTHORIZED`.

The two independent Docker cycles produced byte-identical `soc_fan.ko` files with SHA-256 `0d85ca61c72f52cd2aa9c97bcfd51bef143345d1eea71d984230f5eef1c74372`.

## Scope and interpretation

This checkpoint covers only stock `fan_level_show` at entry `0x001014c0`. The implementation follows the repaired stock Ghidra evidence: it loads the fan-state pointer through `chip + 0x08`, selects the current or pending level using the flag at state offset `0x0c`, and formats the selected byte with `sprintf`.

The typed `fan_level_show_kcfi_anchor` is temporary candidate scaffolding used to retain the callback KCFI type while the containing stock attribute table has not been reconstructed. It is not evidence that the stock module contains this exact anchor object. Replace it with the recovered attribute/callback table when that part is reconstructed.

## Remaining work

This is not a completed `soc_fan` driver and does not authorize promotion. The full-driver Docker audit remains incomplete because the reconstructed source and canonical map do not yet cover the whole stock module. The runner records these required follow-ups: callback-table reconstruction, a direct host harness, independent review, KMI type review, LLVM IR diagnosis, and a semantic counterexample. Runtime hardware validation is also outstanding. The other stock `soc_fan` functions and the separate difficult drivers still need reconstruction.

`__used` is included in the job's Joern definitions because the kernel attribute otherwise caused Joern to produce a CPG with only global nodes while reporting no parse error. With the definition, strict scoped analysis resolves the expected method and calls without fallback.