
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006eb0 <syna_dev_helper_work>:
    6eb0: d503233f     	paciasp
    6eb4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    6eb8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    6ebc: 910003fd     	mov	x29, sp
    6ec0: b85f8008     	ldur	w8, [x0, #-0x8]
    6ec4: aa0003f3     	mov	x19, x0
    6ec8: 12001d08     	and	w8, w8, #0xff
    6ecc: 7100051f     	cmp	w8, #0x1
    6ed0: 540002e1     	b.ne	0x6f2c <syna_dev_helper_work+0x7c>
    6ed4: d114a274     	sub	x20, x19, #0x528
    6ed8: f9400280     	ldr	x0, [x20]
    6edc: 39402408     	ldrb	w8, [x0, #0x9]
    6ee0: 71002d1f     	cmp	w8, #0xb
    6ee4: 54000201     	b.ne	0x6f24 <syna_dev_helper_work+0x74>
    6ee8: aa1f03e1     	mov	x1, xzr
    6eec: 52800282     	mov	w2, #0x14               // =20
    6ef0: 94000000     	bl	0x6ef0 <syna_dev_helper_work+0x40>
		0000000000006ef0:  R_AARCH64_CALL26	syna_tcm_get_boot_info
    6ef4: 36f80480     	tbz	w0, #0x1f, 0x6f84 <syna_dev_helper_work+0xd4>
    6ef8: f9400280     	ldr	x0, [x20]
    6efc: 39402408     	ldrb	w8, [x0, #0x9]
    6f00: 71002d1f     	cmp	w8, #0xb
    6f04: 54000101     	b.ne	0x6f24 <syna_dev_helper_work+0x74>
    6f08: f8508261     	ldur	x1, [x19, #-0xf8]
    6f0c: d1058262     	sub	x2, x19, #0x160
    6f10: 52800400     	mov	w0, #0x20               // =32
    6f14: 52800323     	mov	w3, #0x19               // =25
    6f18: 94000000     	bl	0x6f18 <syna_dev_helper_work+0x68>
		0000000000006f18:  R_AARCH64_CALL26	queue_delayed_work_on
    6f1c: f9400280     	ldr	x0, [x20]
    6f20: 39402408     	ldrb	w8, [x0, #0x9]
    6f24: 7100051f     	cmp	w8, #0x1
    6f28: 540000c0     	b.eq	0x6f40 <syna_dev_helper_work+0x90>
    6f2c: b81f827f     	stur	wzr, [x19, #-0x8]
    6f30: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    6f34: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    6f38: d50323bf     	autiasp
    6f3c: d65f03c0     	ret
    6f40: 79416402     	ldrh	w2, [x0, #0xb2]
    6f44: 35000322     	cbnz	w2, 0x6fa8 <syna_dev_helper_work+0xf8>
    6f48: 90000000     	adrp	x0, 0x6000 <syna_cdev_release+0x84>
		0000000000006f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc9d9
    6f4c: 91000000     	add	x0, x0, #0x0
		0000000000006f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc9d9
    6f50: 90000001     	adrp	x1, 0x6000 <syna_cdev_release+0x84>
		0000000000006f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11aad
    6f54: 91000021     	add	x1, x1, #0x0
		0000000000006f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11aad
    6f58: 94000000     	bl	0x6f58 <syna_dev_helper_work+0xa8>
		0000000000006f58:  R_AARCH64_CALL26	_printk
    6f5c: f940ca68     	ldr	x8, [x19, #0x190]
    6f60: aa1403e0     	mov	x0, x20
    6f64: b85fc110     	ldur	w16, [x8, #-0x4]
    6f68: 7288e391     	movk	w17, #0x471c
    6f6c: 72b5c411     	movk	w17, #0xae20, lsl #16
    6f70: 6b11021f     	cmp	w16, w17
    6f74: 54000040     	b.eq	0x6f7c <syna_dev_helper_work+0xcc>
    6f78: d4304500     	brk	#0x8228
    6f7c: d63f0100     	blr	x8
    6f80: 17ffffeb     	b	0x6f2c <syna_dev_helper_work+0x7c>
    6f84: f9400288     	ldr	x8, [x20]
    6f88: 90000000     	adrp	x0, 0x6000 <syna_cdev_release+0x84>
		0000000000006f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd54a
    6f8c: 91000000     	add	x0, x0, #0x0
		0000000000006f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd54a
    6f90: 90000001     	adrp	x1, 0x6000 <syna_cdev_release+0x84>
		0000000000006f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11aad
    6f94: 91000021     	add	x1, x1, #0x0
		0000000000006f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11aad
    6f98: 39438502     	ldrb	w2, [x8, #0xe1]
    6f9c: 3943a503     	ldrb	w3, [x8, #0xe9]
    6fa0: 94000000     	bl	0x6fa0 <syna_dev_helper_work+0xf0>
		0000000000006fa0:  R_AARCH64_CALL26	_printk
    6fa4: 17ffffd5     	b	0x6ef8 <syna_dev_helper_work+0x48>
    6fa8: 90000000     	adrp	x0, 0x6000 <syna_cdev_release+0x84>
		0000000000006fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbac0
    6fac: 91000000     	add	x0, x0, #0x0
		0000000000006fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbac0
    6fb0: 90000001     	adrp	x1, 0x6000 <syna_cdev_release+0x84>
		0000000000006fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11aad
    6fb4: 91000021     	add	x1, x1, #0x0
		0000000000006fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11aad
    6fb8: 94000000     	bl	0x6fb8 <syna_dev_helper_work+0x108>
		0000000000006fb8:  R_AARCH64_CALL26	_printk
    6fbc: f9400288     	ldr	x8, [x20]
    6fc0: 39402508     	ldrb	w8, [x8, #0x9]
    6fc4: 71002d1f     	cmp	w8, #0xb
    6fc8: 54fffb21     	b.ne	0x6f2c <syna_dev_helper_work+0x7c>
    6fcc: f8508261     	ldur	x1, [x19, #-0xf8]
    6fd0: d1058262     	sub	x2, x19, #0x160
    6fd4: 52800400     	mov	w0, #0x20               // =32
    6fd8: 52800323     	mov	w3, #0x19               // =25
    6fdc: 94000000     	bl	0x6fdc <syna_dev_helper_work+0x12c>
		0000000000006fdc:  R_AARCH64_CALL26	queue_delayed_work_on
    6fe0: 17ffffd3     	b	0x6f2c <syna_dev_helper_work+0x7c>
