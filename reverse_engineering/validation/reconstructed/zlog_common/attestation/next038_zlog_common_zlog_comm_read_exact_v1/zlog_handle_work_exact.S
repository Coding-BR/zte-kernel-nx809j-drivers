.section .text,"ax",@progbits
.align 2
.global zlog_handle_work
.type zlog_handle_work, %function
    .word 0xa607748c
zlog_handle_work:
    .inst 0xd503233f
    .inst 0xd10503ff
    .inst 0xa90e7bfd
    .inst 0xa90f6ffc
    .inst 0xa91067fa
    .inst 0xa9115ff8
    .inst 0xa91257f6
    .inst 0xa9134ff4
    .inst 0x910383fd
    .inst 0xd5384108
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x4f1
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x4f1
    .inst 0xf9438908
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x20b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x20b
    .inst 0xaa1303e1
    .inst 0xaa1303e2
    .inst 0xf81f03a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1f03f4
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_bss_base+0xb0
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_bss_base+0xb0
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x1d9
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x1d9
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6b1
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6b1
    .inst 0x5280011b
    .inst 0xd5384108
    .inst 0xf9000be8
    .inst 0x14000016
    .inst 0xaa1a03e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x4a3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x4a3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x315
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x315
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x8c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x8c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x480
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x480
    .inst 0xaa1303e1
    .inst 0xaa1c03e2
    .inst 0xd102c2b7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, zlog_reset_client
    .inst 0x91000694
    .inst 0x910482b5
    .inst 0xf100829f
    .inst 0x54001720
    .inst 0x3941a2a8
    .inst 0x34ffff68
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9401ea4
    .inst 0xd102b2bc
    .inst 0xaa1903e0
    .inst 0xaa1303e1
    .inst 0x2a1403e2
    .inst 0xaa1c03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000097
    .inst 0x9100e2a8
    .inst 0xf8fb1116
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x361ffd96
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf94026a8
    .inst 0xaa1503e0
    .inst 0x9106e918
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xd503201f
    .inst 0xaa1803e0
    .inst 0x5281b801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f7
    .inst 0xb4fff9f7
    .inst 0xaa1503e0
    .inst 0xa90c7fff
    .inst 0xa90b7fff
    .inst 0xa90a7fff
    .inst 0xa9097fff
    .inst 0xa9087fff
    .inst 0xa9077fff
    .inst 0xa9067fff
    .inst 0xa9057fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x910103e0
    .inst 0xa9047fff
    .inst 0xb9003bff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ktime_get_real_ts64
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, sys_tz
    .inst 0x910063e1
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, sys_tz
    .inst 0x531a6509
    .inst 0x4b080928
    .inst 0xf94023e9
    .inst 0xcb28c120
    .inst 0xf90023e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, rtc_time64_to_tm
    .inst 0x294523e9
    .inst 0x294413e5
    .inst 0x29431be7
    .inst 0x910143e0
    .inst 0x111db102
    .inst 0x11000523
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x255
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x255
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sprintf
    .inst 0xb94032a3
    .inst 0x2a0003f9
    .inst 0xaa1703e0
    .inst 0xaa1803e1
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x2dd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x2dd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x294626a8
    .inst 0x2a0003fa
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6f2
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6f2
    .inst 0x93407f4a
    .inst 0x2a086123
    .inst 0xcb0a0301
    .inst 0x8b0a02e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b1a0016
    .inst 0x7100073f
    .inst 0x2a1603fa
    .inst 0x540001ab
    .inst 0x7102033f
    .inst 0x54000f42
    .inst 0x93407ec8
    .inst 0x910143e9
    .inst 0x910143e3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x3e2
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x3e2
    .inst 0x3839493f
    .inst 0xcb080301
    .inst 0x8b0802e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b16001a
    .inst 0x93407f48
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x4b5
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x4b5
    .inst 0xaa1c03e3
    .inst 0xcb080301
    .inst 0x8b0802e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b1a0016
    .inst 0xd10232a3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x572
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x572
    .inst 0x93407ec8
    .inst 0xcb080301
    .inst 0x8b0802e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b160016
    .inst 0xd100b2a3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x3a9
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x3a9
    .inst 0x93407ec8
    .inst 0xcb080301
    .inst 0x8b0802e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b160016
    .inst 0xd101b2a3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x7e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x7e
    .inst 0x93407ec8
    .inst 0xcb080301
    .inst 0x8b0802e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b160016
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x76a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x76a
    .inst 0x93407ec8
    .inst 0xcb080301
    .inst 0x8b0802e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b160008
    .inst 0xf94026a2
    .inst 0x93407d19
    .inst 0xeb190308
    .inst 0x9a8833e1
    .inst 0xeb02003f
    .inst 0x54000823
    .inst 0xf9402ea1
    .inst 0x8b1902e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xf94026b6
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x8b1902c1
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, zlog_write_internal
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x6b1
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x6b1
    .inst 0x36f800c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x52f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x52f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x8c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x8c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x1d9
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x1d9
    .inst 0x17ffff53
    .inst 0x9100e2a8
    .inst 0xf9800111
    .inst 0xc85f7d16
    .inst 0x8a3b02c9
    .inst 0xc80afd09
    .inst 0x35ffffaa
    .inst 0xd5033bbf
    .inst 0x17ffff65
    .inst 0xf9400bf6
    .inst 0xaa1803e0
    .inst 0x5281b801
    .inst 0xf9402ac8
    .inst 0xf90007e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_codetag_base+0x28
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_codetag_base+0x28
    .inst 0xf9002ac8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xf94007e8
    .inst 0xaa0003f7
    .inst 0xf9002ac8
    .inst 0xb4ffe6b7
    .inst 0x17ffff66
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x4f1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x4f1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x697
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x697
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f03a9
    .inst 0xeb09011f
    .inst 0x540001a1
    .inst 0xa9534ff4
    .inst 0xa95257f6
    .inst 0xa9515ff8
    .inst 0xa95067fa
    .inst 0xa94f6ffc
    .inst 0xa94e7bfd
    .inst 0x910503ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x52800220
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0xd42aa240
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size zlog_handle_work, .-zlog_handle_work
