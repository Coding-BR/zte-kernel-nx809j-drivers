.section .text,"ax",@progbits
.align 2
.global gpio_keys_probe
.type gpio_keys_probe, %function
    .inst 0xc7f8c87c
gpio_keys_probe:
    .inst 0xd503233f
    .inst 0xd10383ff
    .inst 0xa9087bfd
    .inst 0xa9096ffc
    .inst 0xa90a67fa
    .inst 0xa90b5ff8
    .inst 0xa90c57f6
    .inst 0xa90d4ff4
    .inst 0x910203fd
    .inst 0xd5384108
    .inst 0xaa0003fa
    .inst 0x91004017
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xf9405018
    .inst 0xb4004318
    .inst 0xb9800b08
    .inst 0x52802209
    .inst 0xaa1703e0
    .inst 0x5281b802
    .inst 0x9bc97d09
    .inst 0x8b081108
    .inst 0xd37ced08
    .inst 0xb1012108
    .inst 0xda9f3108
    .inst 0xeb0903ff
    .inst 0xda9f0113
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb4005c60
    .inst 0xb9400b08
    .inst 0xaa0003f4
    .inst 0x37f86c08
    .inst 0xd37ff901
    .inst 0xaa1703e0
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9002280
    .inst 0xb4005520
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_input_allocate_device
    .inst 0xb4005b40
    .inst 0x927df268
    .inst 0xf9000298
    .inst 0xf100211f
    .inst 0x54006a40
    .inst 0xaa0003f5
    .inst 0xf9000680
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3bd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3bd
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_probe.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_probe.__key
    .inst 0x91004280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0xf9005754
    .inst 0xf90166b4
    .inst 0xf9401708
    .inst 0xb5000048
    .inst 0xf9400348
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x66a
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x66a
    .inst 0xf9014ab7
    .inst 0xa90026a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_open
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_open
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_close
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_close
    .inst 0xa91ca6a8
    .inst 0xb20083e8
    .inst 0xf2800328
    .inst 0xf2e02008
    .inst 0xf9000ea8
    .inst 0xf9402288
    .inst 0xf90072a8
    .inst 0x52800048
    .inst 0xb900daa8
    .inst 0xb9400b08
    .inst 0xb900d6a8
    .inst 0x39404308
    .inst 0x36000088
    .inst 0xf94016a8
    .inst 0xb26c0108
    .inst 0xf90016a8
    .inst 0xb9400b08
    .inst 0x7100051f
    .inst 0x540052ab
    .inst 0xf81c83b5
    .inst 0x2a1f03f5
    .inst 0xaa1f03e1
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x537
    .inst 0x9100037b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x537
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6e6
    .inst 0x9100039c
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6e6
    .inst 0x91012288
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x59a
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x59a
    .inst 0xa93dcfbf
    .inst 0xa900d3f7
    .inst 0xf90013e8
    .inst 0xf90023fa
    .inst 0xf9405348
    .inst 0xf9400313
    .inst 0xb50000e8
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_get_next_child_node
    .inst 0xf85e03b4
    .inst 0xaa0003e1
    .inst 0xb5000060
    .inst 0x140002b7
    .inst 0xf85e03b4
    .inst 0xf85d83a8
    .inst 0x52800709
    .inst 0xb9002ff5
    .inst 0x9b094d19
    .inst 0x8b081108
    .inst 0xd37ced0a
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x58a
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x58a
    .inst 0xf81e83aa
    .inst 0xf9400b29
    .inst 0xf100013f
    .inst 0x9a890108
    .inst 0xf81d03a8
    .inst 0xb1014148
    .inst 0x54006064
    .inst 0xeb08029f
    .inst 0x54006023
    .inst 0xf85e83aa
    .inst 0xf94013e8
    .inst 0x91012149
    .inst 0x8b0a0115
    .inst 0xf85c83aa
    .inst 0xeb090288
    .inst 0xf90006aa
    .inst 0xb7f85f29
    .inst 0x54005f03
    .inst 0xf100211f
    .inst 0x54005ec3
    .inst 0xf85e83a8
    .inst 0xf90002b9
    .inst 0x91053109
    .inst 0xeb090288
    .inst 0xb7f85e29
    .inst 0x54005e03
    .inst 0xf100111f
    .inst 0x54005dc3
    .inst 0xb90106bf
    .inst 0xf9001be1
    .inst 0xb5000301
    .inst 0xb9400721
    .inst 0x37f80641
    .inst 0xb9400b28
    .inst 0xf85d03a3
    .inst 0xaa1703e0
    .inst 0x7100011f
    .inst 0x528000a8
    .inst 0x9a9f1502
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_gpio_request_one
    .inst 0xb9400722
    .inst 0x37f85520
    .inst 0x2a0203e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0xa97e2ba8
    .inst 0x91016149
    .inst 0xeb090108
    .inst 0xb7f85b49
    .inst 0x54005b23
    .inst 0xf100211f
    .inst 0x54005ae3
    .inst 0xf9000aa0
    .inst 0xb50004e0
    .inst 0x140002bf
    .inst 0xf85d03a5
    .inst 0xaa1703e0
    .inst 0xaa1f03e2
    .inst 0x2a1f03e3
    .inst 0x52800024
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_fwnode_gpiod_get_index
    .inst 0xf85e83a8
    .inst 0x91016108
    .inst 0xeb080289
    .inst 0xb7f85948
    .inst 0x54005923
    .inst 0xf100213f
    .inst 0x540058e3
    .inst 0xaa0003f4
    .inst 0xb13ffc1f
    .inst 0xf9000aa0
    .inst 0x54000283
    .inst 0x31000a9f
    .inst 0x54001500
    .inst 0x3108169f
    .inst 0x540052a0
    .inst 0xaa1703e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x30b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x30b
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x34002994
    .inst 0x1400028e
    .inst 0xf85e83a8
    .inst 0x91016109
    .inst 0xeb090288
    .inst 0xb7f85689
    .inst 0x54005663
    .inst 0xf100211f
    .inst 0x54005623
    .inst 0xf9400ab4
    .inst 0xb4001394
    .inst 0xf9417f53
    .inst 0xaa1f03e1
    .inst 0xf81f03bf
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_next_child
    .inst 0xb4000280
    .inst 0xaa0003f4
    .inst 0xd10043a2
    .inst 0xaa1403e0
    .inst 0xaa1b03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_property_read_string
    .inst 0x37f801c0
    .inst 0xaa1403e0
    .inst 0xaa1c03e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0xf85f03a0
    .inst 0xf9400b21
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strcmp
    .inst 0x34002740
    .inst 0xaa1303e0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_next_child
    .inst 0xaa0003f4
    .inst 0xb5fffde0
    .inst 0xb9003bff
    .inst 0xa97e27b4
    .inst 0xb9402728
    .inst 0x91016133
    .inst 0x34000248
    .inst 0xeb130289
    .inst 0xb7f851f3
    .inst 0x540051c3
    .inst 0xf100213f
    .inst 0x54005183
    .inst 0x52807d09
    .inst 0xf9400aa0
    .inst 0x1b097d01
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_set_debounce
    .inst 0x36f80100
    .inst 0xf85e83a8
    .inst 0xb1040108
    .inst 0x54005084
    .inst 0xeb08029f
    .inst 0x54005043
    .inst 0xb9402728
    .inst 0xb900baa8
    .inst 0xb9403334
    .inst 0x350001b4
    .inst 0xf85e03a8
    .inst 0xeb130108
    .inst 0xb7f84f73
    .inst 0x54004f43
    .inst 0xf100211f
    .inst 0x54004f03
    .inst 0xf9400aa0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0x2a0003f4
    .inst 0x37f84880
    .inst 0x2a1403fa
    .inst 0x14000002
    .inst 0x1280001a
    .inst 0xa97e27a8
    .inst 0x91041133
    .inst 0xeb130108
    .inst 0xb7f84db3
    .inst 0x54004d83
    .inst 0xf100111f
    .inst 0x54004d43
    .inst 0xa97e2ba8
    .inst 0xb900beb4
    .inst 0x91026149
    .inst 0xeb090108
    .inst 0xb7f84ca9
    .inst 0x54004c83
    .inst 0xf100211f
    .inst 0x54004c43
    .inst 0xb26b7be8
    .inst 0x910162a9
    .inst 0xf9002aa8
    .inst 0xa97e23b4
    .inst 0xf9002ea9
    .inst 0xf90032a9
    .inst 0xb102c108
    .inst 0x54004b44
    .inst 0xeb08029f
    .inst 0x54004b03
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_gpio_work_func
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_gpio_work_func
    .inst 0x9101c2a0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, delayed_work_timer_fn
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, delayed_work_timer_fn
    .inst 0x52a00402
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf90036a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0xeb130288
    .inst 0x54004983
    .inst 0xf100111f
    .inst 0x54004943
    .inst 0xf85e83a8
    .inst 0xb9403bf3
    .inst 0x91042109
    .inst 0xeb090288
    .inst 0xb7f848a9
    .inst 0x54004883
    .inst 0xf100111f
    .inst 0x54004843
    .inst 0x29578ea2
    .inst 0xb9403324
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x681
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x681
    .inst 0x2a1a03e1
    .inst 0x2a1303e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9402328
    .inst 0x7100091f
    .inst 0x540001e0
    .inst 0xf94023fa
    .inst 0x7100051f
    .inst 0x54000301
    .inst 0xf85e83a8
    .inst 0x91052109
    .inst 0xeb090288
    .inst 0xb7f84629
    .inst 0x54004603
    .inst 0xf100111f
    .inst 0x540045c3
    .inst 0x7100027f
    .inst 0x52800028
    .inst 0x1a880508
    .inst 0x1400000c
    .inst 0xf85e83a8
    .inst 0xf94023fa
    .inst 0x91052109
    .inst 0xeb090288
    .inst 0xb7f844a9
    .inst 0x54004483
    .inst 0xf100111f
    .inst 0x54004443
    .inst 0x7100027f
    .inst 0x52800028
    .inst 0x1a881508
    .inst 0xb90102a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_gpio_isr
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_gpio_isr
    .inst 0x52800073
    .inst 0x14000025
    .inst 0xf85e03a9
    .inst 0xeb080128
    .inst 0x540042e3
    .inst 0xf100211f
    .inst 0x540042a3
    .inst 0xf9000abf
    .inst 0xb9403328
    .inst 0x340037a8
    .inst 0xa97e27b4
    .inst 0x9104112a
    .inst 0xeb0a0289
    .inst 0xb7f841ca
    .inst 0x540041a3
    .inst 0xf100113f
    .inst 0x54004163
    .inst 0xb900bea8
    .inst 0xb9401b28
    .inst 0x7100091f
    .inst 0x540036a2
    .inst 0xf85e83a8
    .inst 0xb1024108
    .inst 0x54004084
    .inst 0xeb08029f
    .inst 0x54004043
    .inst 0xb9402728
    .inst 0x910082a0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_irq_timer
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_irq_timer
    .inst 0x2a1f03e2
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xb9004aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0xaa1f03f3
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_irq_isr
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_irq_isr
    .inst 0xf9001fe8
    .inst 0xf85e83a8
    .inst 0xb1018108
    .inst 0x54003e44
    .inst 0xeb08029f
    .inst 0x54003e03
    .inst 0xf9400be8
    .inst 0xf85d83aa
    .inst 0xf85c83a0
    .inst 0xf9402108
    .inst 0x8b0a0509
    .inst 0xf9000ea9
    .inst 0xb9400329
    .inst 0x782a7909
    .inst 0xb9401b28
    .inst 0xf9400ea9
    .inst 0x7100051f
    .inst 0x79400122
    .inst 0x1a9f8501
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_set_capability
    .inst 0xaa1703e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, gpio_keys_quiesce_key
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, gpio_keys_quiesce_key
    .inst 0xaa1503e2
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x44c
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x44c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __devm_add_action
    .inst 0x35002d60
    .inst 0x3940a328
    .inst 0xb2790269
    .inst 0x7100011f
    .inst 0xa97e2fa8
    .inst 0x9a891263
    .inst 0x9104116a
    .inst 0xeb0a0108
    .inst 0xb7f83a4a
    .inst 0x54003a23
    .inst 0xf100111f
    .inst 0x540039e3
    .inst 0xb940bea1
    .inst 0xf9401fe2
    .inst 0xaa1703e0
    .inst 0xf85d03a4
    .inst 0xaa1503e5
    .inst 0xf9000fe3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_request_any_context_irq
    .inst 0x37f82be0
    .inst 0xf9417f54
    .inst 0xaa1f03e1
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_next_child
    .inst 0xb40003a0
    .inst 0xa97e2faa
    .inst 0xaa0003f3
    .inst 0x91043168
    .inst 0xeb080149
    .inst 0xfa442920
    .inst 0x91044169
    .inst 0xfa402908
    .inst 0x1a9fa7fa
    .inst 0xf100013f
    .inst 0xfa49a140
    .inst 0x1a9f27f7
    .inst 0xaa1303e0
    .inst 0xaa1c03e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x3700365a
    .inst 0xb900c6a0
    .inst 0xaa1303e0
    .inst 0xaa1603e1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_named_gpio
    .inst 0x37003597
    .inst 0xb900caa0
    .inst 0xaa1403e0
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, of_get_next_child
    .inst 0xaa0003f3
    .inst 0xb5fffe00
    .inst 0xa97e23b4
    .inst 0xb1044113
    .inst 0x54003464
    .inst 0xeb13029f
    .inst 0x54003423
    .inst 0xb940caa0
    .inst 0x34000160
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0xf85e83a8
    .inst 0x91042109
    .inst 0xeb090288
    .inst 0xb7f83329
    .inst 0x54003303
    .inst 0xf100111f
    .inst 0x540032c3
    .inst 0xb900c2a0
    .inst 0x910342a0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x474
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x474
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, nb_setup_secondary.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, nb_setup_secondary.__key
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0xf85e83a8
    .inst 0x91043109
    .inst 0xeb090288
    .inst 0xb7f83169
    .inst 0x54003143
    .inst 0xf100111f
    .inst 0x54003103
    .inst 0xf94007f7
    .inst 0xf94023fa
    .inst 0xeb13029f
    .inst 0x54003083
    .inst 0x29588ea2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4c8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4c8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x10a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x10a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf85e83a8
    .inst 0x91042109
    .inst 0xeb090288
    .inst 0xb7f82f49
    .inst 0x54002f23
    .inst 0xf100111f
    .inst 0x54002ee3
    .inst 0xb940c2a1
    .inst 0x34000101
    .inst 0xf9401fe2
    .inst 0xf9400fe3
    .inst 0xaa1703e0
    .inst 0xf85d03a4
    .inst 0xaa1503e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_request_any_context_irq
    .inst 0x37f80200
    .inst 0xb9401f28
    .inst 0xb9800b09
    .inst 0xb9402ff5
    .inst 0xf9401be1
    .inst 0x7100011f
    .inst 0xf85d83a8
    .inst 0x1a9f06b5
    .inst 0x91000508
    .inst 0xeb09011f
    .inst 0xf81d83a8
    .inst 0x54ffc90b
    .inst 0x140000b4
    .inst 0x52800028
    .inst 0xb9003be8
    .inst 0x17fffecb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x656
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x656
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffec
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_get_child_node_count
    .inst 0x34001a20
    .inst 0x52800708
    .inst 0x2a0003f3
    .inst 0x5281b802
    .inst 0x9b287c16
    .inst 0xaa1703e0
    .inst 0x9100c2d5
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb4001960
    .inst 0xf90023fa
    .inst 0xb4002975
    .inst 0x9100c008
    .inst 0xaa0003f8
    .inst 0xb9000813
    .inst 0xf9000008
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5cd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5cd
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_property_present
    .inst 0xf10042bf
    .inst 0x54002823
    .inst 0x39404308
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x537
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x537
    .inst 0x9100a302
    .inst 0x33000008
    .inst 0xaa1703e0
    .inst 0x39004308
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_property_read_string
    .inst 0xaa1703e0
    .inst 0xaa1f03e1
    .inst 0xaa1703f9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_get_next_child_node
    .inst 0xb4001520
    .inst 0x52800608
    .inst 0xaa0003f4
    .inst 0x9000001a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x271
    .inst 0x9100035a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x271
    .inst 0x9000001b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x229
    .inst 0x9100037b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x229
    .inst 0xcb160108
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x9100039c
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x52800c17
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x12
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x12
    .inst 0xf81e83a8
    .inst 0x14000007
    .inst 0xaa1903e0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_get_next_child_node
    .inst 0xaa0003f4
    .inst 0x9100e2f7
    .inst 0xb40012a0
    .inst 0xb140069f
    .inst 0x540002c8
    .inst 0xf9400688
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, of_fwnode_ops
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, of_fwnode_ops
    .inst 0xeb09011f
    .inst 0x54000221
    .inst 0xd1006280
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, irq_of_parse_and_map
    .inst 0xb7f822b7
    .inst 0xf85e83a8
    .inst 0x8b170108
    .inst 0xf101811f
    .inst 0x54002220
    .inst 0xeb1702bf
    .inst 0x540021e3
    .inst 0xb7f821d7
    .inst 0xeb1702bf
    .inst 0x54002183
    .inst 0xf101811f
    .inst 0x54002140
    .inst 0xb8376b00
    .inst 0x8b170308
    .inst 0xaa1403e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x64b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x64b
    .inst 0xd100c102
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, fwnode_property_read_u32_array
    .inst 0x350016a0
    .inst 0x8b170313
    .inst 0xaa1403e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x537
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x537
    .inst 0xd1008262
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, fwnode_property_read_string
    .inst 0xd1006273
    .inst 0xaa1403e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x579
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x579
    .inst 0xaa1303e2
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, fwnode_property_read_u32_array
    .inst 0x34000160
    .inst 0xf10062e8
    .inst 0x54001e24
    .inst 0xeb0802bf
    .inst 0x54001de9
    .inst 0xd10062e8
    .inst 0xb7f81da8
    .inst 0xeb0802bf
    .inst 0x54001d69
    .inst 0x52800028
    .inst 0xb9000268
    .inst 0xaa1403e0
    .inst 0xaa1a03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, fwnode_property_present
    .inst 0x36000060
    .inst 0x52800020
    .inst 0x14000005
    .inst 0xaa1403e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x219
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x219
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, fwnode_property_present
    .inst 0xf10052e8
    .inst 0x54001ba4
    .inst 0xeb0802bf
    .inst 0x54001b63
    .inst 0xf10052e8
    .inst 0x54001b24
    .inst 0xeb0802bf
    .inst 0x54001ae3
    .inst 0x8b170309
    .inst 0x12000008
    .inst 0xaa1403e0
    .inst 0xd1004122
    .inst 0xaa1b03e1
    .inst 0x52800023
    .inst 0xb81ec128
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, fwnode_property_read_u32_array
    .inst 0xaa1403e0
    .inst 0xaa1c03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, fwnode_property_present
    .inst 0xf10022e8
    .inst 0x54001944
    .inst 0xeb0802bf
    .inst 0x54001909
    .inst 0xf10022e8
    .inst 0x540018c4
    .inst 0xeb0802bf
    .inst 0x54001889
    .inst 0x8b170308
    .inst 0x12000009
    .inst 0xaa1403e0
    .inst 0xd1003113
    .inst 0xaa1603e1
    .inst 0x52800023
    .inst 0xaa1303e2
    .inst 0x381f8109
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, fwnode_property_read_u32_array
    .inst 0x34fff2a0
    .inst 0xd10032e8
    .inst 0xeb0802bf
    .inst 0x540016e3
    .inst 0xb7f816c8
    .inst 0xeb0802bf
    .inst 0x54001683
    .inst 0x528000a8
    .inst 0xb9000268
    .inst 0x17ffff8c
    .inst 0x12800174
    .inst 0x140000a0
    .inst 0xb40001e1
    .inst 0xb140043f
    .inst 0x540001a8
    .inst 0xf9400428
    .inst 0xb4000168
    .inst 0xf9400508
    .inst 0xb4000128
    .inst 0xaa0103e0
    .inst 0xb85fc110
    .inst 0x729f8df1
    .inst 0x72bb34f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf85c83a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_register_device
    .inst 0x350004e0
    .inst 0x34000155
    .inst 0xaa1703e0
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_set_wakeup_capable
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_wakeup_enable
    .inst 0x14000009
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_register_device
    .inst 0x350003a0
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_wakeup_disable
    .inst 0xaa1703e0
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_set_wakeup_capable
    .inst 0x2a1f03f4
    .inst 0x1400007d
    .inst 0xf94023fa
    .inst 0xb13fff1f
    .inst 0xaa1903f7
    .inst 0x54ffa323
    .inst 0x2a1803f4
    .inst 0x14000077
    .inst 0x92800258
    .inst 0x2a1803f4
    .inst 0x14000074
    .inst 0x92800178
    .inst 0x2a1803f4
    .inst 0x14000071
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1d3
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1d3
    .inst 0x14000003
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb7
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x12800174
    .inst 0x14000068
    .inst 0x2a0003f4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1ed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1ed
    .inst 0xaa1703e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x14000061
    .inst 0x2a0003f4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5d8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5d8
    .inst 0xaa1703e0
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x1400003f
    .inst 0xa97e2ba8
    .inst 0x91041149
    .inst 0xeb090108
    .inst 0xb7f80ca9
    .inst 0x54000c83
    .inst 0xf100111f
    .inst 0x54000c43
    .inst 0xb940bea2
    .inst 0x2a0003f4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x27f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x27f
    .inst 0x14000030
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2cd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2cd
    .inst 0xaa1703e0
    .inst 0xf85d83a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x128002b4
    .inst 0x14000047
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xe8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xe8
    .inst 0x14000003
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x14e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x14e
    .inst 0xaa1703e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x128002b4
    .inst 0x14000023
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3d2
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3d2
    .inst 0xaa1903e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0xb140069f
    .inst 0x540001a8
    .inst 0xf9400688
    .inst 0xb4000168
    .inst 0xf9400508
    .inst 0xb4000128
    .inst 0xaa1403e0
    .inst 0xb85fc110
    .inst 0x729f8df1
    .inst 0x72bb34f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x928002b8
    .inst 0x2a1803f4
    .inst 0x14000029
    .inst 0x2a0003f4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x179
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x179
    .inst 0xaa1703e0
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x1400001d
    .inst 0xb9400722
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3ea
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3ea
    .inst 0xaa1703e0
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x511
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x511
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x501
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x501
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9401be0
    .inst 0xb40002a0
    .inst 0xb140041f
    .inst 0x54000268
    .inst 0xf9400408
    .inst 0xb4000228
    .inst 0xf9400508
    .inst 0xb40001e8
    .inst 0xb85fc110
    .inst 0x729f8df1
    .inst 0x72bb34f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x14000007
    .inst 0x128002b4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x511
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x511
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x501
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x501
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540001e1
    .inst 0x2a1403e0
    .inst 0xa94d4ff4
    .inst 0xa94c57f6
    .inst 0xa94b5ff8
    .inst 0xa94a67fa
    .inst 0xa9496ffc
    .inst 0xa9487bfd
    .inst 0x910383ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd4200020
    .inst 0xf900229f
    .inst 0x12800174
    .inst 0x17ffffee
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size gpio_keys_probe, .-gpio_keys_probe

.section .bss,"aw",@nobits
.align 2
.type gpio_keys_probe.__key, @object
gpio_keys_probe.__key:
.space 8
.type nb_setup_secondary.__key, @object
nb_setup_secondary.__key:
.space 4

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
.Lgpio_keys_probe_rodata_start:
.asciz "linux,can-disable"
.space 0x12 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "debounce-interval"
.space 0x24 - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] GPIO_KEY, type:%d, input:code=%d, value=%d\n"
.space 0x64 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "%*pbl"
.space 0x6a - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] %s bdata->irq_n request failed, but it is not necessary."
.space 0xb7 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to allocate input device\n"
.space 0xd8 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpio-keys_nubia"
.space 0xe8 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "Found button without gpio or irq\n"
.space 0x10a - (. - .Lgpio_keys_probe_rodata_start)
.asciz "nb_setup_secondary"
.space 0x11d - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] show GamekeyStatus, state:%d"
.space 0x14e - (. - .Lgpio_keys_probe_rodata_start)
.asciz "Only EV_KEY allowed for IRQ buttons.\n"
.space 0x174 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "keys"
.space 0x179 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "Failed to request GPIO %d, error %d\n"
.space 0x19e - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to configure IRQ %d as wakeup source: %d\n"
.space 0x1cf - (. - .Lgpio_keys_probe_rodata_start)
.asciz "%d\n"
.space 0x1d3 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to allocate state\n"
.space 0x1ed - (. - .Lgpio_keys_probe_rodata_start)
.asciz "Unable to register input device, error: %d\n"
.space 0x219 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpio-key,wakeup"
.space 0x229 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "wakeup-event-action"
.space 0x23d - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to restore interrupt trigger for IRQ %d: %d\n"
.space 0x271 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "wakeup-source"
.space 0x27f - (. - .Lgpio_keys_probe_rodata_start)
.asciz "Unable to claim irq %d; error %d\n"
.space 0x2a1 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to get gpio state: %d\n"
.space 0x2bf - (. - .Lgpio_keys_probe_rodata_start)
.asciz "disabled_keys"
.space 0x2cd - (. - .Lgpio_keys_probe_rodata_start)
.asciz "missing child device node for entry %d\n"
.space 0x2f5 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "nb_key_is_need_report"
.space 0x30b - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to get gpio: %d\n"
.space 0x323 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to shutdown\n"
.space 0x337 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "switches"
.space 0x340 - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] gpio_keys_attr_store_helper, n_events:%d, type:%d"
.space 0x386 - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] do not support store GamekeyStatus"
.space 0x3bd - (. - .Lgpio_keys_probe_rodata_start)
.asciz "&ddata->disable_lock"
.space 0x3d2 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "Button without keycode\n"
.space 0x3ea - (. - .Lgpio_keys_probe_rodata_start)
.asciz "Unable to get irq number for GPIO %d, error %d\n"
.space 0x44c - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpio_keys_quiesce_key"
.space 0x462 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "disabled_switches"
.space 0x474 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "&bdata->report_lock"
.space 0x488 - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] GPIO_KEY, type:%d, input:code=%d, state=%d\n"
.space 0x4c8 - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia]%s gpio find done, gpios:%d gpion:%d."
.space 0x501 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpio_keys_probe"
.space 0x511 - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3%s: failed to gpio_keys_setup_key!\n"
.space 0x537 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "label"
.space 0x53d - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] %s Key Open/Close half, gpios-state:%d."
.space 0x579 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "linux,input-type"
.space 0x58a - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpio_keys_nubia"
.space 0x59a - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpion"
.space 0x5a0 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to disable IRQ %d as wake source: %d\n"
.space 0x5cd - (. - .Lgpio_keys_probe_rodata_start)
.asciz "autorepeat"
.space 0x5d8 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "failed to register quiesce action, error: %d\n"
.space 0x606 - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] gpio_keys_attr_show_helper, n_events:%d, type:%d"
.space 0x64b - (. - .Lgpio_keys_probe_rodata_start)
.asciz "linux,code"
.space 0x656 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpio_keys_setup_key"
.space 0x66a - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpio-keys_nubia/input0"
.space 0x681 - (. - .Lgpio_keys_probe_rodata_start)
.byte 1
.asciz "3[gpio-keys_nubia] setup() irq:%d, bdata->irq_s:%d, bdata->irq_n:%d,, button->irq:%d, active_low:%d"
.space 0x6e6 - (. - .Lgpio_keys_probe_rodata_start)
.asciz "gpios"
.asciz "GamekeyStatus"
