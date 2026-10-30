.section .text,"ax",@progbits
.align 2
.global ram_work_routine
.type ram_work_routine, %function
    .word 0xa607748c
ram_work_routine:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf8580003
    .inst 0xd1098005
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, __this_module
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, __this_module
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x3a7
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x3a7
    .inst 0x90000006
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ram_load
    .inst 0x910000c6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ram_load
    .inst 0x52800021
    .inst 0x52819804
    .inst 0x390000bf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, request_firmware_nowait
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size ram_work_routine, .-ram_work_routine
