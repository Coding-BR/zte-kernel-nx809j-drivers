.section .text,"ax",@progbits
.align 2
.global aw22xxx_play
.type aw22xxx_play, %function
    .word 0xc069e464
aw22xxx_play:
    .inst 0xd503233f
    .inst 0xa9ba7bfd
    .inst 0xa9016ffc
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_init_cfg_update_array
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x5
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_bss_base+0x5
    .inst 0xaa1303e0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_set_breath_data
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x4
    .inst 0x52801139
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b0
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b4
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b8
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x896
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x896
    .inst 0x52800335
    .inst 0x528c3517
    .inst 0x39400308
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x4
    .inst 0x1b197d08
    .inst 0x530c7d00
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xb9400348
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b0
    .inst 0xb9400369
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b4
    .inst 0x6b09011f
    .inst 0x540001c0
    .inst 0x39400388
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b8
    .inst 0x36000348
    .inst 0xb9400348
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b0
    .inst 0x1b157d08
    .inst 0x6b17011f
    .inst 0x54000568
    .inst 0x8b284281
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_set_breath_data
    .inst 0xb9400348
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b0
    .inst 0x11000508
    .inst 0xb9000348
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b0
    .inst 0x17ffffec
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, system_wq
    .inst 0x9108c262
    .inst 0x52800400
    .inst 0xf9400101
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, system_wq
    .inst 0x3900039f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b8
    .inst 0xb900035f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b0
    .inst 0xb900037f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_work_on
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xe9e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xe9e
    .inst 0xaa1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39400388
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b8
    .inst 0x3707fd08
    .inst 0xaa1303e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xaf3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xaf3
    .inst 0xaa1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffd3
    .inst 0xd42aa240
.size aw22xxx_play, .-aw22xxx_play

.section .note.GNU-stack,"",@progbits
