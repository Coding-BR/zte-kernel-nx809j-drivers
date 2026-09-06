.section .text,"ax",@progbits
.align 2
.global nubia_hw_ver_remove
.type nubia_hw_ver_remove, %function
    .word 0x24a11bb9
nubia_hw_ver_remove:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xf9405413
    .inst 0xaa0003f4
    .inst 0xb4000093
    .inst 0xf9400260
    .inst 0xb4000040
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_pinctrl_put
    .inst 0x91004280
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size nubia_hw_ver_remove, .-nubia_hw_ver_remove
