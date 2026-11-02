.section .text,"ax",@progbits
.align 2
.global aw86320_timecheck_work_init
.type aw86320_timecheck_work_init, %function
aw86320_timecheck_work_init:
    .inst 0xb9400c08
    .inst 0x7110011f
    .inst 0x5400044b
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0x910b2000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xb26b7be8
    .inst 0x910b4269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, delayed_work_timer_fn
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, delayed_work_timer_fn
    .inst 0xf9016668
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_timecheck_work_handle
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_timecheck_work_handle
    .inst 0x910ba260
    .inst 0x52a00402
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9016a69
    .inst 0xf9016e69
    .inst 0xf9017268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0xb9400e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __msecs_to_jiffies
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, system_wq
    .inst 0xaa0003e3
    .inst 0x910b2262
    .inst 0xf9400101
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, system_wq
    .inst 0x52800400
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_delayed_work_on
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw86320_timecheck_work_init, .-aw86320_timecheck_work_init
