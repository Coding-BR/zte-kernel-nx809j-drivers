.section .text,"ax",@progbits
.align 2
.global gpio_keys_close
.type gpio_keys_close, %function
    .inst 0x24407a15
gpio_keys_close:
    .inst 0xf9416408
    .inst 0xf9400108
    .inst 0xf9401108
    .inst 0xb40001c8
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf9414800
    .inst 0xb85fc110
    .inst 0x72971911
    .inst 0x72ad9031
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_close, .-gpio_keys_close
