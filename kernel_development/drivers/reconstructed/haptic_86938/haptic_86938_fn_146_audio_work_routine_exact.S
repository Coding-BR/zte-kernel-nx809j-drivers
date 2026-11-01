.section .text,"ax",@progbits
.align 2
.global audio_work_routine
.type audio_work_routine, %function
    .word 0xa607748c
audio_work_routine:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9017bfd
    .inst 0xf90013f9
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910043fd
    .inst 0xd101c014
    .inst 0xaa0003f3
    .inst 0xd2802016
    .inst 0xaa1403e0
    .inst 0xf2fbd5b6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9401e77
    .inst 0x9100c275
    .inst 0xa904fe7f
    .inst 0xf900227f
    .inst 0xeb1502ff
    .inst 0x540005a0
    .inst 0xf94002a8
    .inst 0xeb15011f
    .inst 0x54000060
    .inst 0x385f8108
    .inst 0x14000002
    .inst 0x2a1f03e8
    .inst 0x385f82e9
    .inst 0x6b090108
    .inst 0x1a8833e9
    .inst 0x11008108
    .inst 0x1a893118
    .inst 0x71000f1f
    .inst 0x54000503
    .inst 0x2a1f03f9
    .inst 0x1400000a
    .inst 0xaa0903e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_del_entry_valid_or_report
    .inst 0x91008ac8
    .inst 0xd1002120
    .inst 0xa9002136
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x11000739
    .inst 0x6b18033f
    .inst 0x540003a0
    .inst 0xeb1502ff
    .inst 0x54000360
    .inst 0xaa1703e9
    .inst 0x385fa2e8
    .inst 0xf94006f7
    .inst 0x35ffff28
    .inst 0x385f9128
    .inst 0x12000d08
    .inst 0x7100051f
    .inst 0x54fffea1
    .inst 0xf94002e8
    .inst 0xeb09011f
    .inst 0x54fffd61
    .inst 0xf9400128
    .inst 0xf940050a
    .inst 0xeb09015f
    .inst 0x54fffce1
    .inst 0xf9000517
    .inst 0xf90002e8
    .inst 0x17ffffe6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x21a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x21a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1778
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1778
    .inst 0x5280f442
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9401e69
    .inst 0xeb15013f
    .inst 0xd1158275
    .inst 0x54000360
    .inst 0xaa0903e0
    .inst 0x385f8c08
    .inst 0x39010268
    .inst 0x385f9128
    .inst 0x39010668
    .inst 0x385fa128
    .inst 0x39010a68
    .inst 0x385fd128
    .inst 0x39011668
    .inst 0x385fb128
    .inst 0x39010e68
    .inst 0x385fc128
    .inst 0x39011268
    .inst 0xf9400528
    .inst 0xf940010a
    .inst 0xeb09015f
    .inst 0x540015c1
    .inst 0xf940012a
    .inst 0xf940054b
    .inst 0xeb09017f
    .inst 0x54001541
    .inst 0xf9000548
    .inst 0xf900010a
    .inst 0x91008ac8
    .inst 0xa9002136
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x39410a66
    .inst 0x35001266
    .inst 0xf9403668
    .inst 0xaa1503e0
    .inst 0xf9401508
    .inst 0xb85fc110
    .inst 0x729e3e11
    .inst 0x72aa2591
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a0003f6
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x35000fb6
    .inst 0x39410668
    .inst 0x7100051f
    .inst 0x54000f41
    .inst 0x39410a68
    .inst 0x7100091f
    .inst 0x54000b20
    .inst 0x7100211f
    .inst 0x54000ca0
    .inst 0x7100051f
    .inst 0x54000e61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x236d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x236d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1778
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1778
    .inst 0x528106c2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd109c274
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9403668
    .inst 0xaa1503e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9403668
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
    .inst 0xf9403668
    .inst 0x39411662
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0xf9406108
    .inst 0xb85fc110
    .inst 0x728fccb1
    .inst 0x72af70f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9403668
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
    .inst 0xf9403668
    .inst 0x39410e62
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0xf9406508
    .inst 0xb85fc110
    .inst 0x728fccb1
    .inst 0x72af70f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9403668
    .inst 0x39411261
    .inst 0xaa1503e0
    .inst 0xf9404508
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9403668
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0xf9403108
    .inst 0x14000016
    .inst 0xd109c274
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9403668
    .inst 0xaa1503e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x1400000f
    .inst 0xd109c274
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9403668
    .inst 0x39411261
    .inst 0xaa1503e0
    .inst 0xf9404508
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xa9454ff4
    .inst 0xf94013f9
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa9417bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x39410264
    .inst 0x39410665
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1165
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1165
    .inst 0x39411667
    .inst 0x39410e68
    .inst 0x39411269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1778
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1778
    .inst 0x5280fba2
    .inst 0xb9000be9
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff5f
    .inst 0xaa0003ea
    .inst 0xaa0903e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_del_entry_valid_or_report
    .inst 0xaa0a03e0
    .inst 0x17ffff55
.size audio_work_routine, .-audio_work_routine

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"
