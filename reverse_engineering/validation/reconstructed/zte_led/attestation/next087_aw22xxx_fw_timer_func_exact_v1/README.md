# Exact attestation: `aw22xxx_fw_timer_func`

Target: `aw22xxx_fw_timer_func@0x001051e8`, with a stock body of 80 bytes.

The promoted implementation preserves the 20-instruction AArch64 hrtimer callback, including the diagnostic `printk`, `system_wq` lookup, work-item derivation at `timer - 0x60`, `queue_work_on` call, zero return and KCFI type `0xe3cff753`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI, Joern, Docker reproducibility and the existing 58-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
