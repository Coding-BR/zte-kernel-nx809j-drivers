.section .text,"ax",@progbits
.align 2
.global haptic_init
.type haptic_init, %function
haptic_init:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb54
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb54
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2873
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2873
    .inst 0x5281fd62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd2800028
    .inst 0x91164269
    .inst 0x91148260
    .inst 0xf2ca68c8
    .inst 0x52800021
    .inst 0x52800022
    .inst 0xf9026e68
    .inst 0xf902ca69
    .inst 0xf902ce69
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_init
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, audio_timer_func
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, audio_timer_func
    .inst 0x9115a269
    .inst 0xf902a668
    .inst 0xb26b7be8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x334
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x334
    .inst 0xf902b268
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, audio_work_routine
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, audio_work_routine
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_init.__key.249
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_init.__key.249
    .inst 0x9113c260
    .inst 0xf902b669
    .inst 0xf902ba69
    .inst 0xf902be68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x91160268
    .inst 0x910bc260
    .inst 0xf902c268
    .inst 0xf902c668
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x52801fe8
    .inst 0x39518269
    .inst 0xf942e66a
    .inst 0xf807c268
    .inst 0x528000a8
    .inst 0xaa1303e0
    .inst 0x39004e7f
    .inst 0x2a1f03e1
    .inst 0x3900767f
    .inst 0x39006e69
    .inst 0xb906e268
    .inst 0xf9404d48
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0xf9404108
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9408108
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9403908
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xb9403261
    .inst 0xaa1303e0
    .inst 0xf9405108
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x2a1f03e2
    .inst 0xf9406d08
    .inst 0xb85fc110
    .inst 0x728fccb1
    .inst 0x72af70f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0xf9405908
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9402908
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0xf9405d08
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x910bc260
    .inst 0x3900727f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size haptic_init, .-haptic_init

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"

.section .bss,"aw",@nobits
.zero 0x45
.local haptic_init.__key.249
.type haptic_init.__key.249, %object
haptic_init.__key.249:
.zero 1
.size haptic_init.__key.249, 1
