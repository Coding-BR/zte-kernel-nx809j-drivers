.section .text,"ax",@progbits
.align 2
.global aw22xxx_led_imax_cfg
.type aw22xxx_led_imax_cfg, %function
    .word 0x9b5ae72b
aw22xxx_led_imax_cfg:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0xaa0003f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800161
    .inst 0x528000e2
    .inst 0x528000f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61c0
    .inst 0xb9430269
    .inst 0xb902f274
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x6f4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x6f4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x196
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x196
    .inst 0x528000e3
    .inst 0xf8697902
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw22xxx_led_imax_cfg, .-aw22xxx_led_imax_cfg

.section .note.GNU-stack,"",@progbits
