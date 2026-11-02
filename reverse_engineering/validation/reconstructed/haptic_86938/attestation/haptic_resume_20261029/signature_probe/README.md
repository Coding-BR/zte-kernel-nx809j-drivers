# aw_i2c_resume ABI probe

The stock function at .text+0xbe94 is mov w0, wzr; ret (8 bytes) and carries KCFI ID 0x2a703c0b. A pinned Docker clang-r536225 probe for int (struct device *) produces the same ID. This is the device-driver PM resume callback signature.
