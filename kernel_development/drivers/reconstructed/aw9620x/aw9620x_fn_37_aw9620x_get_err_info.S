.section .text,"ax",@progbits
.align 2
.global aw9620x_get_err_info
.type aw9620x_get_err_info, %function
aw9620x_get_err_info:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9027bfd
    .inst 0xf9001bf3
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0x529fe401
    .inst 0xaa0003f3
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0x529e0228
    .inst 0x72a78008
    .inst 0xb81f43bf
    .inst 0x32190102
    .inst 0x2901ffff
    .inst 0x97ffef06
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xd10033a2
    .inst 0xaa1303e0
    .inst 0x52838001
    .inst 0x97fff7be
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0x910033e2
    .inst 0xaa1303e0
    .inst 0x5288e881
    .inst 0x97fff7ba
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x52888881
    .inst 0x97fff7b6
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0x29419fe6
    .inst 0xf9401a61
    .inst 0xb85f43a5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1d67
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1d67
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1916
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1916
    .inst 0x52806ee4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x529e0222
    .inst 0xaa1303e0
    .inst 0x529fe401
    .inst 0x72a78002
    .inst 0x97ffeeea
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540000c1
    .inst 0xa9427bfd
    .inst 0xf9401bf3
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_get_err_info, .-aw9620x_get_err_info
