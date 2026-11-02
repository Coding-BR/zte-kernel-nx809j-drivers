.section .text,"ax",@progbits
.align 2
.global aw9620x_soft_rst_set
.type aw9620x_soft_rst_set, %function
    .word 0x95c41a97
aw9620x_soft_rst_set:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x910013e2
    .inst 0xf9438929
    .inst 0x2a1f03e1
    .inst 0xaa0303f3
    .inst 0xf90007e9
    .inst 0xf9404c14
    .inst 0xaa0803e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x350000c0
    .inst 0xb94007e8
    .inst 0x7100051f
    .inst 0x54000061
    .inst 0xd100e280
    .inst 0x97fff535
    .reloc .-4, R_AARCH64_CALL26, aw9620x_soft_reset
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
.size aw9620x_soft_rst_set, .-aw9620x_soft_rst_set
