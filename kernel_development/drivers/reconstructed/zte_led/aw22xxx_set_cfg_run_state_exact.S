.section .text,"ax",@progbits
.align 2
.global aw22xxx_set_cfg_run_state
.type aw22xxx_set_cfg_run_state, %function
aw22xxx_set_cfg_run_state:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xa90157f6
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x53187c13
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x111c
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x111c
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x921
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x921
    .inst 0xaa1603e1
    .inst 0x5280e9a2
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x530c5eb4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x22c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x22c
    .inst 0xaa1603e1
    .inst 0x5280e9e2
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1965
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1965
    .inst 0x12002ea3
    .inst 0xaa1603e1
    .inst 0x5280ea22
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x7100067f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cfg_cur_state
    .inst 0x540000a1
    .inst 0x35000094
    .inst 0xb9400109
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x121e7929
    .inst 0x14000020
    .inst 0x71000e7f
    .inst 0x540000a1
    .inst 0x35000094
    .inst 0xb9400109
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x121f7929
    .inst 0x1400001a
    .inst 0x71000e7f
    .inst 0x540000c1
    .inst 0x71000a9f
    .inst 0x54000081
    .inst 0xb9400109
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x32000129
    .inst 0x14000013
    .inst 0x71000a7f
    .inst 0x540000a1
    .inst 0x35000094
    .inst 0xb9400109
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x121d7929
    .inst 0x1400000d
    .inst 0xb9400109
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0x71000a7f
    .inst 0x540000c1
    .inst 0x5104068a
    .inst 0x71000d5f
    .inst 0x54000068
    .inst 0x321e0129
    .inst 0x14000005
    .inst 0x71000e7f
    .inst 0x5280002a
    .inst 0x1a8a054a
    .inst 0x2a0a0129
    .inst 0xb9000109
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cfg_cur_state
    .inst 0xa9424ff4
    .inst 0xa94157f6
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw22xxx_set_cfg_run_state, .-aw22xxx_set_cfg_run_state
.section .note.GNU-stack,"",@progbits
