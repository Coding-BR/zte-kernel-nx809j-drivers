.section .text,"ax",@progbits
.align 2
.global aw86320_misc_para_init
.type aw86320_misc_para_init, %function
aw86320_misc_para_init:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x2a1f03e1
    .inst 0x52955542
    .inst 0xaa0003f3
    .inst 0x97fffc0d
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800801
    .inst 0x528fafa2
    .inst 0x97fffc09
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800241
    .inst 0x52822102
    .inst 0x97fffc05
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x528006c1
    .inst 0x528504a2
    .inst 0x97fffc01
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800841
    .inst 0x52830002
    .inst 0x97fffbfd
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x528008c1
    .inst 0x52820742
    .inst 0x97fffbf9
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x528008e1
    .inst 0x52827ca2
    .inst 0x97fffbf5
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800901
    .inst 0x5290d382
    .inst 0x97fffbf1
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800941
    .inst 0x528100a2
    .inst 0x97fffbed
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800961
    .inst 0x52900002
    .inst 0x97fffbe9
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw86320_misc_para_init, .-aw86320_misc_para_init
