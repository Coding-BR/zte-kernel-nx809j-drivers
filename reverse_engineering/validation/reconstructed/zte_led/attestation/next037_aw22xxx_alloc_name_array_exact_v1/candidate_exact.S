.section .text,"ax",@progbits
.align 2
.global aw22xxx_alloc_name_array
.type aw22xxx_alloc_name_array, %function
aw22xxx_alloc_name_array:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x8
    .inst 0x52819801
    .inst 0x52800b02
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61c0
    .inst 0xf9000260
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0xb4000cc0
    .inst 0xaa1f03f4
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x30
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_alloc_name_array._alloc_tag.171
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_alloc_name_array._alloc_tag.171
    .inst 0xd5384116
    .inst 0xd503201f
    .inst 0xf94002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x30
    .inst 0x52819801
    .inst 0x52800802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003e8
    .inst 0xf9400260
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0xf8347808
    .inst 0xb4000be8
    .inst 0x91000694
    .inst 0xf1002e9f
    .inst 0x54fffea1
    .inst 0x1400000a
    .inst 0xf94002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x30
    .inst 0xf9402ad8
    .inst 0x52819801
    .inst 0x52800802
    .inst 0xf9002ad7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003e8
    .inst 0xf9002ad8
    .inst 0x17fffff1
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x18ac
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x18ac
    .inst 0xf9400008
    .inst 0xf940012a
    .inst 0xf8406129
    .inst 0x9000000b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1537
    .inst 0x9100016b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1537
    .inst 0x9000000d
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xaca
    .inst 0x910001ad
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xaca
    .inst 0xf900010a
    .inst 0x90000010
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x415
    .inst 0x91000210
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x415
    .inst 0xf940026a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0xf8006109
    .inst 0xf9400168
    .inst 0xf840716b
    .inst 0xa9400211
    .inst 0xf9400549
    .inst 0xf840f210
    .inst 0xf9000128
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x405
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x405
    .inst 0xf800712b
    .inst 0x9000000b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xd40
    .inst 0x9100016b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xd40
    .inst 0xf9400949
    .inst 0xa940210a
    .inst 0xa9402d6c
    .inst 0xa900212a
    .inst 0x52800dc8
    .inst 0xf940026a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0xf9400d49
    .inst 0x79002128
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x274
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x274
    .inst 0xa9002d2c
    .inst 0xf9400109
    .inst 0xf8407108
    .inst 0xf940114a
    .inst 0x9000000b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x16ec
    .inst 0x9100016b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x16ec
    .inst 0xf840e16c
    .inst 0xf9000149
    .inst 0xf9400269
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0xf8007148
    .inst 0xa940296b
    .inst 0xf9401528
    .inst 0xa900290b
    .inst 0xf800e10c
    .inst 0xf9401928
    .inst 0xa94039a9
    .inst 0xf94009ad
    .inst 0xa9003909
    .inst 0xf940026f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0xf900090d
    .inst 0xf9401de8
    .inst 0xa9000111
    .inst 0xf800f110
    .inst 0xf94021e8
    .inst 0xa900290b
    .inst 0xf940026a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0xf800e10c
    .inst 0xf9402548
    .inst 0xa9003909
    .inst 0xf900090d
    .inst 0xf9402948
    .inst 0xa9000111
    .inst 0xf800f110
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x2e3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x2e3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1646
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1646
    .inst 0x5280d0e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff4
    .inst 0xb4000154
    .inst 0x91000694
    .inst 0xf9400268
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0x51000a89
    .inst 0xf8695900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xd1000694
    .inst 0xf100069f
    .inst 0x54ffff4c
    .inst 0xf9400260
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x2e3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x2e3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1646
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1646
    .inst 0x5280d242
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe2
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x8
    .inst 0xd5384113
    .inst 0xf9402a74
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_alloc_name_array._alloc_tag
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_alloc_name_array._alloc_tag
    .inst 0x52819801
    .inst 0x52800b02
    .inst 0xf9002a68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xf9002a74
    .inst 0x17ffff74
.size aw22xxx_alloc_name_array, .-aw22xxx_alloc_name_array
