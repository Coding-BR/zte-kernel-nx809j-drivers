.section .text,"ax",@progbits
.align 2
.inst 0xa607748c
.global aw22xxx_brightness_work
.type aw22xxx_brightness_work, %function
aw22xxx_brightness_work:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9027bfd
    .inst 0xa9034ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa0003f4
    .inst 0xd1074013
    .inst 0xf9438908
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1685
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1685
    .inst 0xf81f83a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x52801fe2
    .inst 0x97fffa63
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x390013ff
    .inst 0x97fffaaa
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394013e8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x121e7902
    .inst 0x390013e2
    .inst 0x97fffa58
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x52803542
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910023e2
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x390023ff
    .inst 0x97fffa98
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394023e8
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x121f7902
    .inst 0x390023e2
    .inst 0x97fffa46
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xd106e288
    .inst 0xb9400108
    .inst 0x35000168
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000ae1
    .inst 0xa9434ff4
    .inst 0xa9427bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x52803542
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910033e2
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x390033ff
    .inst 0x97fffa75
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394033e8
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x32000102
    .inst 0x390033e2
    .inst 0x97fffa23
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x390043ff
    .inst 0x97fffa66
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x394043e8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x32000102
    .inst 0x390043e2
    .inst 0x97fffa14
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x39448288
    .inst 0x528001e9
    .inst 0xaa1303e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x71003d1f
    .inst 0x1a893114
    .inst 0x97fffa0c
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800161
    .inst 0x2a1403e2
    .inst 0x97fffa08
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0x52801c22
    .inst 0x97fffa04
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800441
    .inst 0x2a1f03e2
    .inst 0x97fffa00
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800401
    .inst 0x52800042
    .inst 0x97fff9fc
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800461
    .inst 0x528007a2
    .inst 0x97fff9f8
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800401
    .inst 0x2a1f03e2
    .inst 0x97fff9f4
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x52801042
    .inst 0x97fff9f0
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xd10033a2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x381f43bf
    .inst 0x97fffa37
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_read
    .inst 0x385f43a8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x321f0102
    .inst 0x381f43a2
    .inst 0x97fff9e5
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x17ffffa6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_brightness_work, .-aw22xxx_brightness_work
.section .note.GNU-stack,"",@progbits
