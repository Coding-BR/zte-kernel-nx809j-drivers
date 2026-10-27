.section .text,"ax",@progbits
.align 2
.global aw9620x_i2c_shutdown
.type aw9620x_i2c_shutdown, %function
    .word 0xa8cfcee2
aw9620x_i2c_shutdown:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xf90013f3
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1f6b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1f6b
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0xf9405c13
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x30ec
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x30ec
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39401668
    .inst 0x350000a8
    .inst 0xb9401e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, disable_irq
    .inst 0x52800028
    .inst 0x39001668
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x52888201
    .inst 0x97ffeecc
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xaa1303e0
    .inst 0x52888101
    .inst 0x52800042
    .inst 0x97ffe60c
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540000c1
    .inst 0xa9417bfd
    .inst 0xf94013f3
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_i2c_shutdown, .-aw9620x_i2c_shutdown
