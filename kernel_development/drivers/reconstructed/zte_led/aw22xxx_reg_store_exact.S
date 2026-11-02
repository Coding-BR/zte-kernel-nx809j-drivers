.section .text,"ax",@progbits
.align 2
.inst 0x95c41a97
.global aw22xxx_reg_store
.type aw22xxx_reg_store, %function
aw22xxx_reg_store:
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
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x10f0
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x10f0
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
    .inst 0x7104003f
    .inst 0x540001e2
    .inst 0xb94007e2
    .inst 0xd1004280
    .inst 0x97fff8db
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540001e1
    .inst 0xaa1303e0
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x508
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x508
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x3c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x3c
    .inst 0x5280f162
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928002b3
    .inst 0x17ffffee
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_reg_store, .-aw22xxx_reg_store
.section .note.GNU-stack,"",@progbits
