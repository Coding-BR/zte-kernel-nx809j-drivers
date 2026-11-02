.section .text,"ax",@progbits
.align 2
.global string_change
.type string_change, %function
    .word 0xdac58b52
string_change:
    .inst 0xd503233f
    .inst 0xd102c3ff
    .inst 0xa9057bfd
    .inst 0xa9066ffc
    .inst 0xa90767fa
    .inst 0xa9085ff8
    .inst 0xa90957f6
    .inst 0xa90a4ff4
    .inst 0x910143fd
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xb4000921
    .inst 0x39400028
    .inst 0xaa0103f5
    .inst 0x340008c8
    .inst 0xf90013e0
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strlen
    .inst 0xaa0003f6
    .inst 0xd503201f
    .inst 0x910006c0
    .inst 0x52819801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xb4002954
    .inst 0x910006c2
    .inst 0xaa1403e0
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strlen
    .inst 0x8b000416
    .inst 0xd503201f
    .inst 0xaa1603e0
    .inst 0x52819801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f5
    .inst 0xaa1403e0
    .inst 0xb4002955
    .inst 0x52800741
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strchr
    .inst 0xf100001f
    .inst 0xaa1403e8
    .inst 0x9a8007f7
    .inst 0xa93ed3b7
    .inst 0xb4000080
    .inst 0x3900001f
    .inst 0xf85f03a8
    .inst 0xb4000728
    .inst 0x39400108
    .inst 0x34000588
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_string_comma
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_string_comma
    .inst 0xd10043a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb40004e0
    .inst 0x2a1f03f8
    .inst 0x2a1f03fc
    .inst 0x2a1f03f9
    .inst 0x5280003a
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_string_comma
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_string_comma
    .inst 0x14000005
    .inst 0xd10043a0
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb4000420
    .inst 0x9400013f
    .inst 0x39400008
    .inst 0x34ffff48
    .inst 0xaa1f03e1
    .inst 0x52800202
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_strtoul
    .inst 0x37f81ff9
    .inst 0x93407f28
    .inst 0xeb0802df
    .inst 0x54001f89
    .inst 0x7100035f
    .inst 0x11000739
    .inst 0x2a1f03fa
    .inst 0x1a80039c
    .inst 0x1a9f0718
    .inst 0x38286aa0
    .inst 0x17ffffec
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x18
    .inst 0x52819801
    .inst 0x52800022
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x18
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f5
    .inst 0xb40022d5
    .inst 0x390002bf
    .inst 0x14000114
    .inst 0x2a1f03f9
    .inst 0x2a1f03fc
    .inst 0xb81dc3bf
    .inst 0xb50001b7
    .inst 0x140000e1
    .inst 0xf85e83b7
    .inst 0x7100031f
    .inst 0x1a9f07e8
    .inst 0xb81dc3a8
    .inst 0xb50000f7
    .inst 0x140000db
    .inst 0x2a1f03f9
    .inst 0x2a1f03fc
    .inst 0xb81dc3bf
    .inst 0x91000417
    .inst 0xb4001ad7
    .inst 0x394002e8
    .inst 0x34001a88
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_string_dot
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_string_dot
    .inst 0xd10063a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb40019e0
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_string_comma
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_string_comma
    .inst 0x5280003a
    .inst 0x2a1903f7
    .inst 0x14000007
    .inst 0x2a1f03fa
    .inst 0xd10063a0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_string_dot
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_string_dot
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb40018a0
    .inst 0x94000102
    .inst 0x39400008
    .inst 0x34ffff28
    .inst 0xb85dc3a8
    .inst 0x7100035f
    .inst 0xaa0003fb
    .inst 0x1a8813e8
    .inst 0x7100051f
    .inst 0x540000e1
    .inst 0x37f817f7
    .inst 0x93407ee8
    .inst 0xeb0802df
    .inst 0x54001789
    .inst 0x110006f7
    .inst 0x38286abc
    .inst 0xaa1b03e0
    .inst 0x52800741
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strchr
    .inst 0xb40002a0
    .inst 0x3800141f
    .inst 0xaa0003f9
    .inst 0xaa1b03e0
    .inst 0x940000ec
    .inst 0xaa0003fa
    .inst 0xaa1903e0
    .inst 0x940000e9
    .inst 0xaa0003fb
    .inst 0xb400019a
    .inst 0xaa1a03e0
    .inst 0xaa1f03e1
    .inst 0x52800202
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_strtoul
    .inst 0x37f81517
    .inst 0x2a1703e8
    .inst 0x93407d08
    .inst 0xeb0802df
    .inst 0x54001489
    .inst 0x110006f7
    .inst 0x38286aa0
    .inst 0xd10083a0
    .inst 0xaa1803e1
    .inst 0xf81e03bb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb4fff9e0
    .inst 0x940000d6
    .inst 0xaa0003fb
    .inst 0xd10083a0
    .inst 0xaa1803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb4fff920
    .inst 0x940000d0
    .inst 0xaa0003f9
    .inst 0xd10083a0
    .inst 0xaa1803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb4fff860
    .inst 0x940000ca
    .inst 0xaa0003fa
    .inst 0xd10083a0
    .inst 0xaa1803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strsep
    .inst 0xb4fff7a0
    .inst 0x940000c4
    .inst 0xf9000fe0
    .inst 0xaa1b03e0
    .inst 0xaa1f03e1
    .inst 0x52800142
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_strtoul
    .inst 0xf9000be0
    .inst 0xaa1903e0
    .inst 0xaa1f03e1
    .inst 0x52800142
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_strtoul
    .inst 0xf90007e0
    .inst 0xaa1a03e0
    .inst 0xaa1f03e1
    .inst 0x52800142
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_strtoul
    .inst 0xaa0003f9
    .inst 0xf9400fe0
    .inst 0xaa1f03e1
    .inst 0x52800142
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_strtoul
    .inst 0xf94013fb
    .inst 0xaa0003fa
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_string_mrotation
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_string_mrotation
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_string_change_coordinate
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_string_change_coordinate
    .inst 0xb9460b62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9460b68
    .inst 0x71000d1f
    .inst 0x540002e0
    .inst 0x7100051f
    .inst 0x54000541
    .inst 0x52809808
    .inst 0xf94007ea
    .inst 0x5280014c
    .inst 0x4b1a0109
    .inst 0x1280000b
    .inst 0x5280002e
    .inst 0x0b09092f
    .inst 0xf9400be9
    .inst 0x4b0a010a
    .inst 0x1b0c2f28
    .inst 0x0b09092d
    .inst 0x1b0c2d4a
    .inst 0x5280002c
    .inst 0x531f79f0
    .inst 0x531f79b1
    .inst 0x53083d09
    .inst 0x331f79ac
    .inst 0x53083d4b
    .inst 0x53083e2d
    .inst 0x14000013
    .inst 0xa940a3e9
    .inst 0x5281500a
    .inst 0x5280014c
    .inst 0x1280000b
    .inst 0x5280002e
    .inst 0x4b080148
    .inst 0x0b09092f
    .inst 0x0b080909
    .inst 0x4b190148
    .inst 0x1b0c2f4a
    .inst 0x1b0c2d0c
    .inst 0x52800028
    .inst 0x531f79f0
    .inst 0x531f792d
    .inst 0x331f7928
    .inst 0x53083d4b
    .inst 0x53083da9
    .inst 0x53083d8d
    .inst 0x331f79ee
    .inst 0x53083e0f
    .inst 0x14000009
    .inst 0x2a1f03e8
    .inst 0x2a1f03e9
    .inst 0x2a1f03ea
    .inst 0x2a1f03eb
    .inst 0x2a1f03ec
    .inst 0x2a1f03ed
    .inst 0x2a1f03ee
    .inst 0x2a1f03ef
    .inst 0x37f806f7
    .inst 0x2a1703f0
    .inst 0x93407e10
    .inst 0xeb1002df
    .inst 0x54000669
    .inst 0x310006f1
    .inst 0x38306aae
    .inst 0x54000604
    .inst 0x93407e2e
    .inst 0xeb0e02df
    .inst 0x540005a9
    .inst 0x31000af0
    .inst 0x382e6aaf
    .inst 0x54000544
    .inst 0x93407e0e
    .inst 0xeb0e02df
    .inst 0x540004e9
    .inst 0x31000eef
    .inst 0x382e6aac
    .inst 0x54000484
    .inst 0x93407dec
    .inst 0xeb0c02df
    .inst 0x54000429
    .inst 0x310012ee
    .inst 0x382c6aad
    .inst 0x540003c4
    .inst 0x93407dcc
    .inst 0xeb0c02df
    .inst 0x54000369
    .inst 0x310016ed
    .inst 0x382c6aaa
    .inst 0x54000304
    .inst 0x93407daa
    .inst 0xeb0a02df
    .inst 0x540002a9
    .inst 0x31001aec
    .inst 0x382a6aab
    .inst 0x54000244
    .inst 0x93407d8a
    .inst 0xeb0a02df
    .inst 0x540001e9
    .inst 0x31001eeb
    .inst 0x382a6aa8
    .inst 0x54000184
    .inst 0x93407d68
    .inst 0xeb0802df
    .inst 0x54000129
    .inst 0x110022f7
    .inst 0x38286aa9
    .inst 0x17ffff38
    .inst 0x2a1903f7
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb9000277
    .inst 0x1400002b
    .inst 0xd4200020
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x18
    .inst 0xd5384114
    .inst 0xf9402a96
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x18
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, string_change._alloc_tag
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, string_change._alloc_tag
    .inst 0x52819801
    .inst 0x52800022
    .inst 0xf9002a88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f5
    .inst 0xf9002a96
    .inst 0xb5ffe0f5
    .inst 0x1400001b
    .inst 0xd5384117
    .inst 0xf9402af8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, my_strdup._alloc_tag
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, my_strdup._alloc_tag
    .inst 0x910006c0
    .inst 0x52819801
    .inst 0xf9002ae8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xf9002af8
    .inst 0xb5ffd714
    .inst 0xaa1f03f5
    .inst 0x1400000e
    .inst 0xd5384117
    .inst 0xf9402af8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, string_change._alloc_tag.4
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, string_change._alloc_tag.4
    .inst 0xaa1603e0
    .inst 0x52819801
    .inst 0xf9002ae8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f5
    .inst 0xf9002af8
    .inst 0xaa1403e0
    .inst 0xb5ffd715
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb900027f
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000161
    .inst 0xaa1503e0
    .inst 0xa94a4ff4
    .inst 0xa94957f6
    .inst 0xa9485ff8
    .inst 0xa94767fa
    .inst 0xa9466ffc
    .inst 0xa9457bfd
    .inst 0x9102c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size string_change, .-string_change

.align 2
.global trim
.type trim, %function
trim:
.inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xb40002a0
    .inst 0xd1000413
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, _ctype
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, _ctype
    .inst 0x38401e68
    .inst 0x38686a89
    .inst 0x372fffc9
    .inst 0x340001e8
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strlen
    .inst 0x8b000268
    .inst 0xd1000509
    .inst 0xaa0903e8
    .inst 0xeb13013f
    .inst 0x540000a9
    .inst 0xaa0803e9
    .inst 0x385ff52a
    .inst 0x386a6a8a
    .inst 0x372fff4a
    .inst 0x3900051f
    .inst 0x14000002
    .inst 0xaa1f03f3
    .inst 0xaa1303e0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size trim, .-trim

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.zero 0x56b
.L_string_change_coordinate:
.asciz "change_coordinate"
.zero 0x29eb - (0x56b + 18)
.L_string_mrotation:
.byte 0x01
.asciz "6[info ] %s: syna mrotation partition is %d"
.zero 0x2fc3 - (0x29eb + 44)
.L_string_dot:
.asciz "."
.zero 0x3e1d - (0x2fc3 + 2)
.L_string_comma:
.asciz ","
.zero 0x806c - (0x3e1d + 2)
.L_string_ignore_lcd:
.byte 0x13
.asciz "tpd_ufp_err: ignore err lcd change\n"

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.zero 0x2d0
.type string_change._alloc_tag, %object
string_change._alloc_tag:
.zero 0x28
.type string_change._alloc_tag.4, %object
string_change._alloc_tag.4:
.zero 0x28
.type my_strdup._alloc_tag, %object
my_strdup._alloc_tag:
.zero 0x8
