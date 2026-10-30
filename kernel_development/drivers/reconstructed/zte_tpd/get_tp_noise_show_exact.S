.section .text,"ax",@progbits
.align 2
.globl get_tp_noise_show
.type get_tp_noise_show, %function
.inst 0xf4e9d97c
get_tp_noise_show:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9037bfd
    .inst 0xf90023f7
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xaa1f03e0
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9400068
    .inst 0xf801e3ff
    .inst 0xa9017fff
    .inst 0xf90007ff
    .inst 0xb50003a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0303f3
    .inst 0xaa0203f4
    .inst 0xf9400116
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xaa0103f5
    .inst 0x913182c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf94776c8
    .inst 0xb4000128
    .inst 0xaa1603e0
    .inst 0xb85fc110
    .inst 0x7281af31
    .inst 0x72ae7f91
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9462ec8
    .inst 0xb50002c8
    .inst 0xaa1f03f7
    .inst 0x913182c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x910023e3
    .inst 0xaa1503e0
    .inst 0xaa1403e1
    .inst 0xaa1303e2
    .inst 0xaa1703e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_read_from_buffer
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540002a1
    .inst 0xa9464ff4
    .inst 0xf94023f7
    .inst 0xa94557f6
    .inst 0xa9437bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9400103
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_noise_format
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_noise_format
    .inst 0x910023e0
    .inst 0x528003c1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0xf9462ec8
    .inst 0x93407c17
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_noise_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_noise_log
    .inst 0xf9400101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size get_tp_noise_show, .-get_tp_noise_show

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_noise_format:
.asciz "%zu\n"
.L_noise_log:
.asciz "\0015tpd: get tp noise size:%zu.\n"

.section .note.GNU-stack,"",@progbits
