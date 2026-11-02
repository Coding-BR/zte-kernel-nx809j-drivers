.section .text,"ax",@progbits
.align 2
.inst 0x95c41a97
.global aw22xxx_fw_store
.type aw22xxx_fw_store, %function
aw22xxx_fw_store:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x542
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x542
    .inst 0xf9438929
    .inst 0x910013e2
    .inst 0xaa0303f3
    .inst 0xf90007e9
    .inst 0xf9404c14
    .inst 0xaa0803e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sscanf
    .inst 0x7100041f
    .inst 0x54000141
    .inst 0xb94007e8
    .inst 0x7100051f
    .inst 0x390b7a88
    .inst 0x540000c1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, system_wq
    .inst 0x91080282
    .inst 0x52800400
    .inst 0xf9400101
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, system_wq
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_work_on
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x6218
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x6218
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
.size aw22xxx_fw_store, .-aw22xxx_fw_store
.section .note.GNU-stack,"",@progbits
