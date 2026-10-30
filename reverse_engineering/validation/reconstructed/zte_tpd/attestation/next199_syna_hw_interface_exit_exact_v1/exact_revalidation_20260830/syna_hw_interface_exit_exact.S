.section .text,"ax",@progbits
.align 2
.global syna_hw_interface_exit
.type syna_hw_interface_exit, %function
.word 0xe5c47d60
syna_hw_interface_exit:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_driver+0x20
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_driver+0x20
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, driver_unregister
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_device
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_spi_device
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, platform_device_unregister
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_hw_interface_exit, .-syna_hw_interface_exit

// Materialize the section-relative targets used by both stock data accesses.
.section .data,"aw",@progbits
.org 0x778
