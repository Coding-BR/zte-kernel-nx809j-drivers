.section .text,"ax",@progbits
.align 2
.global get_aw22xxx_id
.type get_aw22xxx_id, %function
.word 0xf4e9d97c
get_aw22xxx_id:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xa90157f6
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xf9400068
    .inst 0xb40000e8
    .inst 0xaa1f03e0
    .inst 0xa9424ff4
    .inst 0xa94157f6
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_data_base+0x378
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_data_base+0x378
    .inst 0xaa0103f4
    .inst 0xaa0203f5
    .inst 0xaa0303f6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe06
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe06
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xa4d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xa4d
    .inst 0x52813662
    .inst 0xaa1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x52800401
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strnlen
    .inst 0xaa0003e4
    .inst 0xf100841f
    .inst 0x54000142
    .inst 0xf100809f
    .inst 0x54000180
    .inst 0xaa1603e2
    .inst 0xaa1503e1
    .inst 0xaa1403e0
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_data_base+0x378
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_data_base+0x378
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_read_from_buffer
    .inst 0x17ffffe1
    .inst 0x91000482
    .inst 0x52800040
    .inst 0x52800401
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x52800080
    .inst 0x52800401
    .inst 0x52800422
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
.size get_aw22xxx_id, .-get_aw22xxx_id
