.section .text,"ax",@progbits
.align 2
.global zte_touch_probe
.type zte_touch_probe, %function
    .word 0xc7f8c87c
zte_touch_probe:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbb7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbb7
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d89
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d89
    .inst 0x52816542
    .inst 0xf90007e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91004280
    .inst 0x52820101
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb50000a0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb898
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb898
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000246
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0003f3
    .inst 0xf906e414
    .inst 0xf90002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9005680
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, zte_touch_pdev_register
    .inst 0xf9417e94
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x43fe
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x43fe
    .inst 0xaa1f03e2
    .inst 0xb90007ff
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xf100001f
    .inst 0x1a9f07e8
    .inst 0x39006e68
    .inst 0xb4000080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d99
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d99
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x36eb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x36eb
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xf100001f
    .inst 0x1a9f07e8
    .inst 0x39009668
    .inst 0xb40006c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8e95
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8e95
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9515
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9515
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37f80060
    .inst 0xb94007e8
    .inst 0x79007a68
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbe2d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbe2d
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37f80060
    .inst 0xb94007e8
    .inst 0x3900d268
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbe46
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbe46
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37f80060
    .inst 0xb94007e8
    .inst 0x3900d668
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x952d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x952d
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37f80060
    .inst 0xb94007e8
    .inst 0x3900da68
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x179f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x179f
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37f80060
    .inst 0xb94007e8
    .inst 0x3900de68
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x798a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x798a
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xf100001f
    .inst 0x1a9f07e8
    .inst 0x39124268
    .inst 0xb4000de0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5a3e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5a3e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11ab
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11ab
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x394013e8
    .inst 0x7100001f
    .inst 0x52800329
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7f01
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7f01
    .inst 0x910013e2
    .inst 0x1a89a108
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x39124668
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x394013e8
    .inst 0x7100001f
    .inst 0x52800289
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x36fd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x36fd
    .inst 0x910013e2
    .inst 0x1a89a108
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x39124a68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x394013e8
    .inst 0x7100001f
    .inst 0x528000a9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a5d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a5d
    .inst 0x910013e2
    .inst 0x1a89a108
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x39124e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x394013e8
    .inst 0x7100001f
    .inst 0x52800109
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5072
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5072
    .inst 0x910013e2
    .inst 0x1a89a108
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x39125268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x394013e8
    .inst 0x7100001f
    .inst 0x52800469
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbcc
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbcc
    .inst 0x910013e2
    .inst 0x1a89a108
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x39125668
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0xb94007e8
    .inst 0x7100001f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbe6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbe6
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x5a9fa108
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0xb9049a68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0xb94007e8
    .inst 0x7100001f
    .inst 0x52828029
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7f1c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7f1c
    .inst 0x910013e2
    .inst 0x1a89a108
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0xb9049e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0xb94007e8
    .inst 0x7100001f
    .inst 0x52806436
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc07
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc07
    .inst 0x910013e2
    .inst 0x1a96a108
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0xb904a268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0xb94007e8
    .inst 0x7100001f
    .inst 0x39524661
    .inst 0x1a96a108
    .inst 0x1400000d
    .inst 0x52828329
    .inst 0x91124668
    .inst 0x5280046a
    .inst 0x72a100a9
    .inst 0x52800321
    .inst 0x3912566a
    .inst 0xb9000109
    .inst 0x92de6fc8
    .inst 0xf2e00008
    .inst 0xf9024e68
    .inst 0x52806428
    .inst 0xb904a268
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1db4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1db4
    .inst 0xb904a668
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39524a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x49a0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x49a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39524e61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1dd9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1dd9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39525261
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x248a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x248a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39525661
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8498
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8498
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9449a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x79a1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x79a1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9449e61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x508d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x508d
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb944a261
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x60e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x60e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb944a661
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x24af
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x24af
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x50b7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x50b7
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x36f82a20
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x24d8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x24d8
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x36f82c00
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7f3c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7f3c
    .inst 0xaa1403e0
    .inst 0xaa1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_find_property
    .inst 0xf100001f
    .inst 0x1a9f07e8
    .inst 0x39007268
    .inst 0xb5002c40
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9501
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9501
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_touch_probe.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_touch_probe.__key
    .inst 0x91318260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4d
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4d
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_touch_probe.__key.136
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_touch_probe.__key.136
    .inst 0x91324260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8e7b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8e7b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_touch_probe.__key.138
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_touch_probe.__key.138
    .inst 0x91330260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x16bd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x16bd
    .inst 0xaa1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_mkdir
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_proc_dir
    .inst 0xf9000280
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0xb4002d60
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x30d2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x30d2
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_tp_module_Info
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_tp_module_Info
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40036e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x30e1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x30e1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_wake_gesture
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_wake_gesture
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4003660
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb88c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb88c
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_smart_cover
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_smart_cover
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40035e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6d0a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6d0a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_glove
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_glove
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4003560
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3de1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3de1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_tpfwupgrade
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_tpfwupgrade
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40034e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5523
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5523
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_suspend
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_suspend
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4003460
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x94f3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x94f3
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_headset_state
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_headset_state
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40033e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6d15
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6d15
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_rotation_limit_level
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_rotation_limit_level
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4003360
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1786
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1786
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_mrotation
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_mrotation
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40032e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8454
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8454
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_single_tap
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_single_tap
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4003260
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x245c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x245c
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_single_aod
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_single_aod
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40031e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x440a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x440a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_single_game
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_single_game
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4003160
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5033
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5033
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_get_noise
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_get_noise
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40030e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5fc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5fc
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_edge_report_limit
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_edge_report_limit
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4003060
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a55
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a55
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_onekey
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_onekey
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002fe0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7350
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7350
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_playgame
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_playgame
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002f60
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1790
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1790
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_tp_report_rate
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_tp_report_rate
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002ee0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6d2a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6d2a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_follow_hand_level
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_follow_hand_level
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002e60
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7f8f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7f8f
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_stability_level
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_stability_level
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002de0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x552b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x552b
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_sensibility_level
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_sensibility_level
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002d60
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb65
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb65
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_game_partition
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_game_partition
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002ce0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7eb8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7eb8
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_pen_only
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_pen_only
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002c60
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x30ee
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x30ee
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_finger_lock_flag
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_finger_lock_flag
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002be0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x40
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x40
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_tp_self_test
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_tp_self_test
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002b60
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7ec1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7ec1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_palm_mode
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_palm_mode
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002ae0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x845f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x845f
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_fold_state
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_fold_state
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002a60
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x735a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x735a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_fake_sleep
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_fake_sleep
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40029e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5537
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5537
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_screen_off_awake
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_screen_off_awake
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002960
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5a8d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5a8d
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_zlog_debug
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_zlog_debug
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40028e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x846a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x846a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_ghost_debug
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_ghost_debug
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002860
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2467
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2467
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_BBAT_test
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_BBAT_test
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40027e0
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9d9c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9d9c
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_tp_test
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_tp_test
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb4002760
    .inst 0xf9400282
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_proc_dir
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x60a5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x60a5
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, proc_ops_frame_data
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, proc_ops_frame_data
    .inst 0x52803681
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, proc_create
    .inst 0xb40026e0
    .inst 0xf94002b4
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf946ea88
    .inst 0xb4000cc8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3eaf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3eaf
    .inst 0x91004101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_create_and_add
    .inst 0xf9062a80
    .inst 0xb4002640
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fwimage_attr
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fwimage_attr
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sysfs_create_bin_file
    .inst 0x35002640
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_clean_all_event
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ghost_check_reset
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_mac_init
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_workqueue_init
    .inst 0x34000b60
    .inst 0x12800160
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54002781
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb94007e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb8c5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb8c5
    .inst 0x12001d01
    .inst 0x39009268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39409268
    .inst 0x34ffd528
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbe60
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbe60
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37ffd420
    .inst 0xb94007e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x49c4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x49c4
    .inst 0x12003d01
    .inst 0x79007e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe9a
    .inst 0xb94007e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5a60
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5a60
    .inst 0x12001d01
    .inst 0x39009a68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39409a68
    .inst 0x3200c3e9
    .inst 0x1b097d08
    .inst 0xb8027268
    .inst 0x17fffe97
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x73a5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x73a5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc27
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc27
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x36f81f60
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb8e2
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb8e2
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x36f81f40
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x60d8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x60d8
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x52800023
    .inst 0xaa1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_variable_u32_array
    .inst 0x37ffd0a0
    .inst 0xb94007e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11c7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11c7
    .inst 0x12003d01
    .inst 0x79004668
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe7e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8eba
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8eba
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x30ff
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x30ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff99
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5afe
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5afe
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffa2
    .inst 0xf9425a61
    .inst 0x91234262
    .inst 0x52800400
    .inst 0x52802ee3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_delayed_work_on
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, jiffies
    .inst 0x91294262
    .inst 0x52800400
    .inst 0x52809c43
    .inst 0xf905f51f
    .inst 0x392fc11f
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905fd0a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905a90a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905ad0a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905b10a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905b50a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905b90a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905bd0a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905c10a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905c50a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905c90a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905cd0a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905d10a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905d50a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905d90a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905dd0a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905e10a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905e50a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905e90a
    .inst 0xf940012a
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905ed0a
    .inst 0xf9400129
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, jiffies
    .inst 0xf905f109
    .inst 0xf9425e61
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_delayed_work_on
    .inst 0x52801fe8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2aeb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2aeb
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, init_completion.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, init_completion.__key
    .inst 0x9137a260
    .inst 0x3900767f
    .inst 0x39300268
    .inst 0xb904aa7f
    .inst 0xb90de27f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __init_swait_queue_head
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7392
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7392
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d89
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d89
    .inst 0x52816a22
    .inst 0x3938067f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0x17ffff5e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x50cb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x50cb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe47
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x371a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x371a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe4b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6d53
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6d53
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe4f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb2bf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb2bf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe53
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc3f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc3f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe57
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7f4b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7f4b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe5b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7f6a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7f6a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe5f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x64
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe63
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa4dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa4dd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe67
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9d7a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9d7a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe6b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5580
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5580
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe6f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x73bf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x73bf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe73
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x60ee
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x60ee
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe77
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x84bc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x84bc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe7b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a79
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a79
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe7f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3dfc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3dfc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe83
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x49e1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x49e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe87
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb8fa
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb8fa
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe8b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x79c4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x79c4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe8f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4416
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4416
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe93
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb2e1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb2e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe97
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbe74
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbe74
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe9b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6842
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6842
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe9f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x686a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x686a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffea3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x373e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x373e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffea7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x24fc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x24fc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffeab
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x79eb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x79eb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffeaf
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x73e2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x73e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffeb3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x375f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x375f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffeb7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8edb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8edb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffebb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5a98
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5a98
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffebf
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x50f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x50f1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffec3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x251e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x251e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffec7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1eb7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1eb7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffed0
    .inst 0x2a0003e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3eb8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3eb8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9462a80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_put
    .inst 0x17fffec9
    .inst 0xb94007e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x60b7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x60b7
    .inst 0x12003d01
    .inst 0x79003e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff00
    .inst 0xb94007e8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x17b9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x17b9
    .inst 0x12003d01
    .inst 0x79004268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff01
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size zte_touch_probe, .-zte_touch_probe

.section .rodata,"a",@progbits
.org 0xe20

.section .bss,"aw",@nobits
.org 0x10
zte_touch_probe.__key:
.org 0x11
zte_touch_probe.__key.136:
.org 0x12
zte_touch_probe.__key.138:
.org 0x13
.global init_completion.__key
init_completion.__key:
.org 0x14
.zero 0x14

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
