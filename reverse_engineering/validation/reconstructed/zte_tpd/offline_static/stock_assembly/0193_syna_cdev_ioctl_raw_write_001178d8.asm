
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011050 <syna_cdev_ioctl_raw_write>:
   11050: d503233f     	paciasp
   11054: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   11058: f9000bf9     	str	x25, [sp, #0x10]
   1105c: a9025ff8     	stp	x24, x23, [sp, #0x20]
   11060: a90357f6     	stp	x22, x21, [sp, #0x30]
   11064: a9044ff4     	stp	x20, x19, [sp, #0x40]
   11068: 910003fd     	mov	x29, sp
   1106c: 2a0303f3     	mov	w19, w3
   11070: 6b02007f     	cmp	w3, w2
   11074: 54000f68     	b.hi	0x11260 <syna_cdev_ioctl_raw_write+0x210>
   11078: 34001053     	cbz	w19, 0x11280 <syna_cdev_ioctl_raw_write+0x230>
   1107c: f9400008     	ldr	x8, [x0]
   11080: aa0003f4     	mov	x20, x0
   11084: aa0103f5     	mov	x21, x1
   11088: 910d2100     	add	x0, x8, #0x348
   1108c: 94000000     	bl	0x1108c <syna_cdev_ioctl_raw_write+0x3c>
		000000000001108c:  R_AARCH64_CALL26	mutex_lock
   11090: 90000019     	adrp	x25, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011090:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x808
   11094: 39400322     	ldrb	w2, [x25]
		0000000000011094:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
   11098: 35001022     	cbnz	w2, 0x1129c <syna_cdev_ioctl_raw_write+0x24c>
   1109c: 90000017     	adrp	x23, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001109c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   110a0: 910002f7     	add	x23, x23, #0x0
		00000000000110a0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c8
   110a4: 910042e0     	add	x0, x23, #0x10
   110a8: 94000000     	bl	0x110a8 <syna_cdev_ioctl_raw_write+0x58>
		00000000000110a8:  R_AARCH64_CALL26	mutex_lock
   110ac: 394102e8     	ldrb	w8, [x23, #0x40]
   110b0: b9400af6     	ldr	w22, [x23, #0x8]
   110b4: f94002e0     	ldr	x0, [x23]
   110b8: 11000508     	add	w8, w8, #0x1
   110bc: 6b1302df     	cmp	w22, w19
   110c0: 390102e8     	strb	w8, [x23, #0x40]
   110c4: 54000282     	b.hs	0x11114 <syna_cdev_ioctl_raw_write+0xc4>
   110c8: b40000c0     	cbz	x0, 0x110e0 <syna_cdev_ioctl_raw_write+0x90>
   110cc: aa0003f6     	mov	x22, x0
   110d0: 94000000     	bl	0x110d0 <syna_cdev_ioctl_raw_write+0x80>
		00000000000110d0:  R_AARCH64_CALL26	syna_request_managed_device
   110d4: b4001220     	cbz	x0, 0x11318 <syna_cdev_ioctl_raw_write+0x2c8>
   110d8: aa1603e1     	mov	x1, x22
   110dc: 94000000     	bl	0x110dc <syna_cdev_ioctl_raw_write+0x8c>
		00000000000110dc:  R_AARCH64_CALL26	devm_kfree
   110e0: 94000000     	bl	0x110e0 <syna_cdev_ioctl_raw_write+0x90>
		00000000000110e0:  R_AARCH64_CALL26	syna_request_managed_device
   110e4: b4001280     	cbz	x0, 0x11334 <syna_cdev_ioctl_raw_write+0x2e4>
   110e8: 7100027f     	cmp	w19, #0x0
   110ec: 5400110d     	b.le	0x1130c <syna_cdev_ioctl_raw_write+0x2bc>
   110f0: 2a1303f6     	mov	w22, w19
   110f4: 5281b802     	mov	w2, #0xdc0              // =3520
   110f8: aa1603e1     	mov	x1, x22
   110fc: 94000000     	bl	0x110fc <syna_cdev_ioctl_raw_write+0xac>
		00000000000110fc:  R_AARCH64_CALL26	devm_kmalloc
   11100: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011100:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   11104: f9000100     	str	x0, [x8]
		0000000000011104:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
   11108: b4001240     	cbz	x0, 0x11350 <syna_cdev_ioctl_raw_write+0x300>
   1110c: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001110c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
   11110: b9000113     	str	w19, [x8]
		0000000000011110:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7d0
   11114: 2a1f03e1     	mov	w1, wzr
   11118: aa1603e2     	mov	x2, x22
   1111c: 94000000     	bl	0x1111c <syna_cdev_ioctl_raw_write+0xcc>
		000000000001111c:  R_AARCH64_CALL26	memset
   11120: b9000eff     	str	wzr, [x23, #0xc]
   11124: 37f816b3     	tbnz	w19, #0x1f, 0x113f8 <syna_cdev_ioctl_raw_write+0x3a8>
   11128: f94002f6     	ldr	x22, [x23]
   1112c: 2a1303f7     	mov	w23, w19
   11130: 2a1f03e2     	mov	w2, wzr
   11134: aa1703e1     	mov	x1, x23
   11138: aa1603e0     	mov	x0, x22
   1113c: 94000000     	bl	0x1113c <syna_cdev_ioctl_raw_write+0xec>
		000000000001113c:  R_AARCH64_CALL26	__check_object_size
   11140: d5384108     	mrs	x8, SP_EL0
   11144: 39411909     	ldrb	w9, [x8, #0x46]
   11148: 37280089     	tbnz	w9, #0x5, 0x11158 <syna_cdev_ioctl_raw_write+0x108>
   1114c: f940010a     	ldr	x10, [x8]
   11150: aa1503e9     	mov	x9, x21
   11154: 36d0006a     	tbz	w10, #0x1a, 0x11160 <syna_cdev_ioctl_raw_write+0x110>
   11158: d378dea9     	lsl	x9, x21, #8
   1115c: 8a8922a9     	and	x9, x21, x9, asr #8
   11160: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
   11164: aa1703f8     	mov	x24, x23
   11168: cb17014a     	sub	x10, x10, x23
   1116c: eb09015f     	cmp	x10, x9
   11170: 540001e2     	b.hs	0x111ac <syna_cdev_ioctl_raw_write+0x15c>
   11174: cb1802e8     	sub	x8, x23, x24
   11178: 2a1f03e1     	mov	w1, wzr
   1117c: aa1803e2     	mov	x2, x24
   11180: 8b0802c0     	add	x0, x22, x8
   11184: 94000000     	bl	0x11184 <syna_cdev_ioctl_raw_write+0x134>
		0000000000011184:  R_AARCH64_CALL26	memset
   11188: 34000498     	cbz	w24, 0x11218 <syna_cdev_ioctl_raw_write+0x1c8>
   1118c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001118c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336c
   11190: 91000000     	add	x0, x0, #0x0
		0000000000011190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336c
   11194: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b95
   11198: 91000021     	add	x1, x1, #0x0
		0000000000011198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b95
   1119c: 2a1803e2     	mov	w2, w24
   111a0: 94000000     	bl	0x111a0 <syna_cdev_ioctl_raw_write+0x150>
		00000000000111a0:  R_AARCH64_CALL26	_printk
   111a4: 12800673     	mov	w19, #-0x34             // =-52
   111a8: 14000079     	b	0x1138c <syna_cdev_ioctl_raw_write+0x33c>
   111ac: d503201f     	nop
   111b0: d53b4229     	mrs	x9, DAIF
   111b4: d50343df     	msr	DAIFSet, #0x3
   111b8: f9400508     	ldr	x8, [x8, #0x8]
   111bc: d538202a     	mrs	x10, TTBR1_EL1
   111c0: aa0803eb     	mov	x11, x8
   111c4: b340bd4b     	bfxil	x11, x10, #0, #48
   111c8: d518202b     	msr	TTBR1_EL1, x11
   111cc: d5182008     	msr	TTBR0_EL1, x8
   111d0: d5033fdf     	isb
   111d4: d51b4229     	msr	DAIF, x9
   111d8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   111dc: aa1603e0     	mov	x0, x22
   111e0: aa1703e2     	mov	x2, x23
   111e4: 94000000     	bl	0x111e4 <syna_cdev_ioctl_raw_write+0x194>
		00000000000111e4:  R_AARCH64_CALL26	__arch_copy_from_user
   111e8: aa0003f8     	mov	x24, x0
   111ec: d503201f     	nop
   111f0: d53b4228     	mrs	x8, DAIF
   111f4: d50343df     	msr	DAIFSet, #0x3
   111f8: d5382029     	mrs	x9, TTBR1_EL1
   111fc: 9240bd29     	and	x9, x9, #0xffffffffffff
   11200: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   11204: d518200a     	msr	TTBR0_EL1, x10
   11208: d5182029     	msr	TTBR1_EL1, x9
   1120c: d5033fdf     	isb
   11210: d51b4228     	msr	DAIF, x8
   11214: b5fffb18     	cbnz	x24, 0x11174 <syna_cdev_ioctl_raw_write+0x124>
   11218: f9400288     	ldr	x8, [x20]
   1121c: b40004c8     	cbz	x8, 0x112b4 <syna_cdev_ioctl_raw_write+0x264>
   11220: f9402500     	ldr	x0, [x8, #0x48]
   11224: b4000500     	cbz	x0, 0x112c4 <syna_cdev_ioctl_raw_write+0x274>
   11228: f9401408     	ldr	x8, [x0, #0x28]
   1122c: b4000548     	cbz	x8, 0x112d4 <syna_cdev_ioctl_raw_write+0x284>
   11230: aa1603e1     	mov	x1, x22
   11234: 2a1303e2     	mov	w2, w19
   11238: b85fc110     	ldur	w16, [x8, #-0x4]
   1123c: 728403f1     	movk	w17, #0x201f
   11240: 72a51491     	movk	w17, #0x28a4, lsl #16
   11244: 6b11021f     	cmp	w16, w17
   11248: 54000040     	b.eq	0x11250 <syna_cdev_ioctl_raw_write+0x200>
   1124c: d4304500     	brk	#0x8228
   11250: d63f0100     	blr	x8
   11254: 36f809c0     	tbz	w0, #0x1f, 0x1138c <syna_cdev_ioctl_raw_write+0x33c>
   11258: 2a0003f5     	mov	w21, w0
   1125c: 14000024     	b	0x112ec <syna_cdev_ioctl_raw_write+0x29c>
   11260: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7671
   11264: 91000000     	add	x0, x0, #0x0
		0000000000011264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7671
   11268: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b95
   1126c: 91000021     	add	x1, x1, #0x0
		000000000001126c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b95
   11270: 2a1303e3     	mov	w3, w19
   11274: 94000000     	bl	0x11274 <syna_cdev_ioctl_raw_write+0x224>
		0000000000011274:  R_AARCH64_CALL26	_printk
   11278: 128002b3     	mov	w19, #-0x16             // =-22
   1127c: 1400004f     	b	0x113b8 <syna_cdev_ioctl_raw_write+0x368>
   11280: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb01
   11284: 91000000     	add	x0, x0, #0x0
		0000000000011284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb01
   11288: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b95
   1128c: 91000021     	add	x1, x1, #0x0
		000000000001128c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b95
   11290: 94000000     	bl	0x11290 <syna_cdev_ioctl_raw_write+0x240>
		0000000000011290:  R_AARCH64_CALL26	_printk
   11294: 128002b3     	mov	w19, #-0x16             // =-22
   11298: 14000048     	b	0x113b8 <syna_cdev_ioctl_raw_write+0x368>
   1129c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001129c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   112a0: 91000000     	add	x0, x0, #0x0
		00000000000112a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   112a4: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000112a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   112a8: 91000021     	add	x1, x1, #0x0
		00000000000112a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   112ac: 94000000     	bl	0x112ac <syna_cdev_ioctl_raw_write+0x25c>
		00000000000112ac:  R_AARCH64_CALL26	_printk
   112b0: 17ffff7b     	b	0x1109c <syna_cdev_ioctl_raw_write+0x4c>
   112b4: 12801e15     	mov	w21, #-0xf1             // =-241
   112b8: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000112b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   112bc: 91000000     	add	x0, x0, #0x0
		00000000000112bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   112c0: 14000008     	b	0x112e0 <syna_cdev_ioctl_raw_write+0x290>
   112c4: 12801e15     	mov	w21, #-0xf1             // =-241
   112c8: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000112c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   112cc: 91000000     	add	x0, x0, #0x0
		00000000000112cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   112d0: 14000004     	b	0x112e0 <syna_cdev_ioctl_raw_write+0x290>
   112d4: 12801e95     	mov	w21, #-0xf5             // =-245
   112d8: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000112d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a8d
   112dc: 91000000     	add	x0, x0, #0x0
		00000000000112dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a8d
   112e0: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000112e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b15
   112e4: 91000021     	add	x1, x1, #0x0
		00000000000112e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b15
   112e8: 94000000     	bl	0x112e8 <syna_cdev_ioctl_raw_write+0x298>
		00000000000112e8:  R_AARCH64_CALL26	_printk
   112ec: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000112ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c58
   112f0: 91000000     	add	x0, x0, #0x0
		00000000000112f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c58
   112f4: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000112f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b95
   112f8: 91000021     	add	x1, x1, #0x0
		00000000000112f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b95
   112fc: 2a1303e2     	mov	w2, w19
   11300: 94000000     	bl	0x11300 <syna_cdev_ioctl_raw_write+0x2b0>
		0000000000011300:  R_AARCH64_CALL26	_printk
   11304: 2a1503f3     	mov	w19, w21
   11308: 14000021     	b	0x1138c <syna_cdev_ioctl_raw_write+0x33c>
   1130c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001130c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   11310: 91000000     	add	x0, x0, #0x0
		0000000000011310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   11314: 1400000a     	b	0x1133c <syna_cdev_ioctl_raw_write+0x2ec>
   11318: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1131c: 91000000     	add	x0, x0, #0x0
		000000000001131c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   11320: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   11324: 91000021     	add	x1, x1, #0x0
		0000000000011324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   11328: 94000000     	bl	0x11328 <syna_cdev_ioctl_raw_write+0x2d8>
		0000000000011328:  R_AARCH64_CALL26	_printk
   1132c: 94000000     	bl	0x1132c <syna_cdev_ioctl_raw_write+0x2dc>
		000000000001132c:  R_AARCH64_CALL26	syna_request_managed_device
   11330: b5ffedc0     	cbnz	x0, 0x110e8 <syna_cdev_ioctl_raw_write+0x98>
   11334: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   11338: 91000000     	add	x0, x0, #0x0
		0000000000011338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1133c: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001133c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   11340: 91000021     	add	x1, x1, #0x0
		0000000000011340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   11344: 94000000     	bl	0x11344 <syna_cdev_ioctl_raw_write+0x2f4>
		0000000000011344:  R_AARCH64_CALL26	_printk
   11348: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011348:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   1134c: f900011f     	str	xzr, [x8]
		000000000001134c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
   11350: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   11354: 91000000     	add	x0, x0, #0x0
		0000000000011354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   11358: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1135c: 91000021     	add	x1, x1, #0x0
		000000000001135c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   11360: 2a1303e2     	mov	w2, w19
   11364: 94000000     	bl	0x11364 <syna_cdev_ioctl_raw_write+0x314>
		0000000000011364:  R_AARCH64_CALL26	_printk
   11368: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011368:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
   1136c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001136c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62e7
   11370: 91000000     	add	x0, x0, #0x0
		0000000000011370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62e7
   11374: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b95
   11378: 91000021     	add	x1, x1, #0x0
		0000000000011378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b95
   1137c: 2a1303e2     	mov	w2, w19
   11380: f900011f     	str	xzr, [x8]
		0000000000011380:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7d0
   11384: 94000000     	bl	0x11384 <syna_cdev_ioctl_raw_write+0x334>
		0000000000011384:  R_AARCH64_CALL26	_printk
   11388: 12801e53     	mov	w19, #-0xf3             // =-243
   1138c: 39400322     	ldrb	w2, [x25]
		000000000001138c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
   11390: 7100045f     	cmp	w2, #0x1
   11394: 54000221     	b.ne	0x113d8 <syna_cdev_ioctl_raw_write+0x388>
   11398: 2a1f03e8     	mov	w8, wzr
   1139c: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		000000000001139c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d8
   113a0: 91000000     	add	x0, x0, #0x0
		00000000000113a0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7d8
   113a4: 3900c008     	strb	w8, [x0, #0x30]
   113a8: 94000000     	bl	0x113a8 <syna_cdev_ioctl_raw_write+0x358>
		00000000000113a8:  R_AARCH64_CALL26	mutex_unlock
   113ac: f9400288     	ldr	x8, [x20]
   113b0: 910d2100     	add	x0, x8, #0x348
   113b4: 94000000     	bl	0x113b4 <syna_cdev_ioctl_raw_write+0x364>
		00000000000113b4:  R_AARCH64_CALL26	mutex_unlock
   113b8: 2a1303e0     	mov	w0, w19
   113bc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   113c0: f9400bf9     	ldr	x25, [sp, #0x10]
   113c4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   113c8: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   113cc: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   113d0: d50323bf     	autiasp
   113d4: d65f03c0     	ret
   113d8: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000113d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   113dc: 91000000     	add	x0, x0, #0x0
		00000000000113dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   113e0: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		00000000000113e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   113e4: 91000021     	add	x1, x1, #0x0
		00000000000113e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   113e8: 94000000     	bl	0x113e8 <syna_cdev_ioctl_raw_write+0x398>
		00000000000113e8:  R_AARCH64_CALL26	_printk
   113ec: 39400328     	ldrb	w8, [x25]
		00000000000113ec:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
   113f0: 51000508     	sub	w8, w8, #0x1
   113f4: 17ffffea     	b	0x1139c <syna_cdev_ioctl_raw_write+0x34c>
   113f8: d4210000     	brk	#0x800
   113fc: 2a1303f8     	mov	w24, w19
   11400: 17ffff63     	b	0x1118c <syna_cdev_ioctl_raw_write+0x13c>
