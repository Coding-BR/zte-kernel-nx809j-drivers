.section .text,"ax",@progbits
.align 2
.global aw86320_timecheck_work_handle
.type aw86320_timecheck_work_handle, %function
    .word 0xa607748c
aw86320_timecheck_work_handle:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_aw86320
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x125
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x125
    .inst 0xf9400113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_aw86320
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x6f6
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x6f6
    .inst 0x52804042
    .inst 0xb900127f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x528004a1
    .inst 0x2a1f03e2
    .inst 0x97ffff23
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw86320_timecheck_work_handle, .-aw86320_timecheck_work_handle
