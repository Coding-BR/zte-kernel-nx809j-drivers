.section .text,"ax",@progbits
.align 2
.global syna_dev_module_init
.type syna_dev_module_init, %function
.word 0x6fbb3035
syna_dev_module_init:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_hw_interface_init
    .inst 0x37f80100
    .inst 0x52801900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_driver
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_driver
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, __this_module
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, __this_module
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __platform_driver_register
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_dev_module_init, .-syna_dev_module_init

// Section anchor required by the stock .data-relative ADRP/ADD pair.
.section .data,"aw",@progbits
.org 0x270
