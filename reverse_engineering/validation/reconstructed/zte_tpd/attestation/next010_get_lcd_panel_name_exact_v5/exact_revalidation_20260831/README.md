# Exact revalidation: `010_get_lcd_panel_name` (v5)

This package records the reproducible offline promotion of `get_lcd_panel_name` at stock entry `0x00107ce0`.

- Docker canonical build: two cycles, identical candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64: 3/3 instructions and 12/12 bytes, with the same literal relocations to `"Unknown_lcd"`.
- KCFI: stock and candidate type ID `0x51b8bc5f`, section `.text`, size 12 bytes.
- Joern: strict PASS, parse-clean, one-to-one Ghidra/source identity and no unresolved calls.
- Dedicated host ASan/UBSan in the Docker container: two reproducible cycles, one direct test case per cycle, covering the static literal and pointer identity.

This is an offline exact-function claim. Smartphone, panel firmware, Android insertion and physical hardware behavior remain deferred.
