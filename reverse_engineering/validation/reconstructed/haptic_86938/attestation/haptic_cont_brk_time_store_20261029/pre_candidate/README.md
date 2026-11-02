# Pre-candidate evidence: `cont_brk_time_store@0010679c`

This package records the stock identity and MP0–MP6 observations before editing
candidate C. Its stock module is `reference_modules/full_vendor_boot/haptic_86938.ko`
(SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`).

The function is a `device_attribute.store` callback. Its body parses one byte,
then under the mutex at offset `+0x248` writes that byte to I2C register `0x21`
through `i2c_w_bytes`; it returns the parser errno on failure and otherwise
returns the original `count`, ignoring the I2C helper result. Register meaning
and pointer lifetime remain unknown here.

`stock_data_relocations_excerpt.txt` was extracted from the stock module inside
`nubia-sm8850-kernel-builder:latest` using Clang toolchain volume
`nubia_sm8850_kernel_toolchains`. It records the `.rela.data` pointer from the
`dev_attr_cont_brk_time` store slot at `.data+0x240` to `.text+0x397c`, along
with the associated `attribute_group` table chain. The Docker kernel header
excerpt independently records the store callback prototype.

The JSON files are observation/contract drafts, not approvals or promotion
decisions. `MP4` received an L3 review for use as a candidate test oracle; that
record does not count as independent MP8 review. `MP5` leaves owner and teardown
behavior open; `MP6` does not assign physical meaning to register `0x21`.
