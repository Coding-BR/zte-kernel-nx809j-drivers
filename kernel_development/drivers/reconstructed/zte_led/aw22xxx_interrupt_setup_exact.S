.section .text,"ax",@progbits
.align 2
.global aw22xxx_interrupt_setup
.type aw22xxx_interrupt_setup, %function
aw22xxx_interrupt_setup:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xf9001bf5
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1320
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1320
    .inst 0xaa1403e0
    .inst 0xf81f83a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x36f
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x36f
    .inst 0xaa1403e0
    .inst 0xaa1503e1
    .inst 0x390033ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910033e2
    .inst 0xaa1303e0
    .inst 0x52800141
    .inst 0x97fffd26
    .inst 0x394033e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x387
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x387
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x52800121
    .inst 0x390043ff
    .inst 0x97fffd1c
    .inst 0x394043e8
    .inst 0xaa1303e0
    .inst 0x52800121
    .inst 0x32000102
    .inst 0x390043e2
    .inst 0x97fffcca
    .inst 0xd10033a2
    .inst 0xaa1303e0
    .inst 0x52800121
    .inst 0x381f43bf
    .inst 0x97fffd11
    .inst 0x385f43a8
    .inst 0xaa1303e0
    .inst 0x52800121
    .inst 0x321c0102
    .inst 0x381f43a2
    .inst 0x97fffcbf
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540000e1
    .inst 0xa9444ff4
    .inst 0xf9401bf5
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_interrupt_setup, .-aw22xxx_interrupt_setup
