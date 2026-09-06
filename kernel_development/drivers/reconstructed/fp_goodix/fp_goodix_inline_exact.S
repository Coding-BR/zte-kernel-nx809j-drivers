.section .text,"ax",@progbits

.align 2
.global _inline_copy_to_user
.type _inline_copy_to_user, %function
_inline_copy_to_user:
    .inst 0xd5384109
    .inst 0x39411928
    .inst 0x37280088
    .inst 0xf940012a
    .inst 0xaa0003e8
    .inst 0x36d0006a
    .inst 0xd378dc08
    .inst 0x8a882008
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xd367fd0a
    .inst 0x52800028
    .inst 0xb500034a
    .inst 0xd503201f
    .inst 0xd53b4228
    .inst 0xd50343df
    .inst 0xf9400529
    .inst 0xd538202a
    .inst 0xaa0903eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182009
    .inst 0xd5033fdf
    .inst 0xd51b4228
    .inst 0x9248f800
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_to_user
    .inst 0xaa0003e8
    .inst 0xd503201f
    .inst 0xd53b4229
    .inst 0xd50343df
    .inst 0xd538202a
    .inst 0x9240bd4a
    .inst 0xd140054b
    .inst 0xd518200b
    .inst 0xd518202a
    .inst 0xd5033fdf
    .inst 0xd51b4229
    .inst 0xaa0803e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size _inline_copy_to_user, .-_inline_copy_to_user

.align 2
.global _inline_copy_from_user
.type _inline_copy_from_user, %function
_inline_copy_from_user:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xd5384108
    .inst 0x39411909
    .inst 0xaa0203f3
    .inst 0xaa0003f4
    .inst 0x37280089
    .inst 0xf940010a
    .inst 0xaa0103e9
    .inst 0x36d0006a
    .inst 0xd378dc29
    .inst 0x8a892029
    .inst 0xd2c0100a
    .inst 0xaa1303f5
    .inst 0xcb13014a
    .inst 0xeb09015f
    .inst 0x540000e2
    .inst 0xcb150268
    .inst 0x2a1f03e1
    .inst 0xaa1503e2
    .inst 0x8b080280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x1400001c
    .inst 0xd503201f
    .inst 0xd53b4229
    .inst 0xd50343df
    .inst 0xf9400508
    .inst 0xd538202a
    .inst 0xaa0803eb
    .inst 0xb340bd4b
    .inst 0xd518202b
    .inst 0xd5182008
    .inst 0xd5033fdf
    .inst 0xd51b4229
    .inst 0x9248f821
    .inst 0xaa1403e0
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __arch_copy_from_user
    .inst 0xaa0003f5
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
    .inst 0xb5fffc15
    .inst 0xaa1503e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size _inline_copy_from_user, .-_inline_copy_from_user
