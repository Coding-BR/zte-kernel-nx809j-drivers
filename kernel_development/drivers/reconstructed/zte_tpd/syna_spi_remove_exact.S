.section .text,"ax",@progbits
.align 2
.global syna_spi_remove
.type syna_spi_remove, %function
.inst 0x509a2353
syna_spi_remove:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x8d8
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .data+0x8d8
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x920
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .data+0x920
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x8d0
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .data+0x8d0
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, rx_buf
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, p_device
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0xb40000e1
    .inst 0xf9400268
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000728
    .inst 0xf9403900
    .inst 0xb40006e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf900029f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tx_buf
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0xb40000e1
    .inst 0xf9400268
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb40006c8
    .inst 0xf9403900
    .inst 0xb4000680
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf900029f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, xfer
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0xb40000e1
    .inst 0xf9400268
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000668
    .inst 0xf9403900
    .inst 0xb4000620
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf900029f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x958
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .data+0x958
    .inst 0x7100051f
    .inst 0x540000c1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x968
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, .data+0x968
    .inst 0xb4000120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_put
    .inst 0x14000007
    .inst 0x540000cb
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x970
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .data+0x970
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x930
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .data+0x930
    .inst 0x7100051f
    .inst 0x540000c1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x940
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, .data+0x940
    .inst 0xb4000120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_regulator_put
    .inst 0x14000007
    .inst 0x540000cb
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0x948
    .inst 0xb9400100
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, .data+0x948
    .inst 0x7100041f
    .inst 0x5400004b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_free
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_remove_rodata_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_remove_rodata_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_remove_rodata_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_remove_rodata_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_remove_rodata_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_remove_rodata_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_remove_rodata_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_remove_rodata_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_remove_rodata_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_remove_rodata_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_remove_rodata_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_remove_rodata_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffcc
.size syna_spi_remove, .-syna_spi_remove

.section .data,"aw",@progbits
.org 0x978

.section .bss,"aw",@nobits
.org 0x8b8

.section .rodata.str1.1,"aMS",@progbits,1
.org 0x9fae
.L_syna_spi_remove_rodata_9fae:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x66, 0x72, 0x65, 0x65, 0x00
.org 0xad32
.L_syna_spi_remove_rodata_ad32:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x64, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x0a, 0x00
