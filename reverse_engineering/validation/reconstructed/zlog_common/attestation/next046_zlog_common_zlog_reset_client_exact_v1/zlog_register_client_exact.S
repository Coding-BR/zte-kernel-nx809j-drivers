.section .text,"ax",@progbits
.align 2
.global zlog_register_client
.type zlog_register_client, %function
    .word 0x09fbc74f
zlog_register_client:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_bss_base+0x24c4
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, zlog_exact_bss_base+0x24c4
    .inst 0x36000128
    .inst 0xaa0003f3
    .inst 0xb50001c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x2ea
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x2ea
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6dd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6dd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000060
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6dd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6dd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x581
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x581
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000059
    .inst 0xaa1f03f5
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_zlog_server
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_zlog_server
    .inst 0x14000007
    .inst 0x9102c280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x910006b5
    .inst 0x91048294
    .inst 0xf10082bf
    .inst 0x54000600
    .inst 0x9102c280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39446288
    .inst 0x34fffee8
    .inst 0xb940e288
    .inst 0xb9400269
    .inst 0x6b09011f
    .inst 0x54fffe61
    .inst 0xf9400661
    .inst 0x91001280
    .inst 0x528003e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncmp
    .inst 0x35fffdc0
    .inst 0xf9400a61
    .inst 0x91009280
    .inst 0x528003e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncmp
    .inst 0x35fffd20
    .inst 0xf9400e61
    .inst 0x91011280
    .inst 0x528007e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncmp
    .inst 0x35fffc80
    .inst 0xf9401261
    .inst 0x91021280
    .inst 0x528003e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncmp
    .inst 0x35fffbe0
    .inst 0x9102c280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb9400263
    .inst 0xf9400664
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x5b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x5b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x174
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x174
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf27b6abf
    .inst 0x54000101
    .inst 0xaa1403e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6fe
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6fe
    .inst 0xb8404443
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6dd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6dd
    .inst 0x14000076
    .inst 0xf9400662
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x340
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x340
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6dd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6dd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1f03f8
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_bss_base+0x118
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_bss_base+0x118
    .inst 0xd101a2f5
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394002e8
    .inst 0x34000108
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x91000718
    .inst 0x910482f7
    .inst 0xf100831f
    .inst 0x54fffec1
    .inst 0x14000005
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x71007f1f
    .inst 0x540001e9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x9e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x9e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6dd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6dd
    .inst 0x52800402
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1f03f4
    .inst 0xaa1403e0
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x58
    .inst 0x5281b801
    .inst 0x52810002
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x58
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xf81f02e0
    .inst 0xb50002c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x502
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x502
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6dd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6dd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x17ffffe7
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_codetag_base
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_codetag_base
    .inst 0xd5384114
    .inst 0xf9402a96
    .inst 0xf9002a88
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x58
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x58
    .inst 0x5281b801
    .inst 0x52810002
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xf9002a96
    .inst 0xf81f02e0
    .inst 0xb4fffd80
    .inst 0x52810008
    .inst 0xf81d82ff
    .inst 0xd10452f6
    .inst 0xa93e22ff
    .inst 0xaa1603e0
    .inst 0x528003e2
    .inst 0xf9400661
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncpy
    .inst 0x3810b2ff
    .inst 0xf9400a61
    .inst 0xb40000a1
    .inst 0xd103d2e0
    .inst 0x528003e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncpy
    .inst 0x3812b2ff
    .inst 0xf9400e61
    .inst 0xd10462f4
    .inst 0xb40000a1
    .inst 0xd10352e0
    .inst 0x528007e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncpy
    .inst 0x3816b2ff
    .inst 0xf9401261
    .inst 0xb40000a1
    .inst 0xd10252e0
    .inst 0x528003e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncpy
    .inst 0x3818b2ff
    .inst 0xb9400268
    .inst 0xb9000298
    .inst 0x52800029
    .inst 0xb81c82e8
    .inst 0xf9401668
    .inst 0x390002e9
    .inst 0xf81902e8
    .inst 0x1400000e
    .inst 0xd100c2e8
    .inst 0x52800049
    .inst 0xf829311f
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb9400283
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6dd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6dd
    .inst 0xaa1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffaa
    .inst 0xd100c2e8
    .inst 0xf9800111
    .inst 0xc85f7d09
    .inst 0xb27f0129
    .inst 0xc80a7d09
    .inst 0x35ffffaa
    .inst 0x17fffff0
.size zlog_register_client, .-zlog_register_client
