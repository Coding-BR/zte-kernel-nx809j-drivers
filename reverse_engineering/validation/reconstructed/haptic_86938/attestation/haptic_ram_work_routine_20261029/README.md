# Haptic `ram_work_routine` reconstruction

Target: stock `ram_work_routine@0010e190`, 76 bytes, with KCFI type ID `0xa607748c` at preamble offset `0xb36c`. It is the delayed-work callback installed by `ram_work_init`.

The callback receives the embedded `work_struct` at `haptic + 0x3c0`, clears the 16-bit field at `haptic + 5`, and requests `haptic_ram.bin` asynchronously. The request uses `THIS_MODULE`, `uevent=true`, the device pointer at `haptic + 0x320`, `GFP_KERNEL`, the owning `haptic` object as context, and `ram_load` as completion callback. The `aw_ram_name` pointer value is supported by the stock `.data` relocation to the string `haptic_ram.bin`.

This function is under static validation. The callback context lifetime and firmware completion behavior are not verified on hardware. `ram_load` remains a missing reconstruction dependency, so this work does not yet produce a linkable module or authorize promotion.

## Validation results

Two clean builds of the isolated object produced identical 105,048-byte objects with SHA-256 `64d8c67ae2cf6ca231c8e0c709bb2ee37e2635c3c6328e21e4072bc361aec337`. The object matches all 19 stock instructions, the 76-byte function body, and relocations. The candidate KCFI ID matches stock (`0xa607748c`). Strict Joern source and `usages` slice checks passed.

The full module build now reaches modpost and fails only on the unresolved local symbol `ram_load`. The earlier missing `ram_work_routine` link error is fixed by this candidate. This is still an object-level result, not a linkable module or a promotion.

See `object_validation_v1/` for the Docker object builds, assembly comparison, KCFI comparison, and Joern results. The full module audit is preserved in `docker_preflight_v1/`. `aw_ram_name_stock_binding.json` records the stock data relocation that supports the reconstructed `haptic_ram.bin` pointer.
