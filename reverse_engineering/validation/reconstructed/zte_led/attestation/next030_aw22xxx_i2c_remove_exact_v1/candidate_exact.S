.section .text,"ax",@progbits
.align 2
.global aw22xxx_i2c_remove
.type aw22xxx_i2c_remove, %function
    .word 0xa8cfcee2
aw22xxx_i2c_remove:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0xf9405c14
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x660
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x660
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x140f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x140f
    .inst 0xaa1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remove_proc_entry
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x9a0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x9a0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xb95
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xb95
    .inst 0x52813942
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9403280
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_data_base+0x398
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_data_base+0x398
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sysfs_remove_group
    .inst 0x91004280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, led_classdev_unregister
    .inst 0xb942e680
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0x2a0003e1
    .inst 0x91008260
    .inst 0xaa1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_free_irq
    .inst 0x91008260
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61d4
    .inst 0x52823289
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61d4
    .inst 0x7100011f
    .inst 0x52800168
    .inst 0x1a880128
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x6268
    .inst 0xb9000128
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x6268
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw22xxx_i2c_remove, .-aw22xxx_i2c_remove
