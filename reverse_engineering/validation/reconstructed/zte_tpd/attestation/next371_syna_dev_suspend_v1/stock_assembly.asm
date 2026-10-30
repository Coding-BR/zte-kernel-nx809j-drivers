
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000caf4 <syna_dev_suspend>:
    caf4: d503233f     	paciasp
    caf8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    cafc: f9000bf5     	str	x21, [sp, #0x10]
    cb00: a9024ff4     	stp	x20, x19, [sp, #0x20]
    cb04: 910003fd     	mov	x29, sp
    cb08: f9404c13     	ldr	x19, [x0, #0x98]
    cb0c: b9457e68     	ldr	w8, [x19, #0x57c]
    cb10: 7100051f     	cmp	w8, #0x1
    cb14: 540000e0     	b.eq	0xcb30 <syna_dev_suspend+0x3c>
    cb18: 2a1f03e0     	mov	w0, wzr
    cb1c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    cb20: f9400bf5     	ldr	x21, [sp, #0x10]
    cb24: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    cb28: d50323bf     	autiasp
    cb2c: d65f03c0     	ret
    cb30: 90000014     	adrp	x20, 0xc000 <syna_dev_connect+0x174>
		000000000000cb30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a34
    cb34: 91000294     	add	x20, x20, #0x0
		000000000000cb34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a34
    cb38: f9413a75     	ldr	x21, [x19, #0x270]
    cb3c: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000cb3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2e
    cb40: 91000000     	add	x0, x0, #0x0
		000000000000cb40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2e
    cb44: aa1403e1     	mov	x1, x20
    cb48: 94000000     	bl	0xcb48 <syna_dev_suspend+0x54>
		000000000000cb48:  R_AARCH64_CALL26	_printk
    cb4c: b945c668     	ldr	w8, [x19, #0x5c4]
    cb50: b945b269     	ldr	w9, [x19, #0x5b0]
    cb54: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000cb54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x328d
    cb58: 91000000     	add	x0, x0, #0x0
		000000000000cb58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x328d
    cb5c: aa1403e1     	mov	x1, x20
    cb60: 2a080128     	orr	w8, w9, w8
    cb64: 7100011f     	cmp	w8, #0x0
    cb68: 1a9f07e2     	cset	w2, ne
    cb6c: 39160662     	strb	w2, [x19, #0x581]
    cb70: 94000000     	bl	0xcb70 <syna_dev_suspend+0x7c>
		000000000000cb70:  R_AARCH64_CALL26	_printk
    cb74: b40003d3     	cbz	x19, 0xcbec <syna_dev_suspend+0xf8>
    cb78: f9413a68     	ldr	x8, [x19, #0x270]
    cb7c: f9400260     	ldr	x0, [x19]
    cb80: b940b909     	ldr	w9, [x8, #0xb8]
    cb84: 340000a9     	cbz	w9, 0xcb98 <syna_dev_suspend+0xa4>
    cb88: 3942f108     	ldrb	w8, [x8, #0xbc]
    cb8c: 36000068     	tbz	w8, #0x0, 0xcb98 <syna_dev_suspend+0xa4>
    cb90: 2a1f03e2     	mov	w2, wzr
    cb94: 14000002     	b	0xcb9c <syna_dev_suspend+0xa8>
    cb98: b9420c02     	ldr	w2, [x0, #0x20c]
    cb9c: 39560668     	ldrb	w8, [x19, #0x581]
    cba0: 7100051f     	cmp	w8, #0x1
    cba4: 54000101     	b.ne	0xcbc4 <syna_dev_suspend+0xd0>
    cba8: aa1303e0     	mov	x0, x19
    cbac: 52800021     	mov	w1, #0x1                // =1
    cbb0: 940003c4     	bl	0xdac0 <syna_dev_enable_lowpwr_gesture>
    cbb4: 36f802a0     	tbz	w0, #0x1f, 0xcc08 <syna_dev_suspend+0x114>
    cbb8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000cbb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6289
    cbbc: 91000000     	add	x0, x0, #0x0
		000000000000cbbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6289
    cbc0: 14000008     	b	0xcbe0 <syna_dev_suspend+0xec>
    cbc4: 39560268     	ldrb	w8, [x19, #0x580]
    cbc8: 37000248     	tbnz	w8, #0x0, 0xcc10 <syna_dev_suspend+0x11c>
    cbcc: 52800021     	mov	w1, #0x1                // =1
    cbd0: 94000000     	bl	0xcbd0 <syna_dev_suspend+0xdc>
		000000000000cbd0:  R_AARCH64_CALL26	syna_tcm_sleep
    cbd4: 36f801a0     	tbz	w0, #0x1f, 0xcc08 <syna_dev_suspend+0x114>
    cbd8: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000cbd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62bf
    cbdc: 91000000     	add	x0, x0, #0x0
		000000000000cbdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62bf
    cbe0: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000cbe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc119
    cbe4: 91000021     	add	x1, x1, #0x0
		000000000000cbe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc119
    cbe8: 94000000     	bl	0xcbe8 <syna_dev_suspend+0xf4>
		000000000000cbe8:  R_AARCH64_CALL26	_printk
    cbec: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000cbec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0e7
    cbf0: 91000000     	add	x0, x0, #0x0
		000000000000cbf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0e7
    cbf4: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000cbf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a34
    cbf8: 91000021     	add	x1, x1, #0x0
		000000000000cbf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a34
    cbfc: 94000000     	bl	0xcbfc <syna_dev_suspend+0x108>
		000000000000cbfc:  R_AARCH64_CALL26	_printk
    cc00: 12800080     	mov	w0, #-0x5               // =-5
    cc04: 17ffffc6     	b	0xcb1c <syna_dev_suspend+0x28>
    cc08: 52800c80     	mov	w0, #0x64               // =100
    cc0c: 94000000     	bl	0xcc0c <syna_dev_suspend+0x118>
		000000000000cc0c:  R_AARCH64_CALL26	msleep
    cc10: 52800048     	mov	w8, #0x2                // =2
    cc14: aa1303e0     	mov	x0, x19
    cc18: b9057e68     	str	w8, [x19, #0x57c]
    cc1c: 94000000     	bl	0xcc1c <syna_dev_suspend+0x128>
		000000000000cc1c:  R_AARCH64_CALL26	syna_dev_free_input_events
    cc20: f9400260     	ldr	x0, [x19]
    cc24: 94000000     	bl	0xcc24 <syna_dev_suspend+0x130>
		000000000000cc24:  R_AARCH64_CALL26	syna_tcm_clear_command_processing
    cc28: 39560668     	ldrb	w8, [x19, #0x581]
    cc2c: 37000188     	tbnz	w8, #0x0, 0xcc5c <syna_dev_suspend+0x168>
    cc30: f94022a8     	ldr	x8, [x21, #0x40]
    cc34: b4000148     	cbz	x8, 0xcc5c <syna_dev_suspend+0x168>
    cc38: 910022a0     	add	x0, x21, #0x8
    cc3c: 2a1f03e1     	mov	w1, wzr
    cc40: b85fc110     	ldur	w16, [x8, #-0x4]
    cc44: 728c3631     	movk	w17, #0x61b1
    cc48: 72a685d1     	movk	w17, #0x342e, lsl #16
    cc4c: 6b11021f     	cmp	w16, w17
    cc50: 54000040     	b.eq	0xcc58 <syna_dev_suspend+0x164>
    cc54: d4304500     	brk	#0x8228
    cc58: d63f0100     	blr	x8
    cc5c: b9457e62     	ldr	w2, [x19, #0x57c]
    cc60: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000cc60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c58
    cc64: 91000000     	add	x0, x0, #0x0
		000000000000cc64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c58
    cc68: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000cc68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a34
    cc6c: 91000021     	add	x1, x1, #0x0
		000000000000cc6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a34
    cc70: b905e27f     	str	wzr, [x19, #0x5e0]
    cc74: 94000000     	bl	0xcc74 <syna_dev_suspend+0x180>
		000000000000cc74:  R_AARCH64_CALL26	_printk
    cc78: 17ffffa8     	b	0xcb18 <syna_dev_suspend+0x24>
