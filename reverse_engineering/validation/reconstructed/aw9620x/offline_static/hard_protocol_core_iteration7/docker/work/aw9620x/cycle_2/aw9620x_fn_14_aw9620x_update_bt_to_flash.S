.section .text,"ax",@progbits
.align 2
.global aw9620x_update_bt_to_flash
.type aw9620x_update_bt_to_flash, %function
    .word 0xfe130662
aw9620x_update_bt_to_flash:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9047bfd
    .inst 0xf9002bf3
    .inst 0x910103fd
    .inst 0xd5384109
    .inst 0xd280ff0a
    .inst 0xaa0103e8
    .inst 0xf9438929
    .inst 0xf2c0ff8a
    .inst 0xf81f83a9
    .inst 0x5280ff09
    .inst 0xa90087ff
    .inst 0xf9401801
    .inst 0xa93eaba9
    .inst 0xd10063a9
    .inst 0xf90013e9
    .inst 0x29037fe2
    .inst 0xb5000168
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1467
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1467
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x10c1
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x10c1
    .inst 0x5280c464
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0x1400000f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x2a0203e5
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x12fc
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x12fc
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x10c1
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x10c1
    .inst 0xaa0003f3
    .inst 0xaa0803e0
    .inst 0x5280c4e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x910023e1
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw9620x_flash_update
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540000c1
    .inst 0xa9447bfd
    .inst 0xf9402bf3
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_update_bt_to_flash, .-aw9620x_update_bt_to_flash
