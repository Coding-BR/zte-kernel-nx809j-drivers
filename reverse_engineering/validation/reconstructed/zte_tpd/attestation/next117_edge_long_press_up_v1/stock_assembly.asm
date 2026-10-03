
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009824 <edge_long_press_up>:
    9824: d503233f     	paciasp
    9828: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    982c: f9000bf9     	str	x25, [sp, #0x10]
    9830: a9025ff8     	stp	x24, x23, [sp, #0x20]
    9834: a90357f6     	stp	x22, x21, [sp, #0x30]
    9838: a9044ff4     	stp	x20, x19, [sp, #0x40]
    983c: 910003fd     	mov	x29, sp
    9840: 12003c28     	and	w8, w1, #0xffff
    9844: 7100251f     	cmp	w8, #0x9
    9848: 54001248     	b.hi	0x9a90 <edge_long_press_up+0x26c>
    984c: 2a0103f4     	mov	w20, w1
    9850: 92403e88     	and	x8, x20, #0xffff
    9854: 8b213108     	add	x8, x8, w1, uxth #4
    9858: d37df118     	lsl	x24, x8, #3
    985c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		000000000000985c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info
    9860: 91000108     	add	x8, x8, #0x0
		0000000000009860:  R_AARCH64_ADD_ABS_LO12_NC	point_report_info
    9864: 8b180117     	add	x23, x8, x24
    9868: 394152e8     	ldrb	w8, [x23, #0x54]
    986c: 35000108     	cbnz	w8, 0x988c <edge_long_press_up+0x68>
    9870: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    9874: f9400bf9     	ldr	x25, [sp, #0x10]
    9878: a94357f6     	ldp	x22, x21, [sp, #0x30]
    987c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    9880: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    9884: d50323bf     	autiasp
    9888: d65f03c0     	ret
    988c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		000000000000988c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9890: aa0003f6     	mov	x22, x0
    9894: f9400119     	ldr	x25, [x8]
		0000000000009894:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9898: 91324320     	add	x0, x25, #0xc90
    989c: 94000000     	bl	0x989c <edge_long_press_up+0x78>
		000000000000989c:  R_AARCH64_CALL26	mutex_lock
    98a0: 12003e93     	and	w19, w20, #0xffff
    98a4: aa1603e0     	mov	x0, x22
    98a8: 52800061     	mov	w1, #0x3                // =3
    98ac: 528005e2     	mov	w2, #0x2f               // =47
    98b0: 2a1303e3     	mov	w3, w19
    98b4: 94000000     	bl	0x98b4 <edge_long_press_up+0x90>
		00000000000098b4:  R_AARCH64_CALL26	input_event
    98b8: aa1603e0     	mov	x0, x22
    98bc: 2a1f03e1     	mov	w1, wzr
    98c0: 2a1f03e2     	mov	w2, wzr
    98c4: aa1603f5     	mov	x21, x22
    98c8: 94000000     	bl	0x98c8 <edge_long_press_up+0xa4>
		00000000000098c8:  R_AARCH64_CALL26	input_mt_report_slot_state
    98cc: 35000293     	cbnz	w19, 0x991c <edge_long_press_up+0xf8>
    98d0: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000098d0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdb
    98d4: 39400108     	ldrb	w8, [x8]
		00000000000098d4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdb
    98d8: 37000b68     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    98dc: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000098dc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0xdc
    98e0: 39400108     	ldrb	w8, [x8]
		00000000000098e0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0xdc
    98e4: 37000b08     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    98e8: 12003e88     	and	w8, w20, #0xffff
    98ec: 7100091f     	cmp	w8, #0x2
    98f0: 54000281     	b.ne	0x9940 <edge_long_press_up+0x11c>
    98f4: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000098f4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1eb
    98f8: 39400108     	ldrb	w8, [x8]
		00000000000098f8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1eb
    98fc: 37000a48     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9900: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009900:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x1ec
    9904: 39400108     	ldrb	w8, [x8]
		0000000000009904:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x1ec
    9908: 370009e8     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    990c: 12003e88     	and	w8, w20, #0xffff
    9910: 7100111f     	cmp	w8, #0x4
    9914: 54000281     	b.ne	0x9964 <edge_long_press_up+0x140>
    9918: 1400001c     	b	0x9988 <edge_long_press_up+0x164>
    991c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		000000000000991c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x53
    9920: 39400108     	ldrb	w8, [x8]
		0000000000009920:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x53
    9924: 37000908     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9928: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009928:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x54
    992c: 39400108     	ldrb	w8, [x8]
		000000000000992c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x54
    9930: 370008a8     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9934: 12003e88     	and	w8, w20, #0xffff
    9938: 7100051f     	cmp	w8, #0x1
    993c: 54fffca1     	b.ne	0x98d0 <edge_long_press_up+0xac>
    9940: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009940:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x163
    9944: 39400108     	ldrb	w8, [x8]
		0000000000009944:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x163
    9948: 370007e8     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    994c: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		000000000000994c:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x164
    9950: 39400108     	ldrb	w8, [x8]
		0000000000009950:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x164
    9954: 37000788     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9958: 12003e88     	and	w8, w20, #0xffff
    995c: 71000d1f     	cmp	w8, #0x3
    9960: 54fffca1     	b.ne	0x98f4 <edge_long_press_up+0xd0>
    9964: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009964:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x273
    9968: 39400108     	ldrb	w8, [x8]
		0000000000009968:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x273
    996c: 370006c8     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9970: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009970:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x274
    9974: 39400108     	ldrb	w8, [x8]
		0000000000009974:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x274
    9978: 37000668     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    997c: 12003e88     	and	w8, w20, #0xffff
    9980: 7100151f     	cmp	w8, #0x5
    9984: 54000140     	b.eq	0x99ac <edge_long_press_up+0x188>
    9988: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009988:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fb
    998c: 39400108     	ldrb	w8, [x8]
		000000000000998c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fb
    9990: 370005a8     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9994: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009994:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x2fc
    9998: 39400108     	ldrb	w8, [x8]
		0000000000009998:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x2fc
    999c: 37000548     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    99a0: 12003e88     	and	w8, w20, #0xffff
    99a4: 7100191f     	cmp	w8, #0x6
    99a8: 54000140     	b.eq	0x99d0 <edge_long_press_up+0x1ac>
    99ac: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000099ac:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x383
    99b0: 39400108     	ldrb	w8, [x8]
		00000000000099b0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x383
    99b4: 37000488     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    99b8: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000099b8:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x384
    99bc: 39400108     	ldrb	w8, [x8]
		00000000000099bc:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x384
    99c0: 37000428     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    99c4: 12003e88     	and	w8, w20, #0xffff
    99c8: 71001d1f     	cmp	w8, #0x7
    99cc: 54000140     	b.eq	0x99f4 <edge_long_press_up+0x1d0>
    99d0: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000099d0:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40b
    99d4: 39400108     	ldrb	w8, [x8]
		00000000000099d4:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40b
    99d8: 37000368     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    99dc: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000099dc:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x40c
    99e0: 39400108     	ldrb	w8, [x8]
		00000000000099e0:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x40c
    99e4: 37000308     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    99e8: 12003e88     	and	w8, w20, #0xffff
    99ec: 7100211f     	cmp	w8, #0x8
    99f0: 54000140     	b.eq	0x9a18 <edge_long_press_up+0x1f4>
    99f4: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		00000000000099f4:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x493
    99f8: 39400108     	ldrb	w8, [x8]
		00000000000099f8:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x493
    99fc: 37000248     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9a00: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009a00:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x494
    9a04: 39400108     	ldrb	w8, [x8]
		0000000000009a04:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x494
    9a08: 370001e8     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9a0c: 12003e88     	and	w8, w20, #0xffff
    9a10: 7100251f     	cmp	w8, #0x9
    9a14: 540000e0     	b.eq	0x9a30 <edge_long_press_up+0x20c>
    9a18: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009a18:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51b
    9a1c: 39400108     	ldrb	w8, [x8]
		0000000000009a1c:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51b
    9a20: 37000128     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9a24: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009a24:  R_AARCH64_ADR_PREL_PG_HI21	point_report_info+0x51c
    9a28: 39400108     	ldrb	w8, [x8]
		0000000000009a28:  R_AARCH64_LDST8_ABS_LO12_NC	point_report_info+0x51c
    9a2c: 370000c8     	tbnz	w8, #0x0, 0x9a44 <edge_long_press_up+0x220>
    9a30: aa1503e0     	mov	x0, x21
    9a34: 52800021     	mov	w1, #0x1                // =1
    9a38: 52802942     	mov	w2, #0x14a              // =330
    9a3c: 2a1f03e3     	mov	w3, wzr
    9a40: 94000000     	bl	0x9a40 <edge_long_press_up+0x21c>
		0000000000009a40:  R_AARCH64_CALL26	input_event
    9a44: aa1503e0     	mov	x0, x21
    9a48: 2a1f03e1     	mov	w1, wzr
    9a4c: 2a1f03e2     	mov	w2, wzr
    9a50: 2a1f03e3     	mov	w3, wzr
    9a54: 94000000     	bl	0x9a54 <edge_long_press_up+0x230>
		0000000000009a54:  R_AARCH64_CALL26	input_event
    9a58: 91324320     	add	x0, x25, #0xc90
    9a5c: 94000000     	bl	0x9a5c <edge_long_press_up+0x238>
		0000000000009a5c:  R_AARCH64_CALL26	mutex_unlock
    9a60: b27e0308     	orr	x8, x24, #0x4
    9a64: 390152ff     	strb	wzr, [x23, #0x54]
    9a68: f115411f     	cmp	x8, #0x550
    9a6c: 54000128     	b.hi	0x9a90 <edge_long_press_up+0x26c>
    9a70: 294012e3     	ldp	w3, w4, [x23]
    9a74: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8575
    9a78: 91000000     	add	x0, x0, #0x0
		0000000000009a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8575
    9a7c: 90000001     	adrp	x1, 0x9000 <tp_ghost_check+0x488>
		0000000000009a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5149
    9a80: 91000021     	add	x1, x1, #0x0
		0000000000009a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5149
    9a84: 2a1303e2     	mov	w2, w19
    9a88: 94000000     	bl	0x9a88 <edge_long_press_up+0x264>
		0000000000009a88:  R_AARCH64_CALL26	_printk
    9a8c: 17ffff79     	b	0x9870 <edge_long_press_up+0x4c>
    9a90: d4200020     	brk	#0x1
