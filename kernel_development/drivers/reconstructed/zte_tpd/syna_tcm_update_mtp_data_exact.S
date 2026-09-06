.section .bss,"aw",@nobits
.align 3

.section .text,"ax",@progbits
.align 2
.global syna_tcm_update_mtp_data
.type syna_tcm_update_mtp_data, %function
.word 0xdd66a5c9
syna_tcm_update_mtp_data:
    .inst 0xd503233f
    .inst 0xd103c3ff
    .inst 0xa90a7bfd
    .inst 0xa90b67fa
    .inst 0xa90c5ff8
    .inst 0xa90d57f6
    .inst 0xa90e4ff4
    .inst 0x910283fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xa908ffff
    .inst 0xa907ffff
    .inst 0xa906ffff
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xf90003ff
    .inst 0xb4000d80
    .inst 0xaa0103f7
    .inst 0xb4000da1
    .inst 0x2a0203f6
    .inst 0x34000d62
    .inst 0x2a0403f5
    .inst 0x2a0303f9
    .inst 0xaa0003f3
    .inst 0x34000084
    .inst 0xb9420e78
    .inst 0xb941ea74
    .inst 0x14000003
    .inst 0x2a1f03f4
    .inst 0x2a1f03f8
    .inst 0x910003e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x964
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x964
    .inst 0x91014100
    .inst 0xa9047fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x52800028
    .inst 0x910003e1
    .inst 0xaa1303e0
    .inst 0x2a1803e2
    .inst 0x2a1403e3
    .inst 0xb9038a68
    .inst 0x97fff243
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_up_flash_access
    .inst 0x2a0003f8
    .inst 0x37f80b00
    .inst 0xf94013e8
    .inst 0x39400102
    .inst 0x7100085f
    .inst 0x54000c69
    .inst 0xb9402fe8
    .inst 0x34000ce8
    .inst 0x340000d9
    .inst 0x0b080329
    .inst 0x51000529
    .inst 0x1ac80929
    .inst 0x1b087d3a
    .inst 0x14000002
    .inst 0x2a1f03fa
    .inst 0x0b0802c9
    .inst 0x51000529
    .inst 0x1ac80929
    .inst 0x1b087d39
    .inst 0xb9008ff9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000be0
    .inst 0x7100073f
    .inst 0x54000c0b
    .inst 0xaa1903e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb4000c20
    .inst 0xb9408fe3
    .inst 0xaa0003f8
    .inst 0x6b16007f
    .inst 0x54000c83
    .inst 0x6b16033f
    .inst 0x2a1603e2
    .inst 0x54000d43
    .inst 0xaa1803e0
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xb9403fe8
    .inst 0xb9408fe4
    .inst 0x910003e1
    .inst 0xaa1303e0
    .inst 0xaa1803e3
    .inst 0x2a1503e5
    .inst 0x0b1a0102
    .inst 0x97fffcef
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_write_flash
    .inst 0xb9408fe8
    .inst 0x7100001f
    .inst 0x1a88b018
    .inst 0x39402668
    .inst 0x71002d1f
    .inst 0x540000a1
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_switch_fw_mode
    .inst 0xb9038a7f
    .inst 0x394203e2
    .inst 0x35000442
    .inst 0xf94023f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40004a0
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540008c1
    .inst 0x2a1803e0
    .inst 0xa94e4ff4
    .inst 0xa94d57f6
    .inst 0xa94c5ff8
    .inst 0xa94b67fa
    .inst 0xa94a7bfd
    .inst 0x9103c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5e9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5e9b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1be7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1be7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e18
    .inst 0x17ffffe9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1506
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1506
    .inst 0x14000015
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffda
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
    .inst 0x17ffffda
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2eac
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2eac
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1be7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1be7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3580
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3580
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1be7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1be7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffbe
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x14000003
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
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1506
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1506
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1be7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1be7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e58
    .inst 0x17ffffaf
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1a25
    .inst 0x2a1603e2
    .inst 0x2a1603e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff9c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x52800220
    .inst 0xaa1903e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
.size syna_tcm_update_mtp_data, .-syna_tcm_update_mtp_data

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
