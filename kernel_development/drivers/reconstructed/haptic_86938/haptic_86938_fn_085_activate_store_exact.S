.section .text,"ax",@progbits
.align 2
.global activate_store
.type activate_store, %function
    .word 0x95c41a97
activate_store:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xf90013f5
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x910013e2
    .inst 0xf9438929
    .inst 0x2a1f03e1
    .inst 0xaa0303f3
    .inst 0xf90007e9
    .inst 0xf9404c15
    .inst 0xaa0803e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x36f801c0
    .inst 0x93407c13
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540006a1
    .inst 0xaa1303e0
    .inst 0xa9434ff4
    .inst 0xf94013f5
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb94007e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1c3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1c3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2274
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2274
    .inst 0x52811c62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3855e2a8
    .inst 0x36000348
    .inst 0x910922a0
    .inst 0xd102a2b4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf94292a8
    .inst 0xaa1403e0
    .inst 0x52800021
    .inst 0xf9404108
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x910a22a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_cancel
    .inst 0xb94007e8
    .inst 0x910922a0
    .inst 0xb81982a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf941d2a1
    .inst 0x910e02a2
    .inst 0x52800400
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_work_on
    .inst 0x17ffffd1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2ab3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2ab3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2274
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2274
    .inst 0x52811ca2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size activate_store, .-activate_store

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"
