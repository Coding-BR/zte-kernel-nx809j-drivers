.section .text,"ax",@progbits
.align 2
.global aw9620x_update_reg_set
.type aw9620x_update_reg_set, %function
    .word 0x95c41a97
aw9620x_update_reg_set:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xf90013f5
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x910013e2
    .inst 0xf9438929
    .inst 0x2a1f03e1
    .inst 0xaa0303f3
    .inst 0xf90007e9
    .inst 0xf9404c15
    .inst 0xaa0803e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x35000320
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_bss_base+0x40
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_bss_base+0x40
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb94007e8
    .inst 0x7100051f
    .inst 0x54000201
    .inst 0x385cd2a8
    .inst 0xd100e2b4
    .inst 0x350000a8
    .inst 0xb85e42a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, disable_irq
    .inst 0x52800028
    .inst 0x381cd2a8
    .inst 0xaa1403e0
    .inst 0x97fff4b5
    .reloc .-4, R_AARCH64_CALL26, aw9620x_load_def_reg_bin
    .inst 0x385cd2a8
    .inst 0x7100051f
    .inst 0x54000081
    .inst 0xb85e42a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, enable_irq
    .inst 0x381cd2bf
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_bss_base+0x40
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_bss_base+0x40
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000101
    .inst 0xaa1303e0
    .inst 0xa9434ff4
    .inst 0xf94013f5
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_update_reg_set, .-aw9620x_update_reg_set
