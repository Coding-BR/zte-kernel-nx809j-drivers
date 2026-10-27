.section .text,"ax",@progbits
.align 2
.global aw9620x_reg_set
.type aw9620x_reg_set, %function
    .word 0x95c41a97
aw9620x_reg_set:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0xaa0303f3
    .inst 0xf9438929
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2667
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2667
    .inst 0x910003e2
    .inst 0xf90007e9
    .inst 0x910003e9
    .inst 0xf9404c14
    .inst 0xb27e0123
    .inst 0xaa0803e0
    .inst 0xf90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sscanf
    .inst 0x7100081f
    .inst 0x54000241
    .inst 0xb94003e1
    .inst 0xaa1f03e8
    .inst 0xd100e280
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_base+0x618
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_base+0x618
    .inst 0x8b08012a
    .inst 0x7940054a
    .inst 0x6b21215f
    .inst 0x540000a0
    .inst 0x91001108
    .inst 0xf10c411f
    .inst 0x54ffff41
    .inst 0x14000005
    .inst 0x38686928
    .inst 0x36080068
    .inst 0xb94007e2
    .inst 0x97ffde48
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540000e1
    .inst 0xaa1303e0
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_reg_set, .-aw9620x_reg_set
