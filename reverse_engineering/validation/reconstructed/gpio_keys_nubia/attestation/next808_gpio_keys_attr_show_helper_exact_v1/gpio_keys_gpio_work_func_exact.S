.section .text,"ax",@progbits
.align 2
.global gpio_keys_gpio_work_func
.type gpio_keys_gpio_work_func, %function
    .inst 0xa607748c
gpio_keys_gpio_work_func:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0xd1014014
    .inst 0x91020000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xaa1403e0
    .inst 0x97ffff91
    .inst 0xf85b0268
    .inst 0xb9401d08
    .inst 0x34000088
    .inst 0xf85b8268
    .inst 0xf9414900
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, pm_relax
    .inst 0x91020260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_gpio_work_func, .-gpio_keys_gpio_work_func
