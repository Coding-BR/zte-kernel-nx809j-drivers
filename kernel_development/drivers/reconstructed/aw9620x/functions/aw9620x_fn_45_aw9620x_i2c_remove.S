.section .text,"ax",@progbits
.align 2
.global aw9620x_i2c_remove
.type aw9620x_i2c_remove, %function
    .word 0xa8cfcee2
aw9620x_i2c_remove:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xf9405c14
    .inst 0xaa0003f3
    .inst 0xf9410288
    .inst 0xf9400500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_unregister_device
    .inst 0xf9410288
    .inst 0xf9400500
    .inst 0xb4000060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0xf9410288
    .inst 0xf9401d00
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_unregister_device
    .inst 0xf9410288
    .inst 0xf9401d00
    .inst 0xb4000060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0xf9410288
    .inst 0xf9403500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_unregister_device
    .inst 0xf9410288
    .inst 0xf9403500
    .inst 0xb4000060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0xf9410288
    .inst 0xf9404d00
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_unregister_device
    .inst 0xf9410288
    .inst 0xf9404d00
    .inst 0xb4000060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0xf9410288
    .inst 0xf9406500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_unregister_device
    .inst 0xf9410288
    .inst 0xf9406500
    .inst 0xb4000060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0xf9410288
    .inst 0xf9407d00
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_unregister_device
    .inst 0xf9410288
    .inst 0xf9407d00
    .inst 0xb4000060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0xf9410288
    .inst 0xf9409500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_unregister_device
    .inst 0xf9410288
    .inst 0xf9409500
    .inst 0xb4000060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0xf9410288
    .inst 0xf940ad00
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_unregister_device
    .inst 0xf9410288
    .inst 0xf940ad00
    .inst 0xb4000040
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_free_device
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_data_base+0x110
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_data_base+0x110
    .inst 0x91008260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sysfs_remove_group
    .inst 0x39400688
    .inst 0x340000a8
    .inst 0xf940fe80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, regulator_disable
    .inst 0xf940fe80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, regulator_put
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw9620x_i2c_remove, .-aw9620x_i2c_remove
