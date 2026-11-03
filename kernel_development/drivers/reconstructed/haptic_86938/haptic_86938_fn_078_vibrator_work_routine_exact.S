.section .text,"ax",@progbits
.align 2
.global vibrator_work_routine_stock_exact
.type vibrator_work_routine_stock_exact, %function
    .word 0xa607748c
vibrator_work_routine_stock_exact:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xd104e013
    .inst 0xaa0003f4
    .inst 0xd110a015
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0xf9408d08
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xd10fa288
    .inst 0xb9400108
    .inst 0x35000128
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd10f5298
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x198b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x198b
    .inst 0xb9400304
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x815
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x815
    .inst 0x52807842
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400304
    .inst 0x7100009f
    .inst 0x5400014c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x815
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x815
    .inst 0x52807882
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000053
    .inst 0x3940f289
    .inst 0xd1103688
    .inst 0x5280002a
    .inst 0x3900010a
    .inst 0x6b09009f
    .inst 0x54000082
    .inst 0x2a1f03f6
    .inst 0x52800077
    .inst 0x14000011
    .inst 0x3940f689
    .inst 0x6b09009f
    .inst 0x54000082
    .inst 0x2a1f03f6
    .inst 0x52800057
    .inst 0x1400000b
    .inst 0x3940fa89
    .inst 0x6b09009f
    .inst 0x54000082
    .inst 0x2a1f03f6
    .inst 0x52800037
    .inst 0x14000005
    .inst 0x528000a9
    .inst 0x52800097
    .inst 0x528001f6
    .inst 0x39000109
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb26
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb26
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x815
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x815
    .inst 0x52807ac2
    .inst 0x2a1703e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0x2a1703e2
    .inst 0xf9406108
    .inst 0xb85fc110
    .inst 0x728fccb1
    .inst 0x72af70f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0x2a1603e2
    .inst 0xf9406508
    .inst 0xb85fc110
    .inst 0x728fccb1
    .inst 0x72af70f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0x2a1f03e2
    .inst 0xf9406108
    .inst 0xb85fc110
    .inst 0x728fccb1
    .inst 0x72af70f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0x2a1f03e2
    .inst 0xf9406508
    .inst 0xb85fc110
    .inst 0x728fccb1
    .inst 0x72af70f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xd1103688
    .inst 0x39400108
    .inst 0x7100111f
    .inst 0x540005a0
    .inst 0x7100151f
    .inst 0x54000941
    .inst 0xd1103288
    .inst 0x39400109
    .inst 0xf940d288
    .inst 0x7100053f
    .inst 0x54001181
    .inst 0xf9402108
    .inst 0xaa1503e0
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xd10f0288
    .inst 0x52823289
    .inst 0xb9400108
    .inst 0x6b09011f
    .inst 0x54001229
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x528000a1
    .inst 0xf9404d08
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0xf9403108
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x1400000b
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0xf9402508
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb9400308
    .inst 0x5289ba69
    .inst 0xd103e280
    .inst 0x72a20c49
    .inst 0xaa1f03e2
    .inst 0x52800023
    .inst 0x9b297d09
    .inst 0xd37ffd2a
    .inst 0x9366fd29
    .inst 0x0b0a0129
    .inst 0x52807d0a
    .inst 0x1b0aa128
    .inst 0x5288480a
    .inst 0x72a001ea
    .inst 0x1b0a7d08
    .inst 0x5299400a
    .inst 0x72a7734a
    .inst 0x93407d08
    .inst 0x9b2a2121
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_start_range_ns
    .inst 0x17ffff42
    .inst 0x7100051f
    .inst 0x540007a1
    .inst 0xf940d288
    .inst 0xd10fd289
    .inst 0xaa1503e0
    .inst 0xb9400121
    .inst 0xf9404508
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xe12
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xe12
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x18ff
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x18ff
    .inst 0x52805322
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3941be81
    .inst 0xf940d288
    .inst 0x3940e689
    .inst 0x5100042a
    .inst 0xf9405108
    .inst 0x6b2a013f
    .inst 0x54000068
    .inst 0xd10fe289
    .inst 0xb9400121
    .inst 0xaa1503e0
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0xf9404d08
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf940d288
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0xf9403108
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x17ffff04
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2575
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2575
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x774
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x774
    .inst 0x52808162
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffefb
    .inst 0xd10fd289
    .inst 0xf9404508
    .inst 0xaa1503e0
    .inst 0xb9400121
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xe12
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xe12
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x18ff
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x18ff
    .inst 0x528052a2
    .inst 0x14000019
    .inst 0xd10fd28a
    .inst 0xaa1503e0
    .inst 0xb940014a
    .inst 0x1b097d49
    .inst 0x5280180a
    .inst 0x1ac80928
    .inst 0xf940d289
    .inst 0xf9404529
    .inst 0x7103011f
    .inst 0x1a8ab101
    .inst 0xb85fc130
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304520
    .inst 0xd63f0120
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x139f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x139f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x18ff
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x18ff
    .inst 0x52805242
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff57
.size vibrator_work_routine_stock_exact, .-vibrator_work_routine_stock_exact

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"
