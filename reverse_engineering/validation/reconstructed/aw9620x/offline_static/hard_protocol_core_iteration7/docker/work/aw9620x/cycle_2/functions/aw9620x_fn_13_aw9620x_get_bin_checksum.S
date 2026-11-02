.section .text,"ax",@progbits
.align 2
.global aw9620x_get_bin_checksum
.type aw9620x_get_bin_checksum, %function
aw9620x_get_bin_checksum:
    .inst 0x34000362
    .inst 0x2a1f03e9
    .inst 0x2a1f03e8
    .inst 0x2a1f03ea
    .inst 0x14000011
    .inst 0x11000d2b
    .inst 0x1100092c
    .inst 0x1100052d
    .inst 0x386b480b
    .inst 0x386c480c
    .inst 0x53081d6b
    .inst 0x2a0c416b
    .inst 0x386d480c
    .inst 0x2a0c216b
    .inst 0x3869480c
    .inst 0x11001129
    .inst 0x2a0c016b
    .inst 0x1100114a
    .inst 0x0b080168
    .inst 0x6b02015f
    .inst 0x540000a2
    .inst 0x6b01015f
    .inst 0x54fffde3
    .inst 0x1280000b
    .inst 0x17fffff9
    .inst 0x4b0803e0
    .inst 0xd65f03c0
    .inst 0x4b1f03e0
    .inst 0xd65f03c0
.size aw9620x_get_bin_checksum, .-aw9620x_get_bin_checksum
