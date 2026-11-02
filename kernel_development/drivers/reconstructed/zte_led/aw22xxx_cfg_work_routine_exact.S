.section .text,"ax",@progbits
.align 2
.inst 0xa607748c
.global aw22xxx_cfg_work_routine
.type aw22xxx_cfg_work_routine, %function
aw22xxx_cfg_work_routine:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0xaa0003f3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x482
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x482
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x10b0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x10b0
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3942fe68
    .inst 0x7100091f
    .inst 0x54000441
    .inst 0xb940d268
    .inst 0xd108c274
    .inst 0x7100091f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_init_flg
    .inst 0x540000a1
    .inst 0x3904627f
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x360000c9
    .inst 0x14000009
    .inst 0x52800029
    .inst 0x39046269
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x370000a9
    .inst 0x52800029
    .inst 0xaa1403e0
    .inst 0x39000109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_init_cfg_update_array
    .inst 0xd108a268
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, __this_module
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, __this_module
    .inst 0xf9400103
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_dyn_name
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_dyn_name
    .inst 0x90000006
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_cfg_loaded
    .inst 0x910000c6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_cfg_loaded
    .inst 0x52800021
    .inst 0x52819804
    .inst 0xaa1403e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, request_firmware_nowait
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x6c2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x6c2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x10b0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x10b0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff7
.size aw22xxx_cfg_work_routine, .-aw22xxx_cfg_work_routine
.section .note.GNU-stack,"",@progbits
