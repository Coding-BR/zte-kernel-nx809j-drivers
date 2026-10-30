.section .text,"ax",@progbits
.align 2
.global gpio_keys_attr_show_helper
.type gpio_keys_attr_show_helper, %function
gpio_keys_attr_show_helper:
    .inst 0x121d7848
    .inst 0x7100051f
    .inst 0x540009a1
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0x7100045f
    .inst 0x52800228
    .inst 0x52806009
    .inst 0x1a880136
    .inst 0xaa0103f3
    .inst 0xaa0003f8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_attr_show_helper_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_attr_show_helper_log
    .inst 0x2a1603e1
    .inst 0x2a0303f4
    .inst 0x2a0203f5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1603e0
    .inst 0x52819801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, bitmap_zalloc
    .inst 0xb40005e0
    .inst 0xf9400308
    .inst 0xaa0003f7
    .inst 0xb9400908
    .inst 0x7100051f
    .inst 0x5400038b
    .inst 0xaa1f03e8
    .inst 0x52800029
    .inst 0xaa1803ea
    .inst 0x1400000f
    .inst 0xf940314b
    .inst 0x7940016b
    .inst 0xd343fd6c
    .inst 0x9acb212b
    .inst 0x927d258c
    .inst 0xf86c6aed
    .inst 0xaa0b01ab
    .inst 0xf82c6aeb
    .inst 0xf940030b
    .inst 0x91000508
    .inst 0x9104414a
    .inst 0xb980096b
    .inst 0xeb0b011f
    .inst 0x5400014a
    .inst 0xf940254b
    .inst 0xb940196b
    .inst 0x6b15017f
    .inst 0x54fffee1
    .inst 0x3607fdd4
    .inst 0x3945414b
    .inst 0x7100057f
    .inst 0x54fffd60
    .inst 0x17fffff2
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_attr_show_bitmap_fmt
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_attr_show_bitmap_fmt
    .inst 0xaa1303e0
    .inst 0x5281ffe1
    .inst 0x2a1603e3
    .inst 0xaa1703e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, scnprintf
    .inst 0x93407c09
    .inst 0x52800148
    .inst 0xaa1703e0
    .inst 0x91000534
    .inst 0x78296a68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, bitmap_free
    .inst 0x14000002
    .inst 0x92800174
    .inst 0xaa1403e0
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd4210000
.size gpio_keys_attr_show_helper, .-gpio_keys_attr_show_helper
