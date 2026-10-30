.section .text,"ax",@progbits
.align 2
.global syna_tcm_update_flash_block
.type syna_tcm_update_flash_block, %function
syna_tcm_update_flash_block:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9037bfd
    .inst 0xa9046ffc
    .inst 0xa90567fa
    .inst 0xa9065ff8
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xb4000381
    .inst 0xaa0203f3
    .inst 0xb40003a2
    .inst 0xaa1303e2
    .inst 0x2a0503fa
    .inst 0x2a0403f7
    .inst 0x2a0303fc
    .inst 0xaa0103f4
    .inst 0xaa0003f8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_check_flash_block
    .inst 0x2a0003f5
    .inst 0x37f80360
    .inst 0x35000415
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54003fe1
    .inst 0x2a1503e0
    .inst 0xa9484ff4
    .inst 0xa94757f6
    .inst 0xa9465ff8
    .inst 0xa94567fa
    .inst 0xa9446ffc
    .inst 0xa9437bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2917
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2917
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x41c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x41c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c3e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c3e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e15
    .inst 0x17ffffe8
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9bd4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9bd4
    .inst 0x140001d6
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x43e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x43e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c3e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c3e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3600009a
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb6f4
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb6f4
    .inst 0x1400000b
    .inst 0xb9401279
    .inst 0x35001b39
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x466
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x466
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8d8f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8d8f
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x491
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x491
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8d8f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8d8f
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1049
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1049
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c3e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c3e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb940126a
    .inst 0x3500022a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x58f7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x58f7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4af
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4af
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5f2b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5f2b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4af
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4af
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f5
    .inst 0x17ffffab
    .inst 0xb9401679
    .inst 0xb9402e95
    .inst 0x1ad50b28
    .inst 0x1b15e509
    .inst 0x35001749
    .inst 0xf9400663
    .inst 0x3600191a
    .inst 0x39422289
    .inst 0x36001ca9
    .inst 0x0b150149
    .inst 0xb81f03aa
    .inst 0xb940328a
    .inst 0x51000529
    .inst 0x39420282
    .inst 0xf90007e3
    .inst 0x1ad50929
    .inst 0xb90017f7
    .inst 0x1ad50956
    .inst 0x0b080128
    .inst 0xb81ec3a8
    .inst 0x340000c2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f05
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f05
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1b157ec8
    .inst 0x91014280
    .inst 0xb9001be8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb85ec3a9
    .inst 0x39420288
    .inst 0x2a1f03f6
    .inst 0xb85f03b7
    .inst 0x53087d29
    .inst 0x11000508
    .inst 0x39020288
    .inst 0xb90013e9
    .inst 0xb9401be8
    .inst 0xb9404a82
    .inst 0xf9402280
    .inst 0x6b0802ff
    .inst 0x1a8832fc
    .inst 0x11001b9b
    .inst 0x6b1b005f
    .inst 0x54000242
    .inst 0xb40000c0
    .inst 0xaa0003f5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000e80
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000ee0
    .inst 0x7100037f
    .inst 0x5400252d
    .inst 0xaa1b03e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9002280
    .inst 0xb4002540
    .inst 0xaa1b03e2
    .inst 0xb9004a9b
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xb9402e88
    .inst 0x0b1902cc
    .inst 0xb85f03ab
    .inst 0xf9402289
    .inst 0xb9004e9f
    .inst 0x1ac80988
    .inst 0x6b0b02ff
    .inst 0x1a9f17ea
    .inst 0x3900012a
    .inst 0xf9402289
    .inst 0x39000928
    .inst 0x53087d08
    .inst 0xf9402289
    .inst 0x39000d28
    .inst 0xb85ec3a9
    .inst 0xf9402288
    .inst 0x39001109
    .inst 0xb94013e9
    .inst 0xf9402288
    .inst 0x39001509
    .inst 0xb9402e88
    .inst 0x34000088
    .inst 0x0b080389
    .inst 0x51000529
    .inst 0x1ac80928
    .inst 0xf94007ea
    .inst 0xb94017e9
    .inst 0x34000129
    .inst 0x1b097d08
    .inst 0x5289ba69
    .inst 0x72a20c49
    .inst 0x9ba97d08
    .inst 0xd366fd15
    .inst 0xab364141
    .inst 0x540000a1
    .inst 0x140000cb
    .inst 0x2a1f03f5
    .inst 0xab364141
    .inst 0x54001900
    .inst 0xf9402288
    .inst 0x91001900
    .inst 0xb40018a0
    .inst 0xb9404a88
    .inst 0x4b160162
    .inst 0x6b02039f
    .inst 0x51001903
    .inst 0x54001748
    .inst 0x6b03039f
    .inst 0x54001708
    .inst 0xaa1c03e2
    .inst 0xb90007ec
    .inst 0x2a1903fa
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x39402702
    .inst 0xf9402299
    .inst 0x71002c5f
    .inst 0x540003a1
    .inst 0x350000b5
    .inst 0xf9402708
    .inst 0x39405108
    .inst 0x36000408
    .inst 0x2a1f03f5
    .inst 0xf941cf08
    .inst 0xaa1803e0
    .inst 0x52801fc1
    .inst 0xaa1903e2
    .inst 0x2a1b03e3
    .inst 0xaa1f03e4
    .inst 0x2a1503e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f81740
    .inst 0xb9409288
    .inst 0x6b1c02f7
    .inst 0x0b160396
    .inst 0x2a1a03f9
    .inst 0x0b1c0108
    .inst 0xb9009288
    .inst 0x54fff241
    .inst 0x140000c6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x666c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x666c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x35fffc95
    .inst 0x17ffffdf
    .inst 0xb9420f15
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x53b6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x53b6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x2a1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffdb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5fff160
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x140000b4
    .inst 0xb9401676
    .inst 0xb9402a88
    .inst 0x1ac80adb
    .inst 0x1b08db69
    .inst 0x35000269
    .inst 0x0b080329
    .inst 0xb81f43bf
    .inst 0x51000529
    .inst 0x1ac80929
    .inst 0x2a1b0128
    .inst 0x7104011f
    .inst 0x540003c2
    .inst 0x52800055
    .inst 0x2a0903e8
    .inst 0x1400001e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8904
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8904
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4af
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4af
    .inst 0x2a1903e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e15
    .inst 0x140000d4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa33f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa33f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8d8f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8d8f
    .inst 0x2a1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e15
    .inst 0x14000056
    .inst 0xaa1803e0
    .inst 0xaa1403e1
    .inst 0x2a1903e2
    .inst 0x2a0a03e4
    .inst 0x2a1703e5
    .inst 0x2a0a03f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_write_flash
    .inst 0x2a0003f5
    .inst 0x36ffe400
    .inst 0x140000b8
    .inst 0x53087f68
    .inst 0x52800095
    .inst 0x781f63a9
    .inst 0x39402702
    .inst 0x1b1c7d3c
    .inst 0xb81f03a9
    .inst 0x381f43bb
    .inst 0x71002c5f
    .inst 0x381f53a8
    .inst 0x540000c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x666c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x666c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x350002bc
    .inst 0xf9402708
    .inst 0x39405108
    .inst 0x36000168
    .inst 0x2a1f03fc
    .inst 0x14000010
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x669a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x669a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1598
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1598
    .inst 0x2a0a03f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e15
    .inst 0x1400009b
    .inst 0xb9420f1c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x53b6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x53b6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x2a1c03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf941cf08
    .inst 0xd10033a2
    .inst 0xaa1803e0
    .inst 0x52800221
    .inst 0x2a1503e3
    .inst 0xaa1f03e4
    .inst 0x2a1c03e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x36ffda60
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x885a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x885a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x52800222
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb85f03a3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4fa1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4fa1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3c54
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3c54
    .inst 0x2a1b03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa388
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa388
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8d8f
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8d8f
    .inst 0x2a1603e3
    .inst 0x2a1903e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc3d4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc3d4
    .inst 0x14000076
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x2a1c03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6c0f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6c0f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1598
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1598
    .inst 0x2a1c03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420282
    .inst 0x7100045f
    .inst 0x54000061
    .inst 0x2a1f03e8
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420288
    .inst 0x51000508
    .inst 0x91014280
    .inst 0x39020288
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb85f03b4
    .inst 0x128002b5
    .inst 0x14000049
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x885a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x885a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x52801fc2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94007e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7de2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7de2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1598
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1598
    .inst 0x2a1b03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420282
    .inst 0x2a1a03f9
    .inst 0x7100045f
    .inst 0x54000581
    .inst 0x2a1f03e8
    .inst 0x14000031
    .inst 0x39420282
    .inst 0x7100045f
    .inst 0x540008a1
    .inst 0x2a1f03e8
    .inst 0x1400004a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf900229f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1b03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4f59
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4f59
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1598
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1598
    .inst 0xf900269f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420282
    .inst 0x7100045f
    .inst 0x54000061
    .inst 0x2a1f03e8
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420288
    .inst 0x51000508
    .inst 0x91014280
    .inst 0x39020288
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb85f03b4
    .inst 0x12801e55
    .inst 0x1400000c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420288
    .inst 0x51000508
    .inst 0x91014280
    .inst 0x39020288
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xb85f03b4
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5eeb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5eeb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4af
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4af
    .inst 0x2a1903e3
    .inst 0x2a1403e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39406260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5406
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5406
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c3e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c3e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffe09
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39420288
    .inst 0x51000508
    .inst 0x91014280
    .inst 0x39020288
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x17fffe4a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_update_flash_block, .-syna_tcm_update_flash_block

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
