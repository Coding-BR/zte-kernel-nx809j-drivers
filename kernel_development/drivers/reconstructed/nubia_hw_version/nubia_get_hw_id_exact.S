.section .text,"ax",@progbits
.align 2
.global nubia_get_hw_id
.type nubia_get_hw_id, %function
    .word 0x6fbb3035
nubia_get_hw_id:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio1_v
    .inst 0x52800120
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio1_v
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_pcb_gpio2_v
    .inst 0x39800108
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, nubia_pcb_gpio2_v
    .inst 0x7100053f
    .inst 0x5400012c
    .inst 0x34000229
    .inst 0x7100053f
    .inst 0x540003c1
    .inst 0x71000d1f
    .inst 0x54000382
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x340
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x340
    .inst 0x14000013
    .inst 0x7100093f
    .inst 0x540001a0
    .inst 0x71000d3f
    .inst 0x540002a1
    .inst 0x71000d1f
    .inst 0x54000261
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0xd8
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0xd8
    .inst 0x1400000b
    .inst 0x71000d1f
    .inst 0x540001c2
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x310
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x310
    .inst 0x14000005
    .inst 0x71000d1f
    .inst 0x54000122
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_base+0x328
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_base+0x328
    .inst 0xf8687933
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_bss_base+0x18
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, nubia_hw_exact_bss_base+0x18
    .inst 0x7100051f
    .inst 0x540000c0
    .inst 0xb9400a60
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb9400a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nubia_hw_exact_rodata_str_base+0x4df
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nubia_hw_exact_rodata_str_base+0x4df
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff7
.size nubia_get_hw_id, .-nubia_get_hw_id
