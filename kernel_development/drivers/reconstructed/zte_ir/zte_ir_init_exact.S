.section .data,"aw",@progbits
.section .bss,"aw",@nobits
.section .rodata,"a",@progbits
.org 0x190
.xword 0
.reloc .-8, R_AARCH64_ABS64, __this_module
.section .init.text,"ax",@progbits
.align 2
.global init_module
.type init_module, %function
    .word 0x6fbb3035
init_module:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x11e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x11e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xd5
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xd5
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x190
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x190
    .inst 0x2a1f03e0
    .inst 0x2a1f03e1
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __register_chrdev
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, spidev_major
    .inst 0x2a0003e1
    .inst 0xb9000280
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, spidev_major
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x14c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x14c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xc8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xc8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, class_create
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x8
    .inst 0xb13ffc1f
    .inst 0xf90002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, .bss+0x8
    .inst 0x540001c3
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x60
    .inst 0xb9400280
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, spidev_major
    .inst 0x2a1f03e1
    .inst 0xf9400103
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, .data+0x60
    .inst 0x52802002
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __unregister_chrdev
    .inst 0xb94002b3
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .bss+0x8
    .inst 0x2a1303e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, __this_module
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, __this_module
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_spi_driver
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_spi_driver
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __spi_register_driver
    .inst 0x2a0003f3
    .inst 0x36f80120
    .inst 0xf94002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, .bss+0x8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, class_destroy
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x60
    .inst 0xb9400280
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, spidev_major
    .inst 0x2a1f03e1
    .inst 0xf9400103
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, .data+0x60
    .inst 0x52802002
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __unregister_chrdev
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x170
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x170
    .inst 0x2a1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe7
.size init_module, .-init_module
