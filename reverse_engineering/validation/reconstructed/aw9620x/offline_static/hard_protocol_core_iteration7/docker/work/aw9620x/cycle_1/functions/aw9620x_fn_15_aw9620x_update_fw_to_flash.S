.section .text,"ax",@progbits
.align 2
.global aw9620x_update_fw_to_flash
.type aw9620x_update_fw_to_flash, %function
    .word 0xfe130662
aw9620x_update_fw_to_flash:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9047bfd
    .inst 0xf9002bf3
    .inst 0x910103fd
    .inst 0xd5384108
    .inst 0xd287ff09
    .inst 0x2a0203e5
    .inst 0xf9438908
    .inst 0xf2c7ff89
    .inst 0xaa0003f3
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x5f8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x5f8
    .inst 0x5280c784
    .inst 0xf81f83a8
    .inst 0xd286ff08
    .inst 0xf2c10008
    .inst 0xf9000be1
    .inst 0xf9401801
    .inst 0xa93ea7a8
    .inst 0x52800028
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x390023e8
    .inst 0x52840008
    .inst 0x290323e2
    .inst 0xd10063a8
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x12fc
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x12fc
    .inst 0xb80093ff
    .inst 0xb9000fff
    .inst 0xf90013e8
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
.size aw9620x_update_fw_to_flash, .-aw9620x_update_fw_to_flash
