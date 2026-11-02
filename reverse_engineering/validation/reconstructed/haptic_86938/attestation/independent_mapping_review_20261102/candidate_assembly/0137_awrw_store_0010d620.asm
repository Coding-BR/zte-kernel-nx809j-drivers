
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003e04 <awrw_store>:
    3e04: d503233f     	paciasp
    3e08: d10283ff     	sub	sp, sp, #0xa0
    3e0c: a9057bfd     	stp	x29, x30, [sp, #0x50]
    3e10: f90033f9     	str	x25, [sp, #0x60]
    3e14: a9075ff8     	stp	x24, x23, [sp, #0x70]
    3e18: a90857f6     	stp	x22, x21, [sp, #0x80]
    3e1c: a9094ff4     	stp	x20, x19, [sp, #0x90]
    3e20: 910143fd     	add	x29, sp, #0x50
    3e24: d5384108     	mrs	x8, SP_EL0
    3e28: aa0203f4     	mov	x20, x2
    3e2c: aa0303f3     	mov	x19, x3
    3e30: f9438908     	ldr	x8, [x8, #0x710]
    3e34: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26e
    3e38: 91000021     	add	x1, x1, #0x0
		0000000000003e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26e
    3e3c: 910053e2     	add	x2, sp, #0x14
    3e40: 910043e3     	add	x3, sp, #0x10
    3e44: 910033e4     	add	x4, sp, #0xc
    3e48: f81f83a8     	stur	x8, [x29, #-0x8]
    3e4c: f9404c16     	ldr	x22, [x0, #0x98]
    3e50: aa1403e0     	mov	x0, x20
    3e54: 390063ff     	strb	wzr, [sp, #0x18]
    3e58: 390093ff     	strb	wzr, [sp, #0x24]
    3e5c: b90023ff     	str	wzr, [sp, #0x20]
    3e60: f9000bff     	str	xzr, [sp, #0x10]
    3e64: b9000fff     	str	wzr, [sp, #0xc]
    3e68: 94000000     	bl	0x3e68 <awrw_store+0x64>
		0000000000003e68:  R_AARCH64_CALL26	sscanf
    3e6c: 71000c1f     	cmp	w0, #0x3
    3e70: 54000f01     	b.ne	0x4050 <awrw_store+0x24c>
    3e74: b94013f5     	ldr	w21, [sp, #0x10]
    3e78: 34000ff5     	cbz	w21, 0x4074 <awrw_store+0x270>
    3e7c: 910922c0     	add	x0, x22, #0x248
    3e80: 94000000     	bl	0x3e80 <awrw_store+0x7c>
		0000000000003e80:  R_AARCH64_CALL26	mutex_lock
    3e84: b94017f7     	ldr	w23, [sp, #0x14]
    3e88: d503201f     	nop
    3e8c: b94013e0     	ldr	w0, [sp, #0x10]
    3e90: 52819801     	mov	w1, #0xcc0              // =3264
    3e94: 94000000     	bl	0x3e94 <awrw_store+0x90>
		0000000000003e94:  R_AARCH64_CALL26	__kmalloc_noprof
    3e98: b40014c0     	cbz	x0, 0x4130 <awrw_store+0x32c>
    3e9c: f9429ac8     	ldr	x8, [x22, #0x530]
    3ea0: b9052ed5     	str	w21, [x22, #0x52c]
    3ea4: b9052ad7     	str	w23, [x22, #0x528]
    3ea8: f9029ac0     	str	x0, [x22, #0x530]
    3eac: b4000068     	cbz	x8, 0x3eb8 <awrw_store+0xb4>
    3eb0: aa0803e0     	mov	x0, x8
    3eb4: 94000000     	bl	0x3eb4 <awrw_store+0xb0>
		0000000000003eb4:  R_AARCH64_CALL26	kfree
    3eb8: b94017e8     	ldr	w8, [sp, #0x14]
    3ebc: d102a2d5     	sub	x21, x22, #0xa8
    3ec0: 7100051f     	cmp	w8, #0x1
    3ec4: 540003a0     	b.eq	0x3f38 <awrw_store+0x134>
    3ec8: 35001368     	cbnz	w8, 0x4134 <awrw_store+0x330>
    3ecc: b94013f7     	ldr	w23, [sp, #0x10]
    3ed0: aa1403e0     	mov	x0, x20
    3ed4: 0b170af8     	add	w24, w23, w23, lsl #2
    3ed8: 94000000     	bl	0x3ed8 <awrw_store+0xd4>
		0000000000003ed8:  R_AARCH64_CALL26	strlen
    3edc: d1003c08     	sub	x8, x0, #0xf
    3ee0: eb18011f     	cmp	x8, x24
    3ee4: 54000dc1     	b.ne	0x409c <awrw_store+0x298>
    3ee8: 34000a97     	cbz	w23, 0x4038 <awrw_store+0x234>
    3eec: 2a1f03f7     	mov	w23, wzr
    3ef0: 528001f8     	mov	w24, #0xf               // =15
    3ef4: b878ca88     	ldr	w8, [x20, w24, sxtw]
    3ef8: 910083e0     	add	x0, sp, #0x20
    3efc: 910063e2     	add	x2, sp, #0x18
    3f00: 2a1f03e1     	mov	w1, wzr
    3f04: 390093ff     	strb	wzr, [sp, #0x24]
    3f08: b90023e8     	str	w8, [sp, #0x20]
    3f0c: 94000000     	bl	0x3f0c <awrw_store+0x108>
		0000000000003f0c:  R_AARCH64_CALL26	kstrtou8
    3f10: 37f80e80     	tbnz	w0, #0x1f, 0x40e0 <awrw_store+0x2dc>
    3f14: f9429ac8     	ldr	x8, [x22, #0x530]
    3f18: 394063e9     	ldrb	w9, [sp, #0x18]
    3f1c: 11001718     	add	w24, w24, #0x5
    3f20: 3837c909     	strb	w9, [x8, w23, sxtw]
    3f24: 110006f7     	add	w23, w23, #0x1
    3f28: b94013e3     	ldr	w3, [sp, #0x10]
    3f2c: 6b0302ff     	cmp	w23, w3
    3f30: 54fffe23     	b.lo	0x3ef4 <awrw_store+0xf0>
    3f34: 14000042     	b	0x403c <awrw_store+0x238>
    3f38: f94292c8     	ldr	x8, [x22, #0x520]
    3f3c: aa1503e0     	mov	x0, x21
    3f40: f9401d08     	ldr	x8, [x8, #0x38]
    3f44: b85fc110     	ldur	w16, [x8, #-0x4]
    3f48: 72810611     	movk	w17, #0x830
    3f4c: 72b08f51     	movk	w17, #0x847a, lsl #16
    3f50: 6b11021f     	cmp	w16, w17
    3f54: 54000040     	b.eq	0x3f5c <awrw_store+0x158>
    3f58: d4304500     	brk	#0x8228
    3f5c: d63f0100     	blr	x8
    3f60: f94292c8     	ldr	x8, [x22, #0x520]
    3f64: aa1503e0     	mov	x0, x21
    3f68: 2a1f03e1     	mov	w1, wzr
    3f6c: f9408908     	ldr	x8, [x8, #0x110]
    3f70: b85fc110     	ldur	w16, [x8, #-0x4]
    3f74: 729bedd1     	movk	w17, #0xdf6e
    3f78: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    3f7c: 6b11021f     	cmp	w16, w17
    3f80: 54000040     	b.eq	0x3f88 <awrw_store+0x184>
    3f84: d4304500     	brk	#0x8228
    3f88: d63f0100     	blr	x8
    3f8c: f94292c8     	ldr	x8, [x22, #0x520]
    3f90: aa1503e0     	mov	x0, x21
    3f94: f9407908     	ldr	x8, [x8, #0xf0]
    3f98: b85fc110     	ldur	w16, [x8, #-0x4]
    3f9c: 72810611     	movk	w17, #0x830
    3fa0: 72b08f51     	movk	w17, #0x847a, lsl #16
    3fa4: 6b11021f     	cmp	w16, w17
    3fa8: 54000040     	b.eq	0x3fb0 <awrw_store+0x1ac>
    3fac: d4304500     	brk	#0x8228
    3fb0: d63f0100     	blr	x8
    3fb4: b9400fe8     	ldr	w8, [sp, #0xc]
    3fb8: f94142c9     	ldr	x9, [x22, #0x280]
    3fbc: 52a0002a     	mov	w10, #0x10000           // =65536
    3fc0: 9100a3e1     	add	x1, sp, #0x28
    3fc4: 52800042     	mov	w2, #0x2                // =2
    3fc8: 390073e8     	strb	w8, [sp, #0x1c]
    3fcc: f9429ac8     	ldr	x8, [x22, #0x530]
    3fd0: 7940052b     	ldrh	w11, [x9, #0x2]
    3fd4: b802a3ea     	stur	w10, [sp, #0x2a]
    3fd8: 910073ea     	add	x10, sp, #0x1c
    3fdc: f90023e8     	str	x8, [sp, #0x40]
    3fe0: 790053eb     	strh	w11, [sp, #0x28]
    3fe4: f9400d20     	ldr	x0, [x9, #0x18]
    3fe8: 790073eb     	strh	w11, [sp, #0x38]
    3fec: b94013eb     	ldr	w11, [sp, #0x10]
    3ff0: f9001bea     	str	x10, [sp, #0x30]
    3ff4: 5280002a     	mov	w10, #0x1               // =1
    3ff8: 79005fff     	strh	wzr, [sp, #0x2e]
    3ffc: 790077ea     	strh	w10, [sp, #0x3a]
    4000: 79007beb     	strh	w11, [sp, #0x3c]
    4004: 79007fff     	strh	wzr, [sp, #0x3e]
    4008: 94000000     	bl	0x4008 <awrw_store+0x204>
		0000000000004008:  R_AARCH64_CALL26	i2c_transfer
    400c: 37f80580     	tbnz	w0, #0x1f, 0x40bc <awrw_store+0x2b8>
    4010: 7100081f     	cmp	w0, #0x2
    4014: 54000900     	b.eq	0x4134 <awrw_store+0x330>
    4018: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0d
    401c: 91000000     	add	x0, x0, #0x0
		000000000000401c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0d
    4020: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4024: 91000021     	add	x1, x1, #0x0
		0000000000004024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4028: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x664
    402c: 91000063     	add	x3, x3, #0x0
		000000000000402c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x664
    4030: 52800d02     	mov	w2, #0x68               // =104
    4034: 14000029     	b	0x40d8 <awrw_store+0x2d4>
    4038: 2a1f03e3     	mov	w3, wzr
    403c: b9400fe1     	ldr	w1, [sp, #0xc]
    4040: f9429ac2     	ldr	x2, [x22, #0x530]
    4044: aa1503e0     	mov	x0, x21
    4048: 94000000     	bl	0x4048 <awrw_store+0x244>
		0000000000004048:  R_AARCH64_CALL26	i2c_w_bytes
    404c: 1400003a     	b	0x4134 <awrw_store+0x330>
    4050: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xff5
    4054: 91000000     	add	x0, x0, #0x0
		0000000000004054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xff5
    4058: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		0000000000004058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    405c: 91000021     	add	x1, x1, #0x0
		000000000000405c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4060: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xecb
    4064: 91000063     	add	x3, x3, #0x0
		0000000000004064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xecb
    4068: 52819282     	mov	w2, #0xc94              // =3220
    406c: 94000000     	bl	0x406c <awrw_store+0x268>
		000000000000406c:  R_AARCH64_CALL26	_printk
    4070: 14000033     	b	0x413c <awrw_store+0x338>
    4074: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xff5
    4078: 91000000     	add	x0, x0, #0x0
		0000000000004078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xff5
    407c: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		000000000000407c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4080: 91000021     	add	x1, x1, #0x0
		0000000000004080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4084: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xecb
    4088: 91000063     	add	x3, x3, #0x0
		0000000000004088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xecb
    408c: 52818de2     	mov	w2, #0xc6f              // =3183
    4090: 94000000     	bl	0x4090 <awrw_store+0x28c>
		0000000000004090:  R_AARCH64_CALL26	_printk
    4094: 92800433     	mov	x19, #-0x22             // =-34
    4098: 14000029     	b	0x413c <awrw_store+0x338>
    409c: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		000000000000409c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xff5
    40a0: 91000000     	add	x0, x0, #0x0
		00000000000040a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xff5
    40a4: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		00000000000040a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    40a8: 91000021     	add	x1, x1, #0x0
		00000000000040a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    40ac: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		00000000000040ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xecb
    40b0: 91000063     	add	x3, x3, #0x0
		00000000000040b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xecb
    40b4: 52818f22     	mov	w2, #0xc79              // =3193
    40b8: 14000011     	b	0x40fc <awrw_store+0x2f8>
    40bc: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		00000000000040bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x532
    40c0: 91000000     	add	x0, x0, #0x0
		00000000000040c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x532
    40c4: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		00000000000040c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    40c8: 91000021     	add	x1, x1, #0x0
		00000000000040c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    40cc: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		00000000000040cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x664
    40d0: 91000063     	add	x3, x3, #0x0
		00000000000040d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x664
    40d4: 52800ca2     	mov	w2, #0x65               // =101
    40d8: 94000000     	bl	0x40d8 <awrw_store+0x2d4>
		00000000000040d8:  R_AARCH64_CALL26	_printk
    40dc: 14000016     	b	0x4134 <awrw_store+0x330>
    40e0: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		00000000000040e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xff5
    40e4: 91000000     	add	x0, x0, #0x0
		00000000000040e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xff5
    40e8: 90000001     	adrp	x1, 0x4000 <awrw_store+0x1fc>
		00000000000040e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    40ec: 91000021     	add	x1, x1, #0x0
		00000000000040ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    40f0: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		00000000000040f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xecb
    40f4: 91000063     	add	x3, x3, #0x0
		00000000000040f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xecb
    40f8: 52819022     	mov	w2, #0xc81              // =3201
    40fc: 94000000     	bl	0x40fc <awrw_store+0x2f8>
		00000000000040fc:  R_AARCH64_CALL26	_printk
    4100: 92800433     	mov	x19, #-0x22             // =-34
    4104: 1400000c     	b	0x4134 <awrw_store+0x330>
    4108: b94013e0     	ldr	w0, [sp, #0x10]
    410c: d5384118     	mrs	x24, SP_EL0
    4110: f9402b19     	ldr	x25, [x24, #0x50]
    4114: 90000008     	adrp	x8, 0x4000 <awrw_store+0x1fc>
		0000000000004114:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    4118: 91000108     	add	x8, x8, #0x0
		0000000000004118:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    411c: 52819801     	mov	w1, #0xcc0              // =3264
    4120: f9002b08     	str	x8, [x24, #0x50]
    4124: 94000000     	bl	0x4124 <awrw_store+0x320>
		0000000000004124:  R_AARCH64_CALL26	__kmalloc_noprof
    4128: f9002b19     	str	x25, [x24, #0x50]
    412c: b5ffeb80     	cbnz	x0, 0x3e9c <awrw_store+0x98>
    4130: 92800173     	mov	x19, #-0xc              // =-12
    4134: 910922c0     	add	x0, x22, #0x248
    4138: 94000000     	bl	0x4138 <awrw_store+0x334>
		0000000000004138:  R_AARCH64_CALL26	mutex_unlock
    413c: d5384108     	mrs	x8, SP_EL0
    4140: f9438908     	ldr	x8, [x8, #0x710]
    4144: f85f83a9     	ldur	x9, [x29, #-0x8]
    4148: eb09011f     	cmp	x8, x9
    414c: 54000141     	b.ne	0x4174 <awrw_store+0x370>
    4150: aa1303e0     	mov	x0, x19
    4154: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    4158: f94033f9     	ldr	x25, [sp, #0x60]
    415c: a94857f6     	ldp	x22, x21, [sp, #0x80]
    4160: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    4164: a9457bfd     	ldp	x29, x30, [sp, #0x50]
    4168: 910283ff     	add	sp, sp, #0xa0
    416c: d50323bf     	autiasp
    4170: d65f03c0     	ret
    4174: 94000000     	bl	0x4174 <awrw_store+0x370>
		0000000000004174:  R_AARCH64_CALL26	__stack_chk_fail
