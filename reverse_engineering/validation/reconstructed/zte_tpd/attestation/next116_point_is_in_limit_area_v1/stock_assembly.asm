
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009664 <point_is_in_limit_area>:
    9664: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009664:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9668: 12003c2a     	and	w10, w1, #0xffff
    966c: f9400109     	ldr	x9, [x8]
		000000000000966c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9670: b940112c     	ldr	w12, [x9, #0x10]
    9674: 321f0188     	orr	w8, w12, #0x2
    9678: 71000d1f     	cmp	w8, #0x3
    967c: 12003c08     	and	w8, w0, #0xffff
    9680: 540000c1     	b.ne	0x9698 <point_is_in_limit_area+0x34>
    9684: 39409d2b     	ldrb	w11, [x9, #0x27]
    9688: 6b08017f     	cmp	w11, w8
    968c: 54000109     	b.ls	0x96ac <point_is_in_limit_area+0x48>
    9690: 52800020     	mov	w0, #0x1                // =1
    9694: d65f03c0     	ret
    9698: 39409d2b     	ldrb	w11, [x9, #0x27]
    969c: 6b08017f     	cmp	w11, w8
    96a0: 54000149     	b.ls	0x96c8 <point_is_in_limit_area+0x64>
    96a4: 52800020     	mov	w0, #0x1                // =1
    96a8: d65f03c0     	ret
    96ac: 79488528     	ldrh	w8, [x9, #0x442]
    96b0: 3940a12b     	ldrb	w11, [x9, #0x28]
    96b4: 4b0b0108     	sub	w8, w8, w11
    96b8: 6b20211f     	cmp	w8, w0, uxth
    96bc: 5400014a     	b.ge	0x96e4 <point_is_in_limit_area+0x80>
    96c0: 52800020     	mov	w0, #0x1                // =1
    96c4: d65f03c0     	ret
    96c8: 7948852b     	ldrh	w11, [x9, #0x442]
    96cc: 3940a12d     	ldrb	w13, [x9, #0x28]
    96d0: 4b0d016d     	sub	w13, w11, w13
    96d4: 6b0801bf     	cmp	w13, w8
    96d8: 5400010a     	b.ge	0x96f8 <point_is_in_limit_area+0x94>
    96dc: 52800020     	mov	w0, #0x1                // =1
    96e0: d65f03c0     	ret
    96e4: 3940a528     	ldrb	w8, [x9, #0x29]
    96e8: 6b0a011f     	cmp	w8, w10
    96ec: 54000229     	b.ls	0x9730 <point_is_in_limit_area+0xcc>
    96f0: 52800020     	mov	w0, #0x1                // =1
    96f4: d65f03c0     	ret
    96f8: 340002ec     	cbz	w12, 0x9754 <point_is_in_limit_area+0xf0>
    96fc: 3940e12c     	ldrb	w12, [x9, #0x38]
    9700: 3400026c     	cbz	w12, 0x974c <point_is_in_limit_area+0xe8>
    9704: 79405d2c     	ldrh	w12, [x9, #0x2e]
    9708: 6b0a019f     	cmp	w12, w10
    970c: 54000202     	b.hs	0x974c <point_is_in_limit_area+0xe8>
    9710: 79405929     	ldrh	w9, [x9, #0x2c]
    9714: 52800020     	mov	w0, #0x1                // =1
    9718: 6b08013f     	cmp	w9, w8
    971c: 540001a8     	b.hi	0x9750 <point_is_in_limit_area+0xec>
    9720: 4b090169     	sub	w9, w11, w9
    9724: 6b08013f     	cmp	w9, w8
    9728: 5400012a     	b.ge	0x974c <point_is_in_limit_area+0xe8>
    972c: 14000009     	b	0x9750 <point_is_in_limit_area+0xec>
    9730: 79488928     	ldrh	w8, [x9, #0x444]
    9734: 3940a929     	ldrb	w9, [x9, #0x2a]
    9738: 4b090108     	sub	w8, w8, w9
    973c: 6b21211f     	cmp	w8, w1, uxth
    9740: 5400006a     	b.ge	0x974c <point_is_in_limit_area+0xe8>
    9744: 52800020     	mov	w0, #0x1                // =1
    9748: d65f03c0     	ret
    974c: 2a1f03e0     	mov	w0, wzr
    9750: d65f03c0     	ret
    9754: 3940d12c     	ldrb	w12, [x9, #0x34]
    9758: 0b0c058c     	add	w12, w12, w12, lsl #1
    975c: 6b4c051f     	cmp	w8, w12, lsr #1
    9760: 540000c3     	b.lo	0x9778 <point_is_in_limit_area+0x114>
    9764: 3940d52c     	ldrb	w12, [x9, #0x35]
    9768: 0b0c058c     	add	w12, w12, w12, lsl #1
    976c: 4b4c056c     	sub	w12, w11, w12, lsr #1
    9770: 6b08019f     	cmp	w12, w8
    9774: 54fffc4a     	b.ge	0x96fc <point_is_in_limit_area+0x98>
    9778: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		0000000000009778:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
    977c: 3940018c     	ldrb	w12, [x12]
		000000000000977c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
    9780: 370003ac     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    9784: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		0000000000009784:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
    9788: 3940018c     	ldrb	w12, [x12]
		0000000000009788:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
    978c: 3700034c     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    9790: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		0000000000009790:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
    9794: 3940018c     	ldrb	w12, [x12]
		0000000000009794:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
    9798: 370002ec     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    979c: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		000000000000979c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
    97a0: 3940018c     	ldrb	w12, [x12]
		00000000000097a0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
    97a4: 3700028c     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    97a8: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		00000000000097a8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
    97ac: 3940018c     	ldrb	w12, [x12]
		00000000000097ac:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
    97b0: 3700022c     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    97b4: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		00000000000097b4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
    97b8: 3940018c     	ldrb	w12, [x12]
		00000000000097b8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
    97bc: 370001cc     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    97c0: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		00000000000097c0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
    97c4: 3940018c     	ldrb	w12, [x12]
		00000000000097c4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
    97c8: 3700016c     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    97cc: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		00000000000097cc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
    97d0: 3940018c     	ldrb	w12, [x12]
		00000000000097d0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
    97d4: 3700010c     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    97d8: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		00000000000097d8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
    97dc: 3940018c     	ldrb	w12, [x12]
		00000000000097dc:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
    97e0: 370000ac     	tbnz	w12, #0x0, 0x97f4 <point_is_in_limit_area+0x190>
    97e4: 9000000c     	adrp	x12, 0x9000 <tp_ghost_check+0x488>
		00000000000097e4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
    97e8: 3940018c     	ldrb	w12, [x12]
		00000000000097e8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
    97ec: 7100059f     	cmp	w12, #0x1
    97f0: 54fff861     	b.ne	0x96fc <point_is_in_limit_area+0x98>
    97f4: d503233f     	paciasp
    97f8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    97fc: 910003fd     	mov	x29, sp
    9800: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f20
    9804: 91000000     	add	x0, x0, #0x0
		0000000000009804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f20
    9808: 12003c22     	and	w2, w1, #0xffff
    980c: 2a0803e1     	mov	w1, w8
    9810: 94000000     	bl	0x9810 <point_is_in_limit_area+0x1ac>
		0000000000009810:  R_AARCH64_CALL26	_printk
    9814: 52800020     	mov	w0, #0x1                // =1
    9818: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    981c: d50323bf     	autiasp
    9820: d65f03c0     	ret
