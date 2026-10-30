# aw22xxx_i2c_write exact offline attestation

- Driver: `zte_led`
- Identity: `aw22xxx_i2c_write@001018fc`
- Stock body: 304 bytes / 76 AArch64 instructions
- Candidate module: `zte_led.ko` SHA-256 `d65d342423019e32e560e1624008e9b08a270a756fd9aa07c87868875ed85898`
- Exact source: `candidate_exact.S` SHA-256 `c7c098c45d904acc5126d715cb96081a785cf6da461329dddb365ac314397427`

The island was materialized by `materialize_stock_function_assembly.py`; only
audited section-base names were retained. Docker built the complete module in
two clean cycles with the same hash. Assembly/relocation comparison, strict
Joern plus bounded usage slice, Ghidra body/P-Code gate, and symmetric KCFI
absence all passed. The host contract harness passed 58/58 functions.

The Ghidra export uses `RepairAw22xxxI2cWriteBoundary.java` to remove false
16-byte function splits introduced by analysis of the exact raw island. This
changes only Ghidra's analysis boundary; ELF bytes and relocations remain the
authority. Physical I²C/GPIO behavior and NX809J hardware remain deferred.
