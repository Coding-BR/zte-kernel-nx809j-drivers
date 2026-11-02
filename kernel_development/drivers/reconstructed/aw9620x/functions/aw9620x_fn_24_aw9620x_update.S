.section .text,"ax",@progbits
.align 2
.global aw9620x_update
.type aw9620x_update, %function
    .word 0xd8f3a1da
aw9620x_update:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xf9401801
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x639
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x639
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xb4f
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xb4f
    .inst 0x5281ae24
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xb26b7be8
    .inst 0x91084269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, delayed_work_timer_fn
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, delayed_work_timer_fn
    .inst 0xf9010668
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_update_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_update_work
    .inst 0x9108a260
    .inst 0x52a00402
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9010a69
    .inst 0xf9010e69
    .inst 0xf9011268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, system_wq
    .inst 0x91082262
    .inst 0x52800400
    .inst 0xf9400101
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, system_wq
    .inst 0x52809c43
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_delayed_work_on
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw9620x_update, .-aw9620x_update
