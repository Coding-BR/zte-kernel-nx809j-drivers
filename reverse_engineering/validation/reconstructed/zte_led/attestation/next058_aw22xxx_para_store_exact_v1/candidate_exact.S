.section .text,"ax",@progbits
.align 2
.inst 0x95c41a97
.global aw22xxx_para_store
.type aw22xxx_para_store, %function
aw22xxx_para_store:
    .inst 0xd503233f
    .inst 0xd105c3ff
    .inst 0xa9117bfd
    .inst 0xa9126ffc
    .inst 0xa91367fa
    .inst 0xa9145ff8
    .inst 0xa91557f6
    .inst 0xa9164ff4
    .inst 0x910443fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x6e8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x6e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xf68
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xf68
    .inst 0xaa0303f7
    .inst 0xaa0203f6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x38
    .inst 0x52819801
    .inst 0x52800c82
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x38
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f4
    .inst 0xb4001f34
    .inst 0x9100e281
    .inst 0x9100f282
    .inst 0x91006288
    .inst 0x91007289
    .inst 0x9100828a
    .inst 0x9100928b
    .inst 0x9100a28c
    .inst 0x9100b28e
    .inst 0x9100c290
    .inst 0x9100d291
    .inst 0x9101028d
    .inst 0x9101128f
    .inst 0xaa1603e0
    .inst 0x91012296
    .inst 0x91013293
    .inst 0x9101429c
    .inst 0x9101529b
    .inst 0x9101629a
    .inst 0x91017299
    .inst 0x91018295
    .inst 0xf81d03a2
    .inst 0xf90027e2
    .inst 0x91001283
    .inst 0x91002284
    .inst 0xf81c83a1
    .inst 0x91003285
    .inst 0x91004286
    .inst 0xf90023e1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x125b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x125b
    .inst 0x91005287
    .inst 0xaa1403e2
    .inst 0xf81f03b7
    .inst 0xa908d7f9
    .inst 0xaa0903f8
    .inst 0xaa0803f7
    .inst 0xa907ebfb
    .inst 0xa906f3f3
    .inst 0xf90033f6
    .inst 0xf81e83af
    .inst 0xf9002fef
    .inst 0xf81d83ad
    .inst 0xf9002bed
    .inst 0xf81c03b1
    .inst 0xf9001ff1
    .inst 0xf81b83b0
    .inst 0xf9001bf0
    .inst 0xf81b03ae
    .inst 0xf90017ee
    .inst 0xf81a83ac
    .inst 0xf90013ec
    .inst 0xf81a03ab
    .inst 0xf9000feb
    .inst 0xf81e03aa
    .inst 0xa900abe9
    .inst 0xf90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sscanf
    .inst 0x7100641f
    .inst 0x540001a0
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xf85f03a0
    .inst 0xa9564ff4
    .inst 0xa95557f6
    .inst 0xa9545ff8
    .inst 0xa95367fa
    .inst 0xa9526ffc
    .inst 0xa9517bfd
    .inst 0x9105c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xa93963b7
    .inst 0xf85e83b8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xa13
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xa13
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xf68
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xf68
    .inst 0x52800322
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b4
    .inst 0xb9400109
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b4
    .inst 0x710f9d3f
    .inst 0x54001248
    .inst 0x5280032a
    .inst 0x528c350e
    .inst 0xb940028d
    .inst 0x9baa7d2b
    .inst 0x92407d6a
    .inst 0x9100054c
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x5
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_bss_base+0x5
    .inst 0x6b0e019f
    .inst 0x382b694d
    .inst 0x540011a0
    .inst 0x2a0b03eb
    .inst 0xa97943a0
    .inst 0x9100096d
    .inst 0xf85e03b1
    .inst 0xb840428f
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x540010a0
    .inst 0x91000d6c
    .inst 0xb840828f
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x54001000
    .inst 0x9100116d
    .inst 0xb840c28f
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x54000f60
    .inst 0x9100156e
    .inst 0x528c350f
    .inst 0xb841028c
    .inst 0x6b0f01df
    .inst 0x382d694c
    .inst 0x54000ea0
    .inst 0x9100196c
    .inst 0xb841428d
    .inst 0x6b0f019f
    .inst 0x382e694d
    .inst 0x54000e00
    .inst 0x91001d6d
    .inst 0x528c350e
    .inst 0xb940000f
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x54000d40
    .inst 0x9100216c
    .inst 0xb940020f
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x54000ca0
    .inst 0xb940022f
    .inst 0xa97d47a0
    .inst 0x382c694f
    .inst 0x9100256d
    .inst 0xa97c07a2
    .inst 0x6b0e01bf
    .inst 0xa97b0fa4
    .inst 0xa97a17af
    .inst 0x54000b80
    .inst 0x9100296c
    .inst 0xb94001ef
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x54000ae0
    .inst 0x91002d6d
    .inst 0xb94000af
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x54000a40
    .inst 0x9100316c
    .inst 0xb940008f
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x540009a0
    .inst 0x9100356d
    .inst 0xb940006f
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x54000900
    .inst 0x9100396c
    .inst 0xb940004f
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x54000860
    .inst 0x91003d6d
    .inst 0xb940002f
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x540007c0
    .inst 0x9100416c
    .inst 0xb940000f
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x54000720
    .inst 0x9100456d
    .inst 0xb940022f
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x54000680
    .inst 0x9100496c
    .inst 0xb940030f
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x540005e0
    .inst 0x91004d6d
    .inst 0xb94002cf
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x54000540
    .inst 0x9100516c
    .inst 0xb940026f
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x540004a0
    .inst 0x9100556d
    .inst 0xb940038f
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x54000400
    .inst 0x9100596c
    .inst 0xb940036f
    .inst 0x6b0e019f
    .inst 0x382d694f
    .inst 0x54000360
    .inst 0x91005d6d
    .inst 0xb940034f
    .inst 0x6b0e01bf
    .inst 0x382c694f
    .inst 0x540002c0
    .inst 0x9100616b
    .inst 0xb940032c
    .inst 0x6b0e017f
    .inst 0x382d694c
    .inst 0x54000220
    .inst 0xb94002ac
    .inst 0x11000522
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1136
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1136
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xf68
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xf68
    .inst 0x382b694c
    .inst 0xb9000102
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff58
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe74
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe74
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xf68
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xf68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff52
    .inst 0xd4200020
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x38
    .inst 0xd5384115
    .inst 0xf9402ab3
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x38
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_codetag_base
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_codetag_base
    .inst 0x52819801
    .inst 0x52800c82
    .inst 0xf9002aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f4
    .inst 0xf9002ab3
    .inst 0xb5ffe134
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x9fc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x9fc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928001a0
    .inst 0x17ffff42
.size aw22xxx_para_store, .-aw22xxx_para_store
.section .note.GNU-stack,"",@progbits

