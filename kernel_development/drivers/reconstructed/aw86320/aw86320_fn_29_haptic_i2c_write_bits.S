.section .text,"ax",@progbits
.align 2
.global haptic_i2c_write_bits
.type haptic_i2c_write_bits, %function
haptic_i2c_write_bits:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x2a0203f6
    .inst 0x910013e2
    .inst 0xf9438908
    .inst 0x2a0303f5
    .inst 0x2a0103f3
    .inst 0xaa0003f4
    .inst 0xf90007e8
    .inst 0x79000bff
    .inst 0x97fff530
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x37f80280
    .inst 0x79400be8
    .inst 0x0a3602a9
    .inst 0xaa1403e0
    .inst 0x2a1303e1
    .inst 0x0a160108
    .inst 0x2a090102
    .inst 0x97fff4ba
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x37f802a0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000341
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x528015e2
    .inst 0x14000009
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xea8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xea8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x52801702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size haptic_i2c_write_bits, .-haptic_i2c_write_bits
