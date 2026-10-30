.section .bss,"aw",@nobits
.align 3

.section .text,"ax",@progbits
.align 2
.global syna_tcm_erase_mtp_data
.type syna_tcm_erase_mtp_data, %function
.word 0x627e4777
syna_tcm_erase_mtp_data:
    .inst 0xd503233f
    .inst 0xd103c3ff
    .inst 0xa90b7bfd
    .inst 0xa90c5ff8
    .inst 0xa90d57f6
    .inst 0xa90e4ff4
    .inst 0x9102c3fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xb4000d60
    .inst 0xaa0003f3
    .inst 0x910043e8
    .inst 0xa9087fff
    .inst 0xa908fd1f
    .inst 0xf900411f
    .inst 0xa9077fff
    .inst 0xa9067fff
    .inst 0xa9057fff
    .inst 0xa9047fff
    .inst 0xa9037fff
    .inst 0xa9027fff
    .inst 0xa9017fff
    .inst 0x34000081
    .inst 0xb9420e77
    .inst 0xb941ea74
    .inst 0x14000003
    .inst 0x2a1f03f4
    .inst 0x2a1f03f7
    .inst 0x910043e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x964
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x964
    .inst 0x91014100
    .inst 0xa9057fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x910043e1
    .inst 0xaa1303e0
    .inst 0x2a1703e2
    .inst 0x2a1403e3
    .inst 0x97fff09e
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_up_flash_access
    .inst 0x37f80a40
    .inst 0xf9401be8
    .inst 0x39400102
    .inst 0x7100085f
    .inst 0x54000bc9
    .inst 0xb9403be9
    .inst 0x39405508
    .inst 0xb9404fea
    .inst 0xb9000fff
    .inst 0x1b082528
    .inst 0x1ac90955
    .inst 0x51000508
    .inst 0x1ac90916
    .inst 0x2a1502c8
    .inst 0x7104011f
    .inst 0x54000082
    .inst 0x52800043
    .inst 0x2a1603e8
    .inst 0x14000004
    .inst 0x53087ea8
    .inst 0x52800083
    .inst 0x79001ff6
    .inst 0x39402662
    .inst 0x1b177ec5
    .inst 0x390033f5
    .inst 0x390037e8
    .inst 0x71002c5f
    .inst 0x540009c1
    .inst 0x350000a5
    .inst 0xf9402668
    .inst 0x39405108
    .inst 0x36000d28
    .inst 0x2a1f03e5
    .inst 0xf941ce68
    .inst 0x910033e2
    .inst 0xaa1303e0
    .inst 0x52800221
    .inst 0xaa1f03e4
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f808e0
    .inst 0x2a1f03f7
    .inst 0x39402668
    .inst 0x71002d1f
    .inst 0x540000a1
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_switch_fw_mode
    .inst 0x394243e2
    .inst 0x350003e2
    .inst 0xf9402bf3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000440
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1703e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000a01
    .inst 0xa94e4ff4
    .inst 0xa94d57f6
    .inst 0xa94c5ff8
    .inst 0xa94b7bfd
    .inst 0x9103c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x486b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x486b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffee
    .inst 0x2a0003f7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1506
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1506
    .inst 0x1400002f
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
    .inst 0x17ffffdd
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
    .inst 0x17ffffdd
    .inst 0x2a0003f7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2eac
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2eac
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x486b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x486b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x666c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x666c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x2a0303f7
    .inst 0x2a0503f8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1803e5
    .inst 0x2a1703e3
    .inst 0x35fff5e5
    .inst 0x17ffffaa
    .inst 0x2a0003f7
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
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4fa1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4fa1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3c54
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3c54
    .inst 0x2a1503e2
    .inst 0x2a1603e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7d44
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7d44
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x486b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x486b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffa8
    .inst 0xb9420e77
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x53b6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x53b6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x783e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x783e
    .inst 0x2a0303f8
    .inst 0x2a1703e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1703e5
    .inst 0x2a1803e3
    .inst 0x17ffff8f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_erase_mtp_data, .-syna_tcm_erase_mtp_data

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
