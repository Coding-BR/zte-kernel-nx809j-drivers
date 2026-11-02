.section .text,"ax",@progbits
.align 2
.global zlog_unregister_client
.type zlog_unregister_client, %function
    .word 0xd56e2c54
zlog_unregister_client:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_bss_base+0x24c4
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, zlog_exact_bss_base+0x24c4
    .inst 0x360000e8
    .inst 0xb9400013
    .inst 0xaa0003f4
    .inst 0x36f80173
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x5cd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x5cd
    .inst 0x14000033
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x5b6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x5b6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x581
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x581
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000030
    .inst 0x9102c280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9408680
    .inst 0xb4000040
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x52810008
    .inst 0xf9007a9f
    .inst 0xa90fa29f
    .inst 0xf800429f
    .inst 0xf800c29f
    .inst 0xf801429f
    .inst 0xf801c29f
    .inst 0xf802429f
    .inst 0xf802c29f
    .inst 0xf803429f
    .inst 0xf803c29f
    .inst 0xf804429f
    .inst 0xf804c29f
    .inst 0xf805429f
    .inst 0xf805c29f
    .inst 0xf806429f
    .inst 0xf806c29f
    .inst 0xf807429f
    .inst 0xf807c29f
    .inst 0xf809c29f
    .inst 0xf809429f
    .inst 0xf808c29f
    .inst 0xf808429f
    .inst 0xf802429f
    .inst 0xf802c29f
    .inst 0xf803429f
    .inst 0xf803c29f
    .inst 0xb900029f
    .inst 0xf900569f
    .inst 0x3904629f
    .inst 0x14000010
    .inst 0x9103a288
    .inst 0x52800029
    .inst 0xf829311f
    .inst 0x9102c280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x226
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x226
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zlog_exact_rodata_str_base+0x5b6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zlog_exact_rodata_str_base+0x5b6
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x9103a288
    .inst 0xf9800111
    .inst 0xc85f7d09
    .inst 0xb2400129
    .inst 0xc80a7d09
    .inst 0x35ffffaa
    .inst 0x17ffffee
.size zlog_unregister_client, .-zlog_unregister_client
