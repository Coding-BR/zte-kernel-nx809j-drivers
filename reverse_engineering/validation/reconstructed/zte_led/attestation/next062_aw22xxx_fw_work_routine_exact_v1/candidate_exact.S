.section .text,"ax",@progbits
.align 2
.inst 0xa607748c
.global aw22xxx_fw_work_routine
.type aw22xxx_fw_work_routine, %function
aw22xxx_fw_work_routine:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0xaa0003f3
    .inst 0xd1084014
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1098
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1098
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1778
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1778
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd1082268
    .inst 0x52800029
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, __this_module
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, __this_module
    .inst 0xf9400103
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61d8
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61d8
    .inst 0x90000006
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_fw_loaded
    .inst 0x910000c6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_fw_loaded
    .inst 0x52800021
    .inst 0x52819804
    .inst 0xaa1403e5
    .inst 0x39037e69
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, request_firmware_nowait
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw22xxx_fw_work_routine, .-aw22xxx_fw_work_routine
.section .note.GNU-stack,"",@progbits
