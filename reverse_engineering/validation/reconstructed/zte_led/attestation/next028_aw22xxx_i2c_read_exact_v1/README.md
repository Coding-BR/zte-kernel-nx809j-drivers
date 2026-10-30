# zte_led — `aw22xxx_i2c_read@00101a2c`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is a materialized AArch64 exact island generated from the preserved stock Assembly by `materialize_stock_function_assembly.py`. The body is 312 bytes / 78 instructions and preserves the four I²C transfers, retry path, output-byte store, printk/msleep effects, relocations and stack-canary path.

Validation completed against the Docker snapshot/toolchain: two reproducible cycles, `static_verified=["zte_led"]`, candidate hash `9e203a5f0eb539eec754c02fa1b23c5924d3fc0137b797e32e2cfb49df7d6871`. Assembly comparison, Joern scoped/slice, KCFI comparison and input identity passed. Ghidra required a named boundary repair because analysis split the island into six false nested functions; the fresh export retains the 312-byte body and P-Code. The host harness passed reproducibly with 58/58 covered functions.

Limitations: physical I²C/GPIO hardware, sanitizers and independent runtime review remain deferred. This is offline/static promotion only.
