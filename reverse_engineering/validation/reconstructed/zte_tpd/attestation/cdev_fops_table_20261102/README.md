# `device_fops` stock parity

- Result: **PASS**.
- The stock module and canonical candidate both define a 264-byte `device_fops` object.
- All seven non-null pointer slots match by relative offset and callback: `owner`, `llseek`, `read`, `write`, `unlocked_ioctl`, `open`, and `release`.
- Neither table registers `compat_ioctl`, `poll`, or `mmap`. Those callbacks belong to the separate `zte_fops` table.
- Canonical two-cycle Docker build: `c36ca8b8f217f98cc7efd9b22bf97b01c2d4fd9e470efcfb39e741978bcabc09`. Source sync passed.
- Raw stock and candidate ELF relocation lines: `elf_relocation_evidence.txt`. Detailed comparison: `fops_table_comparison.json` (SHA-256 `664b05f30f00ee8865da4818b029f03e54f5cebf78afaba8df448b68e8846c76`).

This audit covers the ELF callback relocations for `device_fops`; it does not claim runtime validation.
