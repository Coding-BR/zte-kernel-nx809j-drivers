.section .text,"ax",@progbits
.align 2
.global ghost_debug_read
.type ghost_debug_read, %function
    .word 0xf4e9d97c
ghost_debug_read:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xf9000bf9
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0xf9400068
    .inst 0xb4000128
    .inst 0xaa1f03e0
    .inst 0xa9444ff4
    .inst 0xf9400bf9
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0103f5
    .inst 0xaa0203f4
    .inst 0xf9400117
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xaa0303f3
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x60
    .inst 0x5281b801
    .inst 0x52820002
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xb5000240
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1dff
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1dff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x92800160
    .inst 0x17ffffe9
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x118
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x118
    .inst 0xd5384116
    .inst 0xf9402ad8
    .inst 0xf9002ac8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x60
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x60
    .inst 0x5281b801
    .inst 0x52820002
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xf9002ad8
    .inst 0xb4fffe00
    .inst 0x395246e1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1db4
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1db4
    .inst 0xaa0003f6
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39524ae1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x49a0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x49a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39524ee1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1dd9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1dd9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x395252e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x248a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x248a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x395256e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8498
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8498
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9449ae1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x79a1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x79a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9449ee1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x508d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x508d
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb944a2e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x60e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x60e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb944a6e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x24af
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x24af
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x55a2
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x55a2
    .inst 0x52800148
    .inst 0xa945b12b
    .inst 0x790052c8
    .inst 0xa940352a
    .inst 0xf9400930
    .inst 0x9000000f
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9db7
    .inst 0x910001ef
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9db7
    .inst 0x7901a2c8
    .inst 0xf80812cb
    .inst 0xf940352b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8514
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8514
    .inst 0xf80892cc
    .inst 0x9103eac0
    .inst 0xf80912cb
    .inst 0xa943ad2c
    .inst 0xf80292ca
    .inst 0x52820001
    .inst 0x52820018
    .inst 0xf80312cd
    .inst 0xf80612cc
    .inst 0xa944a92c
    .inst 0xf80692cb
    .inst 0xf80392d0
    .inst 0xf80792ca
    .inst 0xa941a92b
    .inst 0xf80712cc
    .inst 0x780f92c8
    .inst 0xf80412cb
    .inst 0xa942b92b
    .inst 0xf846f129
    .inst 0xf80492ca
    .inst 0xa94129ec
    .inst 0xf80512cb
    .inst 0x9000000b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x749b
    .inst 0x9100016b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x749b
    .inst 0xf80592ce
    .inst 0xa941b96d
    .inst 0xf9401570
    .inst 0xa9012acc
    .inst 0xf80e12cc
    .inst 0xa90bbacd
    .inst 0xf94011ee
    .inst 0xf90066d0
    .inst 0xa940416d
    .inst 0xf940096b
    .inst 0xf90012ce
    .inst 0xf80e92ca
    .inst 0xa909b6c9
    .inst 0xa94025ed
    .inst 0xa90aaed0
    .inst 0xf80f12ce
    .inst 0xa90026cd
    .inst 0xf80d92c9
    .inst 0xf80d12cd
    .inst 0x395246e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x93407c08
    .inst 0x5281e0c9
    .inst 0x39524ae3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8533
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8533
    .inst 0x9103e919
    .inst 0xcb080121
    .inst 0x8b1902c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c339
    .inst 0x39524ee3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1276
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1276
    .inst 0xcb190301
    .inst 0x8b1902c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c339
    .inst 0x395252e3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1e75
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1e75
    .inst 0xcb190301
    .inst 0x8b1902c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c339
    .inst 0x395256e3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9577
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9577
    .inst 0xcb190301
    .inst 0x8b1902c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c339
    .inst 0xb9449ae3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa55e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa55e
    .inst 0xcb190301
    .inst 0x8b1902c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c339
    .inst 0xb9449ee3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb9d1
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb9d1
    .inst 0xcb190301
    .inst 0x8b1902c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c339
    .inst 0xb944a2e3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1e94
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1e94
    .inst 0xcb190301
    .inst 0x8b1902c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c339
    .inst 0xb944a6e3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbf94
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbf94
    .inst 0xcb190301
    .inst 0x8b1902c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x8b20c337
    .inst 0xaa1503e0
    .inst 0xaa1403e1
    .inst 0xaa1303e2
    .inst 0xaa1603e3
    .inst 0xaa1703e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, simple_read_from_buffer
    .inst 0xaa1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1703e0
    .inst 0x17ffff37
.size ghost_debug_read, .-ghost_debug_read

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_debug_read_rodata.inc"

.section .codetag.alloc_tags,"aw",@progbits
.align 3
    .zero 0x118
.type ghost_debug_read._alloc_tag, %object
ghost_debug_read._alloc_tag:
    .zero 0x8
