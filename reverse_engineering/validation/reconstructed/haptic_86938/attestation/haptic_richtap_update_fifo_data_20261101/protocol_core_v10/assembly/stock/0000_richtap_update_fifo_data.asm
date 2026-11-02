
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000664c <richtap_update_fifo_data>:
    664c: d503233f     	paciasp
    6650: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    6654: f9000bf9     	str	x25, [sp, #0x10]
    6658: a9025ff8     	stp	x24, x23, [sp, #0x20]
    665c: a90357f6     	stp	x22, x21, [sp, #0x30]
    6660: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6664: 910003fd     	mov	x29, sp
    6668: 2a0103f5     	mov	w21, w1
    666c: aa0003f4     	mov	x20, x0
    6670: 2a1f03f3     	mov	w19, wzr
    6674: 52800077     	mov	w23, #0x3               // =3
    6678: 52801ff8     	mov	w24, #0xff              // =255
    667c: f9431288     	ldr	x8, [x20, #0x620]
    6680: 39400109     	ldrb	w9, [x8]
    6684: 7101553f     	cmp	w9, #0x55
    6688: 54000180     	b.eq	0x66b8 <richtap_update_fifo_data+0x6c>
    668c: 7102a93f     	cmp	w9, #0xaa
    6690: 54000760     	b.eq	0x677c <richtap_update_fifo_data+0x130>
    6694: 710002ff     	cmp	w23, #0x0
    6698: 5400098d     	b.le	0x67c8 <richtap_update_fifo_data+0x17c>
    669c: 52807d00     	mov	w0, #0x3e8              // =1000
    66a0: 52807d01     	mov	w1, #0x3e8              // =1000
    66a4: 52800042     	mov	w2, #0x2                // =2
    66a8: 510006f7     	sub	w23, w23, #0x1
    66ac: 94000000     	bl	0x66ac <richtap_update_fifo_data+0x60>
		00000000000066ac:  R_AARCH64_CALL26	usleep_range_state
    66b0: 35000415     	cbnz	w21, 0x6730 <richtap_update_fifo_data+0xe4>
    66b4: 14000032     	b	0x677c <richtap_update_fifo_data+0x130>
    66b8: 79800508     	ldrsh	x8, [x8, #0x2]
    66bc: 798d7289     	ldrsh	x9, [x20, #0x6b8]
    66c0: cb090116     	sub	x22, x8, x9
    66c4: 93407e68     	sxtw	x8, w19
    66c8: 12003d29     	and	w9, w9, #0xffff
    66cc: 6b1602b9     	subs	w25, w21, w22
    66d0: 54000369     	b.ls	0x673c <richtap_update_fifo_data+0xf0>
    66d4: 710fa53f     	cmp	w9, #0x3e9
    66d8: 54000802     	b.hs	0x67d8 <richtap_update_fifo_data+0x18c>
    66dc: 794d7289     	ldrh	w9, [x20, #0x6b8]
    66e0: f10fa13f     	cmp	x9, #0x3e8
    66e4: 540007a8     	b.hi	0x67d8 <richtap_update_fifo_data+0x18c>
    66e8: f943128a     	ldr	x10, [x20, #0x620]
    66ec: f943068b     	ldr	x11, [x20, #0x608]
    66f0: aa1603e2     	mov	x2, x22
    66f4: 8b090149     	add	x9, x10, x9
    66f8: 8b080160     	add	x0, x11, x8
    66fc: 91006121     	add	x1, x9, #0x18
    6700: 94000000     	bl	0x6700 <richtap_update_fifo_data+0xb4>
		0000000000006700:  R_AARCH64_CALL26	memcpy
    6704: f9431288     	ldr	x8, [x20, #0x620]
    6708: 0b1302d3     	add	w19, w22, w19
    670c: 2a1903f5     	mov	w21, w25
    6710: 39000118     	strb	w24, [x8]
    6714: f9431288     	ldr	x8, [x20, #0x620]
    6718: 7900051f     	strh	wzr, [x8, #0x2]
    671c: f9431288     	ldr	x8, [x20, #0x620]
    6720: f9400508     	ldr	x8, [x8, #0x8]
    6724: 790d729f     	strh	wzr, [x20, #0x6b8]
    6728: f9031288     	str	x8, [x20, #0x620]
    672c: 34000295     	cbz	w21, 0x677c <richtap_update_fifo_data+0x130>
    6730: b946be88     	ldr	w8, [x20, #0x6bc]
    6734: 35fffa48     	cbnz	w8, 0x667c <richtap_update_fifo_data+0x30>
    6738: 14000011     	b	0x677c <richtap_update_fifo_data+0x130>
    673c: 710fa13f     	cmp	w9, #0x3e8
    6740: 540004c8     	b.hi	0x67d8 <richtap_update_fifo_data+0x18c>
    6744: 794d7289     	ldrh	w9, [x20, #0x6b8]
    6748: f10fa13f     	cmp	x9, #0x3e8
    674c: 54000468     	b.hi	0x67d8 <richtap_update_fifo_data+0x18c>
    6750: f943128a     	ldr	x10, [x20, #0x620]
    6754: f943068b     	ldr	x11, [x20, #0x608]
    6758: 2a1503e2     	mov	w2, w21
    675c: 8b090149     	add	x9, x10, x9
    6760: 8b080160     	add	x0, x11, x8
    6764: 91006121     	add	x1, x9, #0x18
    6768: 94000000     	bl	0x6768 <richtap_update_fifo_data+0x11c>
		0000000000006768:  R_AARCH64_CALL26	memcpy
    676c: 794d7288     	ldrh	w8, [x20, #0x6b8]
    6770: 0b1302b3     	add	w19, w21, w19
    6774: 0b150108     	add	w8, w8, w21
    6778: 790d7288     	strh	w8, [x20, #0x6b8]
    677c: f942e688     	ldr	x8, [x20, #0x5c8]
    6780: f9430681     	ldr	x1, [x20, #0x608]
    6784: aa1403e0     	mov	x0, x20
    6788: 2a1303e2     	mov	w2, w19
    678c: f9406908     	ldr	x8, [x8, #0xd0]
    6790: b85fc110     	ldur	w16, [x8, #-0x4]
    6794: 72965371     	movk	w17, #0xb29b
    6798: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    679c: 6b11021f     	cmp	w16, w17
    67a0: 54000040     	b.eq	0x67a8 <richtap_update_fifo_data+0x15c>
    67a4: d4304500     	brk	#0x8228
    67a8: d63f0100     	blr	x8
    67ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    67b0: f9400bf9     	ldr	x25, [sp, #0x10]
    67b4: a94357f6     	ldp	x22, x21, [sp, #0x30]
    67b8: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    67bc: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    67c0: d50323bf     	autiasp
    67c4: d65f03c0     	ret
    67c8: 90000000     	adrp	x0, 0x6000 <tiktap_work_routine+0x1b8>
		00000000000067c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x297e
    67cc: 91000000     	add	x0, x0, #0x0
		00000000000067cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x297e
    67d0: 94000000     	bl	0x67d0 <richtap_update_fifo_data+0x184>
		00000000000067d0:  R_AARCH64_CALL26	_printk
    67d4: 17ffffea     	b	0x677c <richtap_update_fifo_data+0x130>
    67d8: d42aa240     	brk	#0x5512
