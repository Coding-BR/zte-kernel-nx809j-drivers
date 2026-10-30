.section .data,"aw",@progbits
.section .bss,"aw",@nobits
.section .exit.text,"ax",@progbits
.align 2
.global cleanup_module
.type cleanup_module, %function
    .word 0xe5c47d60
cleanup_module:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x60
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .data+0x60
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, driver_unregister
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x8
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, .bss+0x8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, class_destroy
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, spidev_major
    .inst 0xf9400263
    .inst 0x2a1f03e1
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, spidev_major
    .inst 0x52802002
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __unregister_chrdev
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size cleanup_module, .-cleanup_module
