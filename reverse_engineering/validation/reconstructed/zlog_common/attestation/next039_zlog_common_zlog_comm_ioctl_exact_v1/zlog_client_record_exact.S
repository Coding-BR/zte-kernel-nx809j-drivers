.section .text,"ax",@progbits
.align 2
.global zlog_client_record
.type zlog_client_record, %function
    .word 0xa9602e21
zlog_client_record:
    .inst 0xd503233f
    .inst 0xd10283ff
    .inst 0xa9087bfd
    .inst 0xa9094ff4
    .inst 0x910203fd
    .inst 0xa9008fe2
    .inst 0xa90197e4
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xa9029fe6
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_bss_base+0x24c4
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, zlog_exact_bss_base+0x24c4
    .inst 0xa93effbf
    .inst 0xa93dffbf
    .inst 0x36000688
    .inst 0xaa0003f3
    .inst 0xb40006a0
    .inst 0x9102c260
    .inst 0xaa0103f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9407e68
    .inst 0xf120011f
    .inst 0x540006e2
    .inst 0x910023eb
    .inst 0x910083aa
    .inst 0xf9407e6d
    .inst 0x9100c16b
    .inst 0xf85e83ac
    .inst 0xaa2803e8
    .inst 0xa93dafaa
    .inst 0x128005e9
    .inst 0x9100e3e3
    .inst 0xa903afea
    .inst 0xa9502a6b
    .inst 0xaa1403e2
    .inst 0xf81f03a9
    .inst 0xa904a7ec
    .inst 0x8b0d0140
    .inst 0x8b080161
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vsnprintf
    .inst 0x2a0003f4
    .inst 0x37f80580
    .inst 0xa94fa269
    .inst 0x8b344129
    .inst 0xeb08013f
    .inst 0xf9007e69
    .inst 0x54000063
    .inst 0xd1000508
    .inst 0xf9007e68
    .inst 0x1400002c
    .inst 0x9103a268
    .inst 0x52800089
    .inst 0xf829311f
    .inst 0x9102c260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000421
    .inst 0x2a1403e0
    .inst 0xa9494ff4
    .inst 0xa9487bfd
    .inst 0x910283ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x581
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x581
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x3ed
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x3ed
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x275
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x275
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f4
    .inst 0x17ffffeb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x275
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x275
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x121
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x121
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f4
    .inst 0x17ffffe1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x275
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x275
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x14a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x14a
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffda
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x9103a268
    .inst 0xf9800111
    .inst 0xc85f7d09
    .inst 0xb27e0129
    .inst 0xc80a7d09
    .inst 0x35ffffaa
    .inst 0x17ffffd2
.size zlog_client_record, .-zlog_client_record
