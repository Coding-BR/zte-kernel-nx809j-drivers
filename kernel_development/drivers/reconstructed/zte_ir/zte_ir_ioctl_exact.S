.section .text,"ax",@progbits
.align 2
.global zte_ir_ioctl
.type zte_ir_ioctl, %function
    .word 0x2af6cdbb
zte_ir_ioctl:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x37f001c1
    .inst 0x528d2628
    .inst 0x92800300
    .inst 0x72a80088
    .inst 0x6b08003f
    .inst 0x54000641
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x13a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x13a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xe6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xe6
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928002a0
    .inst 0x1400002a
    .inst 0xd5384108
    .inst 0x39411909
    .inst 0xf9401014
    .inst 0x37280089
    .inst 0xf940010a
    .inst 0xaa0203e9
    .inst 0x36d0006a
    .inst 0xd378dc49
    .inst 0x8a892049
    .inst 0xb27e93ea
    .inst 0x928001a0
    .inst 0xeb0a013f
    .inst 0x540003a8
    .inst 0x9248f849
    .inst 0xd503201f
    .inst 0xd53b422a
    .inst 0xd50343df
    .inst 0xf9400508
    .inst 0xd538202b
    .inst 0xaa0803ec
    .inst 0xb340bd6c
    .inst 0xd518202c
    .inst 0xd5182008
    .inst 0xd5033fdf
    .inst 0xd51b422a
    .inst 0xb8400933
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x528d2628
    .inst 0x92800300
    .inst 0x72a80088
    .inst 0x6b08003f
    .inst 0x540000a0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x13a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x13a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xe6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xe6
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928002a0
    .inst 0x34fffeb3
    .inst 0x52871109
    .inst 0x531c6e68
    .inst 0xaa1f03e0
    .inst 0x72a00029
    .inst 0xb8296a88
    .inst 0x17ffffef
    .inst 0x928001a0
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xd5382029
    .inst 0x9240bd29
    .inst 0xd140052a
    .inst 0xd518200a
    .inst 0xd5182029
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x17ffffe3
.size zte_ir_ioctl, .-zte_ir_ioctl
