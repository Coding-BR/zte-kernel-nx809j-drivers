.section .text,"ax",@progbits
.align 2
.global aw22xxx_fw_init
.type aw22xxx_fw_init, %function
aw22xxx_fw_init:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0x9109c000
    .inst 0x52800021
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_init
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_fw_timer_func
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_fw_timer_func
    .inst 0x91086269
    .inst 0xf9014e68
    .inst 0xb26b7be8
    .inst 0xf9010a68
    .inst 0xf9010e69
    .inst 0xf9011269
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_fw_work_routine
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_fw_work_routine
    .inst 0xf9011669
    .inst 0x9108e269
    .inst 0xf9011a68
    .inst 0xf9011e69
    .inst 0xf9012269
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_ver_var
    .inst 0xb9400129
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_ver_var
    .inst 0x71002d3f
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_cfg_work_routine
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_cfg_work_routine
    .inst 0xf9012669
    .inst 0x54000101
    .inst 0xf9012a68
    .inst 0x91096268
    .inst 0xf9012e68
    .inst 0xf9013268
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_recover_work_routine
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_recover_work_routine
    .inst 0xf9013668
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x42c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x42c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xda2
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xda2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52994001
    .inst 0x9109c260
    .inst 0xaa1f03e2
    .inst 0x72a77341
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_start_range_ns
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw22xxx_fw_init, .-aw22xxx_fw_init
.section .note.GNU-stack,"",@progbits
