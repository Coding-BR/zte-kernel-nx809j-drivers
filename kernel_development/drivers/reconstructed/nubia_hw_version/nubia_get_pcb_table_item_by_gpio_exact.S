.section .text,"ax",@progbits
.align 2
.global nubia_get_pcb_table_item_by_gpio
.type nubia_get_pcb_table_item_by_gpio, %function
    .word 0x7694f747
nubia_get_pcb_table_item_by_gpio:
    .inst 0xaa1f03e2
    .inst 0xb4000260
    .inst 0x34000241
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio1_v
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio2_v
    .inst 0x2a0103ea
    .inst 0x39400108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio1_v
    .inst 0x39400129
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio2_v
    .inst 0x14000004
    .inst 0xf100054a
    .inst 0x91006000
    .inst 0x54000100
    .inst 0xb940000b
    .inst 0x6b08017f
    .inst 0x54ffff61
    .inst 0xb940040b
    .inst 0x6b09017f
    .inst 0x54ffff01
    .inst 0xd65f03c0
    .inst 0xaa1f03e2
    .inst 0xaa0203e0
    .inst 0xd65f03c0
.size nubia_get_pcb_table_item_by_gpio, .-nubia_get_pcb_table_item_by_gpio
