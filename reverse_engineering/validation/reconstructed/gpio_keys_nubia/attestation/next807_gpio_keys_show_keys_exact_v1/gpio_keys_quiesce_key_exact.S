.section .text,"ax",@progbits
.align 2
.global gpio_keys_quiesce_key
.type gpio_keys_quiesce_key, %function
    .inst 0x0ef81b7d
gpio_keys_quiesce_key:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf9400808
    .inst 0xb4000088
    .inst 0x91014000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0x14000003
    .inst 0x91008000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, timer_delete_sync
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size gpio_keys_quiesce_key, .-gpio_keys_quiesce_key
