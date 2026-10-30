.section .text,"ax",@progbits
.align 2
.global tp_free_tp_firmware_data
.type tp_free_tp_firmware_data, %function
    .word 0xe5c47d60
tp_free_tp_firmware_data:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9462e60
    .inst 0xb4000180
    .inst 0xf9400408
    .inst 0xb4000108
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xf9462e68
    .inst 0xf900051f
    .inst 0xf9462e68
    .inst 0xf900011f
    .inst 0xf9462e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xf9062e7f
    .inst 0xb9044a7f
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tp_free_tp_firmware_data, .-tp_free_tp_firmware_data
.section .note.GNU-stack,"",@progbits
