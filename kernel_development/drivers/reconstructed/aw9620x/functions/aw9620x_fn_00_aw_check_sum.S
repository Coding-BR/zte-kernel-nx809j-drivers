.section .text,"ax",@progbits
.align 2
.global aw9620x_text_base
aw9620x_text_base:
.global aw_check_sum
.type aw_check_sum, %function
    .word 0x8203344a
aw_check_sum:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0x2a0103f3
    .inst 0xaa0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x199c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x199c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe74
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe74
    .inst 0x52800cc2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x7101927f
    .inst 0x54000b22
    .inst 0x52800a88
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x48f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x48f
    .inst 0x9ba85674
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe74
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe74
    .inst 0x52800d62
    .inst 0xb9405688
    .inst 0xb9401689
    .inst 0x4b090117
    .inst 0x52841d08
    .inst 0x8b1702b8
    .inst 0x8b080316
    .inst 0xaa1603e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9402a88
    .inst 0xb9401689
    .inst 0xb960eb14
    .inst 0x0b080128
    .inst 0x7100151f
    .inst 0x540000e3
    .inst 0xd100110a
    .inst 0xf100095f
    .inst 0x540000c2
    .inst 0x2a1f03f6
    .inst 0x52800089
    .inst 0x14000012
    .inst 0x2a1f03f6
    .inst 0x14000019
    .inst 0x927ff94d
    .inst 0x2a1f03eb
    .inst 0x2a1f03ec
    .inst 0x910011a9
    .inst 0x910016ce
    .inst 0xaa0d03ef
    .inst 0x385ff1d0
    .inst 0x384025d1
    .inst 0xf10009ef
    .inst 0x0b10016b
    .inst 0x0b11018c
    .inst 0x54ffff61
    .inst 0xeb0d015f
    .inst 0x0b0b0196
    .inst 0x54000140
    .inst 0x8b17012a
    .inst 0x52841d0b
    .inst 0xcb090108
    .inst 0x8b15014a
    .inst 0x8b0b014a
    .inst 0x38401549
    .inst 0xf1000508
    .inst 0x0b0902d6
    .inst 0x54ffffa1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2f56
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2f56
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe74
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe74
    .inst 0x52800ee2
    .inst 0x2a1303e3
    .inst 0x2a1403e4
    .inst 0x2a1603e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x6b1402df
    .inst 0x54000101
    .inst 0x2a1f03e0
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xe74
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xe74
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2435
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2435
    .inst 0xaa1503e1
    .inst 0x52800f42
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1230
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1230
    .inst 0xaa1503e1
    .inst 0x52800f62
    .inst 0x2a1303e3
    .inst 0x2a1403e4
    .inst 0x2a1603e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800040
    .inst 0x17ffffea
    .inst 0xd42aa240
.size aw_check_sum, .-aw_check_sum
