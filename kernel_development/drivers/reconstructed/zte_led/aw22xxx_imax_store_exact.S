.section .text,"ax",@progbits
.align 2
.inst 0x95c41a97
.global aw22xxx_imax_store
.type aw22xxx_imax_store, %function
aw22xxx_imax_store:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xf90013f5
    .inst 0xa9034ff4
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
    .inst 0xb94007e8
    .inst 0x7100041f
    .inst 0x540003e1
    .inst 0x7100351f
    .inst 0x540003a2
    .inst 0xb902e288
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_base+0x140
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_base+0x140
    .inst 0x38684928
    .inst 0xd1004294
    .inst 0x528001e9
    .inst 0xaa1403e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x71003d1f
    .inst 0x1a893115
    .inst 0x97fff7ae
    .inst 0xaa1403e0
    .inst 0x52800161
    .inst 0x2a1503e2
    .inst 0x97fff7aa
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000201
    .inst 0xaa1303e0
    .inst 0xa9434ff4
    .inst 0xf94013f5
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x508
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x508
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x7cc
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x7cc
    .inst 0x528114e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928002b3
    .inst 0x17ffffed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_imax_store, .-aw22xxx_imax_store
.section .note.GNU-stack,"",@progbits
