.section .bss,"aw",@nobits
.align 3

.section .text,"ax",@progbits
.align 2
.global syna_tcm_read_flash_area
.type syna_tcm_read_flash_area, %function
    .word 0xda19bd63
syna_tcm_read_flash_area:
    .inst 0xd503233f
    .inst 0xd10543ff
    .inst 0xa90f7bfd
    .inst 0xf90083fc
    .inst 0xa91167fa
    .inst 0xa9125ff8
    .inst 0xa91357f6
    .inst 0xa9144ff4
    .inst 0x9103c3fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xa9097fff
    .inst 0xa9087fff
    .inst 0xa9077fff
    .inst 0xa9067fff
    .inst 0xa9057fff
    .inst 0xa9047fff
    .inst 0xa9037fff
    .inst 0xa9027fff
    .inst 0xa9017fff
    .inst 0xf90007ff
    .inst 0xb5000080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x14000004
    .inst 0xb50002a2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9bb1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9bb1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cdf
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cdf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54002d21
    .inst 0xa9544ff4
    .inst 0xf94083fc
    .inst 0xa95357f6
    .inst 0xa9525ff8
    .inst 0xa95167fa
    .inst 0xa94f7bfd
    .inst 0x910543ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x2a0303f3
    .inst 0xaa0003f4
    .inst 0x2a0103f5
    .inst 0xaa0203fa
    .inst 0x35000063
    .inst 0x2a1f03e3
    .inst 0x14000002
    .inst 0xb941ea83
    .inst 0x39402699
    .inst 0x71002f3f
    .inst 0x540001e0
    .inst 0x910023e1
    .inst 0xaa1403e0
    .inst 0x2a1303e2
    .inst 0x97fffe4f
    .inst 0x36f80140
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1506
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1506
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cdf
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cdf
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffda
    .inst 0x910023e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x964
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x964
    .inst 0x91014100
    .inst 0x390223ff
    .inst 0xa904ffff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x2a1503e8
    .inst 0x710052bf
    .inst 0x5400020d
    .inst 0x7100551f
    .inst 0xaa1a03e2
    .inst 0x54000360
    .inst 0x7100591f
    .inst 0x54000440
    .inst 0x71005d1f
    .inst 0x54000761
    .inst 0x910023e1
    .inst 0xaa1403e0
    .inst 0x2a1f03e3
    .inst 0x2a1f03e4
    .inst 0x2a1303e5
    .inst 0x94000379
    .inst 0x37f802e0
    .inst 0x1400017d
    .inst 0x71000d1f
    .inst 0xaa1a03e2
    .inst 0x540004a0
    .inst 0x7100191f
    .inst 0x540005c1
    .inst 0x910023e1
    .inst 0xaa1403e0
    .inst 0x2a1303e3
    .inst 0x9400018c
    .inst 0x36f82e60
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3ab
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3ab
    .inst 0x1400015c
    .inst 0x910023e1
    .inst 0xaa1403e0
    .inst 0x2a1f03e3
    .inst 0x2a1f03e4
    .inst 0x2a1303e5
    .inst 0x9400020c
    .inst 0x36f82d00
    .inst 0x2a0003f5
    .inst 0x14000151
    .inst 0x39402688
    .inst 0xa93effbf
    .inst 0xa93dffbf
    .inst 0x7100051f
    .inst 0xa93cffbf
    .inst 0xa93bffbf
    .inst 0xf81b03bf
    .inst 0x540003a1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7da3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7da3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8d66
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8d66
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e17
    .inst 0x14000140
    .inst 0x39402688
    .inst 0x7100051f
    .inst 0x540004e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4883
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4883
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x785c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x785c
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e15
    .inst 0x140000e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x28a9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x28a9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cdf
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cdf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e15
    .inst 0x7100073f
    .inst 0x540026a0
    .inst 0x14000138
    .inst 0xd10143a8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x964
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x964
    .inst 0x91004100
    .inst 0xa93b7fbf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x910023e1
    .inst 0xd10143a2
    .inst 0xaa1403e0
    .inst 0x2a1303e3
    .inst 0x9400014d
    .inst 0x36f80380
    .inst 0x2a0003f7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5e73
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5e73
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8d66
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8d66
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000103
    .inst 0x79417288
    .inst 0xb94037e9
    .inst 0x1b097d17
    .inst 0x340003f7
    .inst 0x79417696
    .inst 0x340003b6
    .inst 0xb9400848
    .inst 0xf9400040
    .inst 0x6b16011f
    .inst 0x540014c2
    .inst 0xb4001080
    .inst 0xaa0003f8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5000fe0
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
    .inst 0x1400007b
    .inst 0xb9400b56
    .inst 0xf9400340
    .inst 0x71001edf
    .inst 0x540006a8
    .inst 0xb4000260
    .inst 0xaa0003f6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb50001c0
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
    .inst 0x1400000a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa30f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa30f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x785c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x785c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e15
    .inst 0x1400009a
    .inst 0xaa1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5000120
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1a03e8
    .inst 0xf900035f
    .inst 0x14000008
    .inst 0x52800101
    .inst 0x5281b802
    .inst 0x52800116
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xaa1a03e8
    .inst 0xf9000340
    .inst 0xb5000200
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x52800102
    .inst 0xaa0803f6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x286f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x286f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8d66
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8d66
    .inst 0xf90006df
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e57
    .inst 0x140000b8
    .inst 0xb9000916
    .inst 0x2a1603e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xb85bc3aa
    .inst 0xf85b03a8
    .inst 0xaa1a03e9
    .inst 0xb9000f5f
    .inst 0x51001d4b
    .inst 0x38ebc90b
    .inst 0x37f8066b
    .inst 0x51003d4b
    .inst 0x38ebc90b
    .inst 0x37f8064b
    .inst 0x51005d4b
    .inst 0x38ebc90b
    .inst 0x37f80d8b
    .inst 0x51007d4b
    .inst 0x38ebc90b
    .inst 0x37f80d6b
    .inst 0x51009d4b
    .inst 0x38ebc90b
    .inst 0x37f80d4b
    .inst 0x5100bd4b
    .inst 0x38ebc90b
    .inst 0x37f80d2b
    .inst 0x5100dd49
    .inst 0x38e9c909
    .inst 0x37f80d09
    .inst 0x5100fd49
    .inst 0x38e9c909
    .inst 0x37f80ce9
    .inst 0x51011d49
    .inst 0x38e9c909
    .inst 0x37f80cc9
    .inst 0x51013d49
    .inst 0x38e9c909
    .inst 0x37f80ca9
    .inst 0x51015d49
    .inst 0x38e9c909
    .inst 0x37f80c89
    .inst 0x51017d49
    .inst 0x38e9c909
    .inst 0x37f80c69
    .inst 0x51019d49
    .inst 0x38e9c909
    .inst 0x37f80c69
    .inst 0x5101bd49
    .inst 0x38e9c909
    .inst 0x37f80c49
    .inst 0x5101dd49
    .inst 0x38e9c909
    .inst 0x37f80c29
    .inst 0x5101fd49
    .inst 0x12800feb
    .inst 0x38e9c909
    .inst 0x7100013f
    .inst 0x128010e9
    .inst 0x1a89b169
    .inst 0x0b0a012a
    .inst 0x1400005a
    .inst 0x5100214a
    .inst 0x14000059
    .inst 0x5100414a
    .inst 0x14000057
    .inst 0xaa1803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5000120
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1a03e8
    .inst 0xf900035f
    .inst 0x14000007
    .inst 0xaa1603e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xaa1a03e8
    .inst 0xf9000340
    .inst 0xb5000200
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1603e2
    .inst 0xaa0803f5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x286f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x286f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x785c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x785c
    .inst 0xf90006bf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e55
    .inst 0x14000016
    .inst 0xb9000916
    .inst 0xaa1603e8
    .inst 0x2a1f03e1
    .inst 0xaa0803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xf9400342
    .inst 0xaa1403e0
    .inst 0x2a1703e1
    .inst 0x2a1603e3
    .inst 0x2a1303e4
    .inst 0xb9000f5f
    .inst 0x97fffdda
    .inst 0x36f80180
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9381
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9381
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x785c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x785c
    .inst 0x2a1703e2
    .inst 0x2a1603e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7780
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7780
    .inst 0x14000055
    .inst 0xb9000f56
    .inst 0x14000066
    .inst 0x5100614a
    .inst 0x1400001a
    .inst 0x5100814a
    .inst 0x14000018
    .inst 0x5100a14a
    .inst 0x14000016
    .inst 0x5100c14a
    .inst 0x14000014
    .inst 0x5100e14a
    .inst 0x14000011
    .inst 0x5101014a
    .inst 0x1400000f
    .inst 0x5101214a
    .inst 0x1400000d
    .inst 0x5101414a
    .inst 0x1400000b
    .inst 0x5101614a
    .inst 0x14000009
    .inst 0x5101814a
    .inst 0x14000007
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x5101a14a
    .inst 0x14000004
    .inst 0x5101c14a
    .inst 0x14000002
    .inst 0x5101e14a
    .inst 0xaa1a03e9
    .inst 0xf940012b
    .inst 0xb40001ab
    .inst 0x8b2ac108
    .inst 0xb4000168
    .inst 0xb9400923
    .inst 0x71001c7f
    .inst 0x540001e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x52800102
    .inst 0x52800104
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x71e8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x71e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8d66
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8d66
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b7
    .inst 0x1400000c
    .inst 0xf9400108
    .inst 0x5280010a
    .inst 0x2a1f03f7
    .inst 0xf9000168
    .inst 0xb85bc3a8
    .inst 0xf85b03ab
    .inst 0xb9000d2a
    .inst 0x51001d08
    .inst 0x3868c968
    .inst 0x53077d08
    .inst 0xb9003688
    .inst 0x385f03a2
    .inst 0x340000c2
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
    .inst 0xf85b03b6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb50000e0
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
    .inst 0x14000004
    .inst 0xb4000076
    .inst 0xaa1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x36f802f7
    .inst 0x2a1703f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4840
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4840
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cdf
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cdf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x7100073f
    .inst 0x540000a1
    .inst 0xaa1403e0
    .inst 0x52800021
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_switch_fw_mode
    .inst 0x394223e2
    .inst 0x350002a2
    .inst 0xf94027f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000300
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1503e0
    .inst 0x17fffe43
    .inst 0x2a1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x71d1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x71d1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cdf
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cdf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f5
    .inst 0x7100073f
    .inst 0x54fffd00
    .inst 0x17ffffeb
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
    .inst 0x17ffffe7
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
    .inst 0x17ffffe7
.size syna_tcm_read_flash_area, .-syna_tcm_read_flash_area

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
