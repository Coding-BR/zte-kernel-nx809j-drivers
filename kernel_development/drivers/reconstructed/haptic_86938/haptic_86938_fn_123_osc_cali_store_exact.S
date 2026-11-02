.section .text,"ax",@progbits
.align 2
.global osc_cali_store
.type osc_cali_store, %function
    .word 0x95c41a97
osc_cali_store:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9017bfd
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x910013e2
    .inst 0xf9438929
    .inst 0x2a1f03e1
    .inst 0xaa0303f3
    .inst 0xf90007e9
    .inst 0xf9404c1a
    .inst 0xaa0803e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x37f805a0
    .inst 0x91092340
    .inst 0xd102a355
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb94007e8
    .inst 0x7100091f
    .inst 0x54000520
    .inst 0x7100051f
    .inst 0x54000681
    .inst 0xf9429348
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0xf9408d08
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xaa1503e0
    .inst 0x940000d4
    .reloc .-4, R_AARCH64_CALL26, rtp_osc_cali
    .inst 0xf9429348
    .inst 0xb85f8354
    .inst 0xaa1503e0
    .inst 0xf940c508
    .inst 0xb85fc110
    .inst 0x7290be71
    .inst 0x72a13471
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x6b14001f
    .inst 0x54000541
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1921
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1921
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa02
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa02
    .inst 0x52806ca2
    .inst 0x2a1403e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000010
    .inst 0x93407c13
    .inst 0x14000010
    .inst 0xf9429348
    .inst 0xaa1503e0
    .inst 0x52800041
    .inst 0xf9408d08
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xaa1503e0
    .inst 0x940000ae
    .reloc .-4, R_AARCH64_CALL26, rtp_osc_cali
    .inst 0x91092340
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540014c1
    .inst 0xaa1303e0
    .inst 0xa9454ff4
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa9417bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x54000222
    .inst 0x5290a3e8
    .inst 0x72aa3d68
    .inst 0x9ba87c08
    .inst 0xd364fd09
    .inst 0x4b000288
    .inst 0x6b09011f
    .inst 0x54000369
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x435
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x435
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa02
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa02
    .inst 0x52806d42
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe0
    .inst 0x6b140008
    .inst 0x54000449
    .inst 0x5290a3e9
    .inst 0x72aa3d69
    .inst 0x9ba97c09
    .inst 0xd364fd29
    .inst 0x6b09011f
    .inst 0x54000409
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xdc0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xdc0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa02
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa02
    .inst 0x52806f82
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffcf
    .inst 0x0b000809
    .inst 0x5282eb2a
    .inst 0x72ba36ea
    .inst 0x531f7929
    .inst 0x9baa7d29
    .inst 0xd36dfd29
    .inst 0x6b09011f
    .inst 0x54000462
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x231e
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x231e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa02
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa02
    .inst 0xaa0003e5
    .inst 0xaa0803e0
    .inst 0x52806e22
    .inst 0x14000016
    .inst 0x39592f48
    .inst 0xaa0003f6
    .inst 0x2a1f03f7
    .inst 0x14000041
    .inst 0x0b000809
    .inst 0x5282eb2a
    .inst 0x72ba36ea
    .inst 0x531f7929
    .inst 0x9baa7d29
    .inst 0xd36dfd29
    .inst 0x6b09011f
    .inst 0x540003e2
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x231e
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x231e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa02
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa02
    .inst 0xaa0003e5
    .inst 0xaa0803e0
    .inst 0x52807042
    .inst 0x2a1403e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffa5
    .inst 0x5290d409
    .inst 0x0b00040a
    .inst 0xaa0003f6
    .inst 0x72a00029
    .inst 0x1b097d08
    .inst 0x531d7149
    .inst 0x5280014a
    .inst 0x1ac90908
    .inst 0x529999a9
    .inst 0x72b99989
    .inst 0x9ba97d09
    .inst 0xd363fd29
    .inst 0x1b0aa12a
    .inst 0x39592f48
    .inst 0x0b080129
    .inst 0x7100115f
    .inst 0x1a899537
    .inst 0x1400001b
    .inst 0x53057c09
    .inst 0x528b58aa
    .inst 0x5291112b
    .inst 0x72a14f8a
    .inst 0x72b1110b
    .inst 0xaa0003f6
    .inst 0x9baa7d29
    .inst 0x5293334a
    .inst 0x72a3332a
    .inst 0xd367fd29
    .inst 0x1ac90908
    .inst 0x52955569
    .inst 0x72b55549
    .inst 0x9ba97d09
    .inst 0x9bab7d08
    .inst 0x5280014b
    .inst 0xd364fd29
    .inst 0x9baa7d2a
    .inst 0xd360fd4a
    .inst 0x1b0ba549
    .inst 0xd367fd0a
    .inst 0x39592f48
    .inst 0x4b0a010a
    .inst 0x7100113f
    .inst 0x1a9f97e9
    .inst 0x4b090157
    .inst 0x6b0802ff
    .inst 0xaa1503e0
    .inst 0x52800041
    .inst 0x5a883508
    .inst 0x0b170118
    .inst 0xf9429348
    .inst 0xb81f0358
    .inst 0xf9408d08
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa02
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa02
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1dd
    .inst 0xaa1503e1
    .inst 0x52807502
    .inst 0xaa1903e3
    .inst 0x2a1403e4
    .inst 0x2a1603e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1233
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1233
    .inst 0xaa1503e1
    .inst 0x52807522
    .inst 0xaa1903e3
    .inst 0x2a1703e4
    .inst 0x2a1803e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff55
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size osc_cali_store, .-osc_cali_store

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"
