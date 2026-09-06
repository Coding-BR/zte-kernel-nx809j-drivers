.section .text,"ax",@progbits
.align 2

/*
 * Keep the raw BL displacement identical to stock.  The canonical module
 * places the exported syna_tcm_buf_copy body 0x1dc bytes after the address
 * reached by the stock displacement; this padding anchors this function's
 * call sites without changing any instruction word.
 */
.space 0x1dc

.global syna_tcm_send_command
.type syna_tcm_send_command, %function
    .word 0x2e79609a
syna_tcm_send_command:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9017bfd
    .inst 0xf90013f9
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0x390013ff
    .inst 0xb4000800
    .inst 0xaa0503f3
    .inst 0xaa0403f5
    .inst 0xaa0003f4
    .inst 0x2a0103f6
    .inst 0x350000a6
    .inst 0xf9402688
    .inst 0x39405108
    .inst 0x36000ac8
    .inst 0x2a1f03e6
    .inst 0xf941ce88
    .inst 0x910013e4
    .inst 0xaa1403e0
    .inst 0x2a1603e1
    .inst 0x2a0603e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f807a0
    .inst 0xb4000075
    .inst 0x394013e8
    .inst 0x390002a8
    .inst 0xb4000593
    .inst 0x394013e8
    .inst 0x51004109
    .inst 0x7103b93f
    .inst 0x540001c8
    .inst 0xb9410e88
    .inst 0x340004c8
    .inst 0x91040281
    .inst 0x2a0003f4
    .inst 0xaa1303e0
    .inst 0x97fff764
    .inst 0x2a0003e8
    .inst 0x2a1403e0
    .inst 0x36f803e8
    .inst 0x394013e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa89e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa89e
    .inst 0x14000010
    .inst 0x51000508
    .inst 0x7100391f
    .inst 0x54000308
    .inst 0xb9415688
    .inst 0x340002c8
    .inst 0x91052281
    .inst 0x2a0003f4
    .inst 0xaa1303e0
    .inst 0x97fff754
    .inst 0x2a0003e8
    .inst 0x2a1403e0
    .inst 0x36f801e8
    .inst 0x394013e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb602
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb602
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc38c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc38c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e40
    .inst 0x14000007
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc38c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc38c
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000401
    .inst 0xa9454ff4
    .inst 0xf94013f9
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa9417bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x588c
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x588c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc38c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc38c
    .inst 0x12001ec2
    .inst 0x2a0003f6
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1603e0
    .inst 0xb5fff795
    .inst 0x17ffffbd
    .inst 0xb9420e99
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa8d0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa8d0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc38c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc38c
    .inst 0x2a0303f7
    .inst 0xaa0203f8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1903e6
    .inst 0xaa1803e2
    .inst 0x2a1703e3
    .inst 0x17ffffa1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_send_command, .-syna_tcm_send_command

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
