# Pre-candidate evidence: `cont_drv_lvl_store@00106554`

The stock callback is a 248-byte `device_attribute.store` body. Its relocation is in the `dev_attr_cont_drv_lvl` store slot, its KCFI preamble is present with type ID `0x95c41a97`, and the complete stock symbol interval matches the Ghidra body size. The MP0 identity record binds all observations to the stock module SHA-256.

The stock body parses two hexadecimal words with `sscanf("%x %x", ...)`. If and only if two conversions succeed, it stores their low bytes at driver-data offsets `+0x3f2` and `+0x3f3`, then locks `+0x248`, reads one byte from register `0x1d`, preserves the old register's bit 7 while replacing the low seven bits, writes two bytes to the same register, and unlocks. It returns the original sysfs count for parse failures and bus helper failures alike.

This ledger does not infer the semantic name of register `0x1d` or prove driver-data lifetime. MP4 is only a draft oracle; this folder does not contain an independent MP8 review or hardware validation.
