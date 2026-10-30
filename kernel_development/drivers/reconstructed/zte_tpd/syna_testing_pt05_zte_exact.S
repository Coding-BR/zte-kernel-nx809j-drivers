.section .text,"ax",@progbits
.align 2
.global syna_testing_pt05_zte
.type syna_testing_pt05_zte, %function
    .word 0xae20471c
syna_testing_pt05_zte:
    .inst 0xd503233f
    .inst 0xd10343ff
    .inst 0xa9077bfd
    .inst 0xa9086ffc
    .inst 0xa90967fa
    .inst 0xa90a5ff8
    .inst 0xa90b57f6
    .inst 0xa90c4ff4
    .inst 0x9101c3fd
    .inst 0xd5384108
    .inst 0xaa0003f4
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9000fff
    .inst 0xf90007ff
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xf9001bff
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x60
    .inst 0x5281b801
    .inst 0x52820002
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f3
    .inst 0xb40014b3
    .inst 0x39560a88
    .inst 0x36000c68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_testing_0500
    .inst 0xb4000ee0
    .inst 0xf9400288
    .inst 0x910083f6
    .inst 0xaa0003f5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x95e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x95e
    .inst 0xb9402108
    .inst 0xa9027fff
    .inst 0xb9002408
    .inst 0xf9400288
    .inst 0xb9401d08
    .inst 0xb9002008
    .inst 0x910042c0
    .inst 0x390183ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, pt05_hi_limits
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, pt05_hi_limits
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, pt05_lo_limits
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, pt05_lo_limits
    .inst 0xf9000be8
    .inst 0x52819008
    .inst 0xb9001be8
    .inst 0xaa1503e1
    .inst 0x2a1f03e2
    .inst 0xf90003e9
    .inst 0x910043e9
    .inst 0xb9000be8
    .inst 0x910003e8
    .inst 0xf9006eb6
    .inst 0xa903a2a9
    .inst 0xf9400ea8
    .inst 0xf9400280
    .inst 0xb85fc110
    .inst 0x72895251
    .inst 0x72b03811
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f80ac0
    .inst 0x394042a8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7718
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7718
    .inst 0x7100011f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x87ff
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x87ff
    .inst 0x9a891105
    .inst 0xf94006a3
    .inst 0xb94002a4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1af3
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1af3
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0xb9402fe8
    .inst 0x2a0003f6
    .inst 0x340005c8
    .inst 0xb94022a8
    .inst 0x34000588
    .inst 0xf94013fa
    .inst 0x2a1f03f9
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7a13
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7a13
    .inst 0x5282001b
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa0ee
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa0ee
    .inst 0x1400000b
    .inst 0x2a1603e8
    .inst 0xaa1703e2
    .inst 0xcb080361
    .inst 0x8b080260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0xb94022a8
    .inst 0x11000739
    .inst 0x0b160016
    .inst 0x6b08033f
    .inst 0x54000342
    .inst 0xb94026a8
    .inst 0x34fffea8
    .inst 0x2a1f03fc
    .inst 0xf9400288
    .inst 0x2a1603e9
    .inst 0xaa1803e2
    .inst 0xcb090361
    .inst 0x8b090260
    .inst 0xb9402108
    .inst 0x1b087328
    .inst 0x78685b43
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0xb94026a8
    .inst 0x1100079c
    .inst 0x0b160016
    .inst 0x6b08039f
    .inst 0x54fffe63
    .inst 0x17ffffe5
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc246
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc246
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0x2a0003f6
    .inst 0x14000040
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_copy_to_tp_firmware_data
    .inst 0x394183e2
    .inst 0x350003a2
    .inst 0xf94013f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000400
    .inst 0xb4000074
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xaa1303e0
    .inst 0xf90017ff
    .inst 0x390183ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x14000031
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa791
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa791
    .inst 0xaa1303e0
    .inst 0x52820001
    .inst 0x5280a003
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0x2a0003f6
    .inst 0x14000029
    .inst 0xf94006a2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc281
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc281
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4763
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4763
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000005
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7718
    .inst 0x910000a5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7718
    .inst 0x17ffffaa
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffdf
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffdf
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x230
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x230
    .inst 0xd5384115
    .inst 0xf9402ab6
    .inst 0xf9002aa8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x60
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x60
    .inst 0x5281b801
    .inst 0x52820002
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f3
    .inst 0xf9002ab6
    .inst 0xb5ffebb3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf34
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf34
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4763
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4763
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800176
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000161
    .inst 0x2a1603e0
    .inst 0xa94c4ff4
    .inst 0xa94b57f6
    .inst 0xa94a5ff8
    .inst 0xa94967fa
    .inst 0xa9486ffc
    .inst 0xa9477bfd
    .inst 0x910343ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_testing_pt05_zte, .-syna_testing_pt05_zte

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"

.section .bss,"aw",@nobits
.org 0x95e

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.zero 0x238
