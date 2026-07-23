# zte_tpd KCFI Callback Families

This report is generated exclusively from the local stock module, the local candidate ELF, and Clang KCFI oracles. It does not attest hardware behavior.

| Family | Stock KCFI | Signature | Stock functions | Candidate match | Status |
|---|---:|---|---:|---:|---|
| `firmware_getter` | `0x73fc0d79` | `int (struct ztp_device *)` | 18 | 18 | `MATCH` |
| `firmware_setter` | `0x6af8b499` | `int (struct ztp_device *, int)` | 15 | 15 | `MATCH` |
| `sensibility_setter` | `0xe1d63dc1` | `int (struct ztp_device *, u8)` | 1 | 1 | `MATCH` |
| `text_callback` | `0x64f25fb2` | `int (struct ztp_device *, char *)` | 2 | 2 | `MATCH` |
| `proc_read` | `0xf4e9d97c` | `ssize_t (struct file *, char *, size_t, loff_t *)` | 33 | 33 | `MATCH` |
| `proc_write` | `0xc3d43b4d` | `ssize_t (struct file *, const char *, size_t, loff_t *)` | 33 | 33 | `MATCH` |
| `work_callback` | `0xa607748c` | `void (struct work_struct *)` | 20 | 20 | `MATCH` |
| `void_noarg` | `0xe5c47d60` | `void (void)` | 21 | 21 | `MATCH` |

## Gate Meaning

- `MATCH`: every stock function in the family exists in the candidate with the exact KCFI type ID.
- `MISMATCH`: at least one function is missing or retains another KCFI type.
- KCFI proves indirect-call ABI compatibility, not function-body parity, timing, locking, MMIO, SPI, IRQ, or electrical behavior.
