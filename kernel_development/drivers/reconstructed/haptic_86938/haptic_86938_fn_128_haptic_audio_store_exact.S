.section .text,"ax",@progbits
.align 2
.global haptic_audio_store
.type haptic_audio_store, %function
    .word 0x95c41a97
haptic_audio_store:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9037bfd
    .inst 0xf90023f7
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xaa0303f3
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9404c16
    .inst 0xa901ffff
    .inst 0xf9000bff
    .inst 0x3855e2c8
    .inst 0x36000b68
    .inst 0x910043e8
    .inst 0xaa0203e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7fc
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7fc
    .inst 0x910043e2
    .inst 0xb27e0103
    .inst 0x91002104
    .inst 0x91003105
    .inst 0x91004106
    .inst 0x91005107
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sscanf
    .inst 0x7100181f
    .inst 0x54000821
    .inst 0xb9401be6
    .inst 0x35000aa6
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x28
    .inst 0x5281b801
    .inst 0x52800302
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x28
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f4
    .inst 0xb40015d4
    .inst 0x911122c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x294227e8
    .inst 0x29442beb
    .inst 0x39000288
    .inst 0x39000689
    .inst 0x294327e8
    .inst 0x39000e8b
    .inst 0x39000a88
    .inst 0x12001d48
    .inst 0x7102011f
    .inst 0x12800fe8
    .inst 0x39001689
    .inst 0x1a8a8108
    .inst 0x39001288
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x28
    .inst 0x5281b801
    .inst 0x52800302
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x28
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xd102a2d5
    .inst 0xb40002c0
    .inst 0x39400288
    .inst 0xb8401289
    .inst 0x9113a2c1
    .inst 0x3940168a
    .inst 0x39000008
    .inst 0x91002008
    .inst 0xb8001009
    .inst 0x3900140a
    .inst 0xf9000408
    .inst 0xf9000808
    .inst 0xf94276c2
    .inst 0xf9400449
    .inst 0xeb01013f
    .inst 0x54000f01
    .inst 0xeb01011f
    .inst 0x54000ec0
    .inst 0xeb08005f
    .inst 0x54000e80
    .inst 0xf9000448
    .inst 0xa9008402
    .inst 0xf9000028
    .inst 0x39400688
    .inst 0x7103fd1f
    .inst 0x54000580
    .inst 0x9111e2c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_active
    .inst 0x36000840
    .inst 0x911122c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000ca1
    .inst 0xaa1303e0
    .inst 0xa9464ff4
    .inst 0xf94023f7
    .inst 0xa94557f6
    .inst 0xa9437bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2ab3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2ab3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1007
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1007
    .inst 0x52817522
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffeb
    .inst 0x294217e4
    .inst 0x2943a3e7
    .inst 0xb94027e9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1165
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1165
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1007
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1007
    .inst 0x52817622
    .inst 0xb9000be9
    .inst 0xb90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff9f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d52
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d52
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1007
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1007
    .inst 0x52817942
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x9111e2c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_active
    .inst 0x3607f9c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11ab
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11ab
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1007
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1007
    .inst 0x52817982
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x9111e2c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_cancel
    .inst 0xaa1503e0
    .inst 0x3913e2df
    .inst 0x94000053
    .reloc .-4, R_AARCH64_CALL26, audio_off
    .inst 0x17ffffc0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1264
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1264
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1007
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1007
    .inst 0x52817aa2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94292c8
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
    .inst 0xb94432c8
    .inst 0x529bd069
    .inst 0x9111e2c0
    .inst 0x72a86369
    .inst 0xaa1f03e2
    .inst 0x52800023
    .inst 0x9b297d09
    .inst 0xd37ffd2a
    .inst 0x9372fd29
    .inst 0x0b0a0129
    .inst 0x5288480a
    .inst 0x72a001ea
    .inst 0x1b0aa128
    .inst 0x52807d0a
    .inst 0x1b0a7d08
    .inst 0x5299400a
    .inst 0x72a7734a
    .inst 0x93407d08
    .inst 0x9b2a2121
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_start_range_ns
    .inst 0x17ffff97
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_add_valid_or_report
    .inst 0x17ffff8e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x28
    .inst 0xd5384115
    .inst 0xf9402ab7
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x28
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0xc8
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0xc8
    .inst 0x5281b801
    .inst 0x52800302
    .inst 0xf9002aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f4
    .inst 0xf9002ab7
    .inst 0xb5ffea94
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1966
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1966
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1007
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1007
    .inst 0x528176e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff81
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x28
    .inst 0xd5384115
    .inst 0xf9402ab7
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x28
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0xf0
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0xf0
    .inst 0x5281b801
    .inst 0x52800302
    .inst 0xf9002aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xf9002ab7
    .inst 0xd102a2d5
    .inst 0xb5ffeaa0
    .inst 0x17ffff69
.size haptic_audio_store, .-haptic_audio_store

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"

.include "haptic_86938_exact_alloc_tags_support.inc"
