.section .text,"ax",@progbits
.align 2
.global zte_ir_probe
.type zte_ir_probe, %function
    .word 0xba1082a1
zte_ir_probe:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0xd503201f
    .inst 0x52871d00
    .inst 0x5281b801
    .inst 0x72a00020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_large_noprof
    .inst 0xb5000280
    .inst 0x12800176
    .inst 0x2a1603e0
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x52871d00
    .inst 0xd5384114
    .inst 0xf9402a95
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_probe._alloc_tag
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_probe._alloc_tag
    .inst 0x72a00020
    .inst 0x5281b801
    .inst 0xf9002a88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_large_noprof
    .inst 0xf9002a95
    .inst 0xb4fffdc0
    .inst 0x91404c08
    .inst 0x91404c17
    .inst 0x5288e018
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x6f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x6f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_probe.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_probe.__key
    .inst 0xaa0003f4
    .inst 0x9122a100
    .inst 0xf9044af3
    .inst 0x72a00138
    .inst 0xb908a2ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x912362f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list_lock
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list_lock
    .inst 0xf9046ef5
    .inst 0xf90472f5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, minors
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, minors
    .inst 0x37000668
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, spidev_major
    .inst 0xaa1403e3
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x117
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x117
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, spidev_major
    .inst 0xaa1303e1
    .inst 0x530c2d02
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_class
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, zte_ir_class
    .inst 0xb9000282
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_create
    .inst 0xb13ffc1f
    .inst 0x54000063
    .inst 0xaa0003f6
    .inst 0x35000576
    .inst 0x14000040
    .inst 0x52800028
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, minors
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, minors
    .inst 0xf828313f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list
    .inst 0xf9400102
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, device_list
    .inst 0xeb15005f
    .inst 0x54000660
    .inst 0xf9400449
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list
    .inst 0xeb08013f
    .inst 0x540005c1
    .inst 0xf9000455
    .inst 0xf9046ee2
    .inst 0xf90472e8
    .inst 0xf9000115
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list_lock
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list_lock
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x5288e003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x137
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x137
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x18d
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x18d
    .inst 0xaa1303e1
    .inst 0x72a00123
    .inst 0xb9088af8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x528003e8
    .inst 0x2a1f03f6
    .inst 0xf9004e74
    .inst 0xb90886e8
    .inst 0x17ffffa7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x137
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x137
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x1b2
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x1b2
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800256
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list_lock
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list_lock
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x5288e003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x137
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x137
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x18d
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x18d
    .inst 0xaa1303e1
    .inst 0x72a00123
    .inst 0xb9088af8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x528003e8
    .inst 0xaa1403e0
    .inst 0xb90886e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x17ffff8f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_add_valid_or_report
    .inst 0x17ffffd3
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, minors
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, minors
    .inst 0xf9800111
    .inst 0xc85f7d09
    .inst 0xb2400129
    .inst 0xc80a7d09
    .inst 0x35ffffaa
    .inst 0x17ffffbe
.size zte_ir_probe, .-zte_ir_probe
