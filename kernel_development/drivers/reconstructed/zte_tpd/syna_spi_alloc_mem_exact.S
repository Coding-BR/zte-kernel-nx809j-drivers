.section .text,"ax",@progbits
.align 2
.global syna_spi_alloc_mem
.type syna_spi_alloc_mem, %function
syna_spi_alloc_mem:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_spi_alloc_mem.xfer_count
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, xfer
    .inst 0x2a0003f4
    .inst 0xb94002a9
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_alloc_mem.xfer_count
    .inst 0xf94002c8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0x2a0103f3
    .inst 0x6b00013f
    .inst 0x54000322
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, p_device
    .inst 0xf94002e9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000989
    .inst 0xf9403920
    .inst 0xb4000940
    .inst 0xb4000068
    .inst 0xaa0803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000988
    .inst 0xf9403900
    .inst 0xb4000940
    .inst 0x0b141288
    .inst 0x531d7108
    .inst 0x7100011f
    .inst 0x54000c2d
    .inst 0x52801108
    .inst 0x5281b802
    .inst 0x9ba87e81
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf90002c0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0xb4000c20
    .inst 0xb90002b4
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_alloc_mem.xfer_count
    .inst 0x14000006
    .inst 0x0b141289
    .inst 0xaa0803e0
    .inst 0x2a1f03e1
    .inst 0x531d7122
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, buf_size
    .inst 0xb94002a8
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, buf_size
    .inst 0x6b13011f
    .inst 0x54000582
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, rx_buf
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, p_device
    .inst 0xf94002c1
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0xb40000e1
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb40007c8
    .inst 0xf9403900
    .inst 0xb4000780
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tx_buf
    .inst 0xf9400301
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0xb40000e1
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000768
    .inst 0xf9403900
    .inst 0xb4000720
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf900031f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000468
    .inst 0xf9403900
    .inst 0xb4000420
    .inst 0x7100027f
    .inst 0x5400088d
    .inst 0x2a1303f4
    .inst 0x5281b802
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf90002c0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0xb4000880
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb4000348
    .inst 0xf9403900
    .inst 0xb4000300
    .inst 0xaa1403e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9000300
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0xb4000320
    .inst 0x2a1f03e0
    .inst 0xb90002b3
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, buf_size
    .inst 0x1400003f
    .inst 0x2a1f03e0
    .inst 0x1400003d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, p_device
    .inst 0xb5fff6c8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x1400001b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x14000025
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf900031f
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tx_buf
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_212c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_212c
    .inst 0x14000022
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, xfer
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_33d8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_33d8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_4e27
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_4e27
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb90002bf
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_spi_alloc_mem.xfer_count
    .inst 0x1400000d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf90002df
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, rx_buf
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_8bd9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_8bd9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_alloc_mem_rodata_str_4e27
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_alloc_mem_rodata_str_4e27
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb90002bf
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, buf_size
    .inst 0x12800160
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_spi_alloc_mem, .-syna_spi_alloc_mem
.section .bss,"aw",@nobits
.align 2
.type syna_spi_alloc_mem.xfer_count, %object
.size syna_spi_alloc_mem.xfer_count, 4
syna_spi_alloc_mem.xfer_count:
.zero 4
.section .rodata.str1.1,"aMS",@progbits,1
.org 0x212c
.L_syna_spi_alloc_mem_rodata_str_212c:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x74, 0x78, 0x5f, 0x62, 0x75, 0x66, 0x0a, 0x00
.org 0x33d8
.L_syna_spi_alloc_mem_rodata_str_33d8:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x78, 0x66, 0x65, 0x72, 0x0a, 0x00
.org 0x4ae7
.L_syna_spi_alloc_mem_rodata_str_4ae7:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x00
.org 0x4e27
.L_syna_spi_alloc_mem_rodata_str_4e27:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x73, 0x70, 0x69, 0x5f, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x5f, 0x6d, 0x65, 0x6d, 0x00
.org 0x6f17
.L_syna_spi_alloc_mem_rodata_str_6f17:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x65, 0x74, 0x65, 0x72, 0x0a, 0x00
.org 0x8bd9
.L_syna_spi_alloc_mem_rodata_str_8bd9:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x72, 0x78, 0x5f, 0x62, 0x75, 0x66, 0x0a, 0x00
.org 0x9fae
.L_syna_spi_alloc_mem_rodata_str_9fae:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x66, 0x72, 0x65, 0x65, 0x00
.org 0xad32
.L_syna_spi_alloc_mem_rodata_str_ad32:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x64, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x0a, 0x00
