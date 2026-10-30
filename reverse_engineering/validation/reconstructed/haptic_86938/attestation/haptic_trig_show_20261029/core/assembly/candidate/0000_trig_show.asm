
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000644 <trig_show>:
     644: d503233f     	paciasp
     648: d10183ff     	sub	sp, sp, #0x60
     64c: a9027bfd     	stp	x29, x30, [sp, #0x20]
     650: f9001bf7     	str	x23, [sp, #0x30]
     654: a90457f6     	stp	x22, x21, [sp, #0x40]
     658: a9054ff4     	stp	x20, x19, [sp, #0x50]
     65c: 910083fd     	add	x29, sp, #0x20
     660: f9404c15     	ldr	x21, [x0, #0x98]
     664: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata
     668: 91000294     	add	x20, x20, #0x0
		0000000000000668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata
     66c: aa0203f3     	mov	x19, x2
     670: aa0203e0     	mov	x0, x2
     674: 52820001     	mov	w1, #0x1000             // =4096
     678: 3954fea4     	ldrb	w4, [x21, #0x53f]
     67c: 395502a5     	ldrb	w5, [x21, #0x540]
     680: 395506a6     	ldrb	w6, [x21, #0x541]
     684: 39550ea7     	ldrb	w7, [x21, #0x543]
     688: 39550aa8     	ldrb	w8, [x21, #0x542]
     68c: 395512a9     	ldrb	w9, [x21, #0x544]
     690: 3954f6aa     	ldrb	w10, [x21, #0x53d]
     694: 3954faab     	ldrb	w11, [x21, #0x53e]
     698: aa1403e2     	mov	x2, x20
     69c: 52800023     	mov	w3, #0x1                // =1
     6a0: b9000be9     	str	w9, [sp, #0x8]
     6a4: 52820016     	mov	w22, #0x1000            // =4096
     6a8: b9001beb     	str	w11, [sp, #0x18]
     6ac: b90013ea     	str	w10, [sp, #0x10]
     6b0: b90003e8     	str	w8, [sp]
     6b4: 94000000     	bl	0x6b4 <trig_show+0x70>
		00000000000006b4:  R_AARCH64_CALL26	snprintf
     6b8: 93407c17     	sxtw	x23, w0
     6bc: 395532a4     	ldrb	w4, [x21, #0x54c]
     6c0: 395536a5     	ldrb	w5, [x21, #0x54d]
     6c4: 39553aa6     	ldrb	w6, [x21, #0x54e]
     6c8: 395542a7     	ldrb	w7, [x21, #0x550]
     6cc: aa1403e2     	mov	x2, x20
     6d0: 39553ea8     	ldrb	w8, [x21, #0x54f]
     6d4: 395546a9     	ldrb	w9, [x21, #0x551]
     6d8: cb1702c1     	sub	x1, x22, x23
     6dc: 39552aaa     	ldrb	w10, [x21, #0x54a]
     6e0: 39552eab     	ldrb	w11, [x21, #0x54b]
     6e4: 8b170260     	add	x0, x19, x23
     6e8: 52800043     	mov	w3, #0x2                // =2
     6ec: b9000be9     	str	w9, [sp, #0x8]
     6f0: b9001beb     	str	w11, [sp, #0x18]
     6f4: b90013ea     	str	w10, [sp, #0x10]
     6f8: b90003e8     	str	w8, [sp]
     6fc: 94000000     	bl	0x6fc <trig_show+0xb8>
		00000000000006fc:  R_AARCH64_CALL26	snprintf
     700: 8b20c2f7     	add	x23, x23, w0, sxtw
     704: 395566a4     	ldrb	w4, [x21, #0x559]
     708: 39556aa5     	ldrb	w5, [x21, #0x55a]
     70c: 39556ea6     	ldrb	w6, [x21, #0x55b]
     710: 395576a7     	ldrb	w7, [x21, #0x55d]
     714: aa1403e2     	mov	x2, x20
     718: 395572a8     	ldrb	w8, [x21, #0x55c]
     71c: 39557aa9     	ldrb	w9, [x21, #0x55e]
     720: cb1702c1     	sub	x1, x22, x23
     724: 39555eaa     	ldrb	w10, [x21, #0x557]
     728: 395562ab     	ldrb	w11, [x21, #0x558]
     72c: 8b170260     	add	x0, x19, x23
     730: 52800063     	mov	w3, #0x3                // =3
     734: b9000be9     	str	w9, [sp, #0x8]
     738: b9001beb     	str	w11, [sp, #0x18]
     73c: b90013ea     	str	w10, [sp, #0x10]
     740: b90003e8     	str	w8, [sp]
     744: 94000000     	bl	0x744 <trig_show+0x100>
		0000000000000744:  R_AARCH64_CALL26	snprintf
     748: 8b20c2e0     	add	x0, x23, w0, sxtw
     74c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     750: f9401bf7     	ldr	x23, [sp, #0x30]
     754: a94457f6     	ldp	x22, x21, [sp, #0x40]
     758: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     75c: 910183ff     	add	sp, sp, #0x60
     760: d50323bf     	autiasp
     764: d65f03c0     	ret
