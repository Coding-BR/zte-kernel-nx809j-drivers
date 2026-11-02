
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f688 <syna_tcm_testing_0100_check_data>:
    f688: d503233f     	paciasp
    f68c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    f690: a90157f6     	stp	x22, x21, [sp, #0x10]
    f694: a9024ff4     	stp	x20, x19, [sp, #0x20]
    f698: 910003fd     	mov	x29, sp
    f69c: 39400015     	ldrb	w21, [x0]
    f6a0: 39400028     	ldrb	w8, [x1]
    f6a4: 531d7053     	lsl	w19, w2, #3
    f6a8: aa0103f4     	mov	x20, x1
    f6ac: 120002a3     	and	w3, w21, #0x1
    f6b0: 12000104     	and	w4, w8, #0x1
    f6b4: 6b04007f     	cmp	w3, w4
    f6b8: 1a9f17e0     	cset	w0, eq
    f6bc: 54000441     	b.ne	0xf744 <syna_tcm_testing_0100_check_data+0xbc>
    f6c0: 530106a3     	ubfx	w3, w21, #1, #1
    f6c4: 53010504     	ubfx	w4, w8, #1, #1
    f6c8: 6b04007f     	cmp	w3, w4
    f6cc: 54000521     	b.ne	0xf770 <syna_tcm_testing_0100_check_data+0xe8>
    f6d0: 53020aa3     	ubfx	w3, w21, #2, #1
    f6d4: 53020904     	ubfx	w4, w8, #2, #1
    f6d8: 6b04007f     	cmp	w3, w4
    f6dc: 540005c1     	b.ne	0xf794 <syna_tcm_testing_0100_check_data+0x10c>
    f6e0: 53030ea3     	ubfx	w3, w21, #3, #1
    f6e4: 53030d04     	ubfx	w4, w8, #3, #1
    f6e8: 6b04007f     	cmp	w3, w4
    f6ec: 54000661     	b.ne	0xf7b8 <syna_tcm_testing_0100_check_data+0x130>
    f6f0: 530412a3     	ubfx	w3, w21, #4, #1
    f6f4: 53041104     	ubfx	w4, w8, #4, #1
    f6f8: 6b04007f     	cmp	w3, w4
    f6fc: 54000701     	b.ne	0xf7dc <syna_tcm_testing_0100_check_data+0x154>
    f700: 530516a3     	ubfx	w3, w21, #5, #1
    f704: 53051504     	ubfx	w4, w8, #5, #1
    f708: 6b04007f     	cmp	w3, w4
    f70c: 540007a1     	b.ne	0xf800 <syna_tcm_testing_0100_check_data+0x178>
    f710: 53061aa3     	ubfx	w3, w21, #6, #1
    f714: 53061904     	ubfx	w4, w8, #6, #1
    f718: 6b04007f     	cmp	w3, w4
    f71c: 54000861     	b.ne	0xf828 <syna_tcm_testing_0100_check_data+0x1a0>
    f720: 53077ea3     	lsr	w3, w21, #7
    f724: 53077d04     	lsr	w4, w8, #7
    f728: 6b04007f     	cmp	w3, w4
    f72c: 54000901     	b.ne	0xf84c <syna_tcm_testing_0100_check_data+0x1c4>
    f730: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    f734: a94157f6     	ldp	x22, x21, [sp, #0x10]
    f738: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    f73c: d50323bf     	autiasp
    f740: d65f03c0     	ret
    f744: 90000008     	adrp	x8, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa39a
    f748: 91000108     	add	x8, x8, #0x0
		000000000000f748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa39a
    f74c: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f74c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f2
    f750: 91000021     	add	x1, x1, #0x0
		000000000000f750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f2
    f754: 2a0003f6     	mov	w22, w0
    f758: aa0803e0     	mov	x0, x8
    f75c: 2a1303e2     	mov	w2, w19
    f760: 94000000     	bl	0xf760 <syna_tcm_testing_0100_check_data+0xd8>
		000000000000f760:  R_AARCH64_CALL26	_printk
    f764: 39400288     	ldrb	w8, [x20]
    f768: 2a1603e0     	mov	w0, w22
    f76c: 17ffffd5     	b	0xf6c0 <syna_tcm_testing_0100_check_data+0x38>
    f770: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa39a
    f774: 91000000     	add	x0, x0, #0x0
		000000000000f774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa39a
    f778: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f2
    f77c: 91000021     	add	x1, x1, #0x0
		000000000000f77c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f2
    f780: 32000262     	orr	w2, w19, #0x1
    f784: 94000000     	bl	0xf784 <syna_tcm_testing_0100_check_data+0xfc>
		000000000000f784:  R_AARCH64_CALL26	_printk
    f788: 39400288     	ldrb	w8, [x20]
    f78c: 2a1f03e0     	mov	w0, wzr
    f790: 17ffffd0     	b	0xf6d0 <syna_tcm_testing_0100_check_data+0x48>
    f794: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa39a
    f798: 91000000     	add	x0, x0, #0x0
		000000000000f798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa39a
    f79c: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f79c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f2
    f7a0: 91000021     	add	x1, x1, #0x0
		000000000000f7a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f2
    f7a4: 321f0262     	orr	w2, w19, #0x2
    f7a8: 94000000     	bl	0xf7a8 <syna_tcm_testing_0100_check_data+0x120>
		000000000000f7a8:  R_AARCH64_CALL26	_printk
    f7ac: 39400288     	ldrb	w8, [x20]
    f7b0: 2a1f03e0     	mov	w0, wzr
    f7b4: 17ffffcb     	b	0xf6e0 <syna_tcm_testing_0100_check_data+0x58>
    f7b8: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f7b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa39a
    f7bc: 91000000     	add	x0, x0, #0x0
		000000000000f7bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa39a
    f7c0: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f7c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f2
    f7c4: 91000021     	add	x1, x1, #0x0
		000000000000f7c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f2
    f7c8: 32000662     	orr	w2, w19, #0x3
    f7cc: 94000000     	bl	0xf7cc <syna_tcm_testing_0100_check_data+0x144>
		000000000000f7cc:  R_AARCH64_CALL26	_printk
    f7d0: 39400288     	ldrb	w8, [x20]
    f7d4: 2a1f03e0     	mov	w0, wzr
    f7d8: 17ffffc6     	b	0xf6f0 <syna_tcm_testing_0100_check_data+0x68>
    f7dc: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f7dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa39a
    f7e0: 91000000     	add	x0, x0, #0x0
		000000000000f7e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa39a
    f7e4: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f7e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f2
    f7e8: 91000021     	add	x1, x1, #0x0
		000000000000f7e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f2
    f7ec: 321e0262     	orr	w2, w19, #0x4
    f7f0: 94000000     	bl	0xf7f0 <syna_tcm_testing_0100_check_data+0x168>
		000000000000f7f0:  R_AARCH64_CALL26	_printk
    f7f4: 39400288     	ldrb	w8, [x20]
    f7f8: 2a1f03e0     	mov	w0, wzr
    f7fc: 17ffffc1     	b	0xf700 <syna_tcm_testing_0100_check_data+0x78>
    f800: 528000a8     	mov	w8, #0x5                // =5
    f804: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa39a
    f808: 91000000     	add	x0, x0, #0x0
		000000000000f808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa39a
    f80c: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f80c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f2
    f810: 91000021     	add	x1, x1, #0x0
		000000000000f810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f2
    f814: 2a080262     	orr	w2, w19, w8
    f818: 94000000     	bl	0xf818 <syna_tcm_testing_0100_check_data+0x190>
		000000000000f818:  R_AARCH64_CALL26	_printk
    f81c: 39400288     	ldrb	w8, [x20]
    f820: 2a1f03e0     	mov	w0, wzr
    f824: 17ffffbb     	b	0xf710 <syna_tcm_testing_0100_check_data+0x88>
    f828: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa39a
    f82c: 91000000     	add	x0, x0, #0x0
		000000000000f82c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa39a
    f830: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f2
    f834: 91000021     	add	x1, x1, #0x0
		000000000000f834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f2
    f838: 321f0662     	orr	w2, w19, #0x6
    f83c: 94000000     	bl	0xf83c <syna_tcm_testing_0100_check_data+0x1b4>
		000000000000f83c:  R_AARCH64_CALL26	_printk
    f840: 39400288     	ldrb	w8, [x20]
    f844: 2a1f03e0     	mov	w0, wzr
    f848: 17ffffb6     	b	0xf720 <syna_tcm_testing_0100_check_data+0x98>
    f84c: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f84c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa39a
    f850: 91000000     	add	x0, x0, #0x0
		000000000000f850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa39a
    f854: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53f2
    f858: 91000021     	add	x1, x1, #0x0
		000000000000f858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53f2
    f85c: 32000a62     	orr	w2, w19, #0x7
    f860: 94000000     	bl	0xf860 <syna_tcm_testing_0100_check_data+0x1d8>
		000000000000f860:  R_AARCH64_CALL26	_printk
    f864: 2a1f03e0     	mov	w0, wzr
    f868: 17ffffb2     	b	0xf730 <syna_tcm_testing_0100_check_data+0xa8>
