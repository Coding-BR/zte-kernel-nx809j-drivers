.section .text,"ax",@progbits
.align 2
.global cali_store
.type cali_store, %function
    .word 0x95c41a97
cali_store:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9017bfd
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x910013e2
    .inst 0xf9438929
    .inst 0x2a1f03e1
    .inst 0xaa0303f3
    .inst 0xf90007e9
    .inst 0xf9404c18
    .inst 0xaa0803e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x37f80c20
    .inst 0xb94007e8
    .inst 0x34000c08
    .inst 0x91092300
    .inst 0xd102a314
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9429308
    .inst 0xb943c315
    .inst 0xaa1403e0
    .inst 0x394eeb16
    .inst 0x2a1f03e1
    .inst 0xf9408d08
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9429308
    .inst 0xaa1403e0
    .inst 0xf9400108
    .inst 0xb85fc110
    .inst 0x729e3e11
    .inst 0x72aa2591
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x35000a40
    .inst 0x52800c89
    .inst 0x110192c8
    .inst 0x5290a3ea
    .inst 0x4b160129
    .inst 0x1b157d08
    .inst 0x72aa3d6a
    .inst 0x1b157d29
    .inst 0xb85b8315
    .inst 0xb943c304
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xf0c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xf0c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x9baa7d08
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d4a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d4a
    .inst 0x9baa7d29
    .inst 0x52805602
    .inst 0x2a1503e7
    .inst 0xd365fd16
    .inst 0xd365fd37
    .inst 0x2a1603e6
    .inst 0x2a1703e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb85b8304
    .inst 0x6b17009f
    .inst 0x54000803
    .inst 0x6b16009f
    .inst 0x540007c8
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d4a
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d4a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2bbc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2bbc
    .inst 0xaa1603e1
    .inst 0x52805722
    .inst 0xaa1703e3
    .inst 0x2a1503e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb943c308
    .inst 0x5290d409
    .inst 0x0b1506aa
    .inst 0x72a00029
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x405
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x405
    .inst 0x4b0802a8
    .inst 0xaa1603e1
    .inst 0x528057c2
    .inst 0x1b097d08
    .inst 0x531d7149
    .inst 0xaa1703e3
    .inst 0x1ac90d15
    .inst 0x2a1503e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x37f80595
    .inst 0x529999a8
    .inst 0x72b99988
    .inst 0x9ba87ea8
    .inst 0xd363fd09
    .inst 0x52800148
    .inst 0x1b08d52a
    .inst 0x39592f08
    .inst 0x0b080129
    .inst 0x7100115f
    .inst 0x1a899529
    .inst 0x1400002e
    .inst 0x93407c13
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540009a1
    .inst 0xaa1303e0
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa9417bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xd81
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xd81
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d4a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d4a
    .inst 0x52805542
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000024
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x22e6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x22e6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d4a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d4a
    .inst 0x528056a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000030
    .inst 0x529999a9
    .inst 0x4b1503e8
    .inst 0x5280014a
    .inst 0x72b99989
    .inst 0x9ba97d09
    .inst 0xd363fd29
    .inst 0x1b0aa12a
    .inst 0x39592f08
    .inst 0x2a2903eb
    .inst 0x4b090109
    .inst 0x0b0b010b
    .inst 0x7100155f
    .inst 0x1a8b3129
    .inst 0x6b08013f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2dd
    .inst 0x5a88b508
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x0b090108
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d4a
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d4a
    .inst 0x12001d04
    .inst 0x52805a22
    .inst 0xb81e0304
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9429308
    .inst 0xaa1403e0
    .inst 0x52800021
    .inst 0xf9408d08
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9429308
    .inst 0xaa1403e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x91092300
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x17ffffb0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size cali_store, .-cali_store

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"
