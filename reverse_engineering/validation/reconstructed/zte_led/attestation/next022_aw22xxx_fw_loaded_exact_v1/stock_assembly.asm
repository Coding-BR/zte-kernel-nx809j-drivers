
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000040e8 <aw22xxx_fw_loaded>:
    40e8: d503233f     	paciasp
    40ec: d102c3ff     	sub	sp, sp, #0xb0
    40f0: a9057bfd     	stp	x29, x30, [sp, #0x50]
    40f4: a9066ffc     	stp	x28, x27, [sp, #0x60]
    40f8: a90767fa     	stp	x26, x25, [sp, #0x70]
    40fc: a9085ff8     	stp	x24, x23, [sp, #0x80]
    4100: a90957f6     	stp	x22, x21, [sp, #0x90]
    4104: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
    4108: 910143fd     	add	x29, sp, #0x50
    410c: d5384108     	mrs	x8, SP_EL0
    4110: aa0103f3     	mov	x19, x1
    4114: aa0003f7     	mov	x23, x0
    4118: f9438908     	ldr	x8, [x8, #0x710]
    411c: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		000000000000411c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    4120: 91000000     	add	x0, x0, #0x0
		0000000000004120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    4124: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    4128: 91000021     	add	x1, x1, #0x0
		0000000000004128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    412c: f81f83a8     	stur	x8, [x29, #-0x8]
    4130: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    4134: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    4138: 390073ff     	strb	wzr, [sp, #0x1c]
    413c: 94000000     	bl	0x413c <aw22xxx_fw_loaded+0x54>
		000000000000413c:  R_AARCH64_CALL26	_printk
    4140: b5000177     	cbnz	x23, 0x416c <aw22xxx_fw_loaded+0x84>
    4144: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x647
    4148: 91000000     	add	x0, x0, #0x0
		0000000000004148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x647
    414c: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		000000000000414c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    4150: 91000021     	add	x1, x1, #0x0
		0000000000004150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    4154: 90000002     	adrp	x2, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004154:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d8
    4158: 91000042     	add	x2, x2, #0x0
		0000000000004158:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x61d8
    415c: 94000000     	bl	0x415c <aw22xxx_fw_loaded+0x74>
		000000000000415c:  R_AARCH64_CALL26	_printk
    4160: aa1f03e0     	mov	x0, xzr
    4164: 94000000     	bl	0x4164 <aw22xxx_fw_loaded+0x7c>
		0000000000004164:  R_AARCH64_CALL26	release_firmware
    4168: 140002d0     	b	0x4ca8 <aw22xxx_fw_loaded+0xbc0>
    416c: f94002e3     	ldr	x3, [x23]
    4170: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31e
    4174: 91000000     	add	x0, x0, #0x0
		0000000000004174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31e
    4178: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    417c: 91000021     	add	x1, x1, #0x0
		000000000000417c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    4180: 90000002     	adrp	x2, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004180:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d8
    4184: 91000042     	add	x2, x2, #0x0
		0000000000004184:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x61d8
    4188: 94000000     	bl	0x4188 <aw22xxx_fw_loaded+0xa0>
		0000000000004188:  R_AARCH64_CALL26	_printk
    418c: a94022e9     	ldp	x9, x8, [x23]
    4190: f1000d2e     	subs	x14, x9, #0x3
    4194: 540001e3     	b.lo	0x41d0 <aw22xxx_fw_loaded+0xe8>
    4198: d100092d     	sub	x13, x9, #0x2
    419c: f10009bf     	cmp	x13, #0x2
    41a0: 54000582     	b.hs	0x4250 <aw22xxx_fw_loaded+0x168>
    41a4: 2a1f03eb     	mov	w11, wzr
    41a8: 5280004a     	mov	w10, #0x2               // =2
    41ac: 5280004c     	mov	w12, #0x2               // =2
    41b0: 1100058c     	add	w12, w12, #0x1
    41b4: 386a690d     	ldrb	w13, [x8, x10]
    41b8: 93407d8a     	sxtw	x10, w12
    41bc: 1100058c     	add	w12, w12, #0x1
    41c0: eb0a013f     	cmp	x9, x10
    41c4: 0b0d016b     	add	w11, w11, w13
    41c8: 54ffff68     	b.hi	0x41b4 <aw22xxx_fw_loaded+0xcc>
    41cc: 14000002     	b	0x41d4 <aw22xxx_fw_loaded+0xec>
    41d0: 2a1f03eb     	mov	w11, wzr
    41d4: 79400108     	ldrh	w8, [x8]
    41d8: 12003d62     	and	w2, w11, #0xffff
    41dc: 5ac00908     	rev	w8, w8
    41e0: 6b48405f     	cmp	w2, w8, lsr #16
    41e4: 54000261     	b.ne	0x4230 <aw22xxx_fw_loaded+0x148>
    41e8: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000041e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x964
    41ec: 91000000     	add	x0, x0, #0x0
		00000000000041ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x964
    41f0: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000041f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    41f4: 91000021     	add	x1, x1, #0x0
		00000000000041f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    41f8: 94000000     	bl	0x41f8 <aw22xxx_fw_loaded+0x110>
		00000000000041f8:  R_AARCH64_CALL26	_printk
    41fc: d503201f     	nop
    4200: f94002e8     	ldr	x8, [x23]
    4204: 5281b801     	mov	w1, #0xdc0              // =3520
    4208: 91004115     	add	x21, x8, #0x10
    420c: aa1503e0     	mov	x0, x21
    4210: 94000000     	bl	0x4210 <aw22xxx_fw_loaded+0x128>
		0000000000004210:  R_AARCH64_CALL26	__kmalloc_noprof
    4214: aa0003f4     	mov	x20, x0
    4218: b50006f4     	cbnz	x20, 0x42f4 <aw22xxx_fw_loaded+0x20c>
    421c: aa1703e0     	mov	x0, x23
    4220: 94000000     	bl	0x4220 <aw22xxx_fw_loaded+0x138>
		0000000000004220:  R_AARCH64_CALL26	release_firmware
    4224: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1546
    4228: 91000000     	add	x0, x0, #0x0
		0000000000004228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1546
    422c: 1400029c     	b	0x4c9c <aw22xxx_fw_loaded+0xbb4>
    4230: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x545
    4234: 91000000     	add	x0, x0, #0x0
		0000000000004234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x545
    4238: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    423c: 91000021     	add	x1, x1, #0x0
		000000000000423c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    4240: 94000000     	bl	0x4240 <aw22xxx_fw_loaded+0x158>
		0000000000004240:  R_AARCH64_CALL26	_printk
    4244: aa1703e0     	mov	x0, x23
    4248: 94000000     	bl	0x4248 <aw22xxx_fw_loaded+0x160>
		0000000000004248:  R_AARCH64_CALL26	release_firmware
    424c: 14000297     	b	0x4ca8 <aw22xxx_fw_loaded+0xbc0>
    4250: 529fffaa     	mov	w10, #0xfffd            // =65533
    4254: 2a1f03eb     	mov	w11, wzr
    4258: 5280004c     	mov	w12, #0x2               // =2
    425c: 72afffea     	movk	w10, #0x7fff, lsl #16
    4260: 6b0a01df     	cmp	w14, w10
    4264: 5280004a     	mov	w10, #0x2               // =2
    4268: 54fffa48     	b.hi	0x41b0 <aw22xxx_fw_loaded+0xc8>
    426c: 321e73ef     	mov	w15, #0x7ffffffc        // =2147483644
    4270: 6b0f01df     	cmp	w14, w15
    4274: 54fff9e8     	b.hi	0x41b0 <aw22xxx_fw_loaded+0xc8>
    4278: d360fdce     	lsr	x14, x14, #32
    427c: b5fff9ae     	cbnz	x14, 0x41b0 <aw22xxx_fw_loaded+0xc8>
    4280: 927ff9af     	and	x15, x13, #0xfffffffffffffffe
    4284: 2a1f03eb     	mov	w11, wzr
    4288: 91000d10     	add	x16, x8, #0x3
    428c: 910009ea     	add	x10, x15, #0x2
    4290: 110009ec     	add	w12, w15, #0x2
    4294: aa0f03f1     	mov	x17, x15
    4298: 385ff200     	ldurb	w0, [x16, #-0x1]
    429c: 38402601     	ldrb	w1, [x16], #0x2
    42a0: f1000a31     	subs	x17, x17, #0x2
    42a4: 0b00016b     	add	w11, w11, w0
    42a8: 0b0101ce     	add	w14, w14, w1
    42ac: 54ffff61     	b.ne	0x4298 <aw22xxx_fw_loaded+0x1b0>
    42b0: eb0f01bf     	cmp	x13, x15
    42b4: 0b0b01cb     	add	w11, w14, w11
    42b8: 54fff7c1     	b.ne	0x41b0 <aw22xxx_fw_loaded+0xc8>
    42bc: 17ffffc6     	b	0x41d4 <aw22xxx_fw_loaded+0xec>
    42c0: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000042c0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
    42c4: 91000108     	add	x8, x8, #0x0
		00000000000042c4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
    42c8: d5384116     	mrs	x22, SP_EL0
    42cc: f9402ad8     	ldr	x24, [x22, #0x50]
    42d0: f9002ac8     	str	x8, [x22, #0x50]
    42d4: 5281b801     	mov	w1, #0xdc0              // =3520
    42d8: f94002e8     	ldr	x8, [x23]
    42dc: 91004115     	add	x21, x8, #0x10
    42e0: aa1503e0     	mov	x0, x21
    42e4: 94000000     	bl	0x42e4 <aw22xxx_fw_loaded+0x1fc>
		00000000000042e4:  R_AARCH64_CALL26	__kmalloc_noprof
    42e8: aa0003f4     	mov	x20, x0
    42ec: f9002ad8     	str	x24, [x22, #0x50]
    42f0: b4fff974     	cbz	x20, 0x421c <aw22xxx_fw_loaded+0x134>
    42f4: f94006e8     	ldr	x8, [x23, #0x8]
    42f8: 90000016     	adrp	x22, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000042f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    42fc: 910002d6     	add	x22, x22, #0x0
		00000000000042fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    4300: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf91
    4304: 91000000     	add	x0, x0, #0x0
		0000000000004304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf91
    4308: aa1603e1     	mov	x1, x22
    430c: 39400902     	ldrb	w2, [x8, #0x2]
    4310: 94000000     	bl	0x4310 <aw22xxx_fw_loaded+0x228>
		0000000000004310:  R_AARCH64_CALL26	_printk
    4314: f94006e8     	ldr	x8, [x23, #0x8]
    4318: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x447
    431c: 91000000     	add	x0, x0, #0x0
		000000000000431c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x447
    4320: 9100a3e2     	add	x2, sp, #0x28
    4324: aa1603e1     	mov	x1, x22
    4328: f8403109     	ldur	x9, [x8, #0x3]
    432c: f840b108     	ldur	x8, [x8, #0xb]
    4330: a902a3e9     	stp	x9, x8, [sp, #0x28]
    4334: 94000000     	bl	0x4334 <aw22xxx_fw_loaded+0x24c>
		0000000000004334:  R_AARCH64_CALL26	_printk
    4338: f94006e8     	ldr	x8, [x23, #0x8]
    433c: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		000000000000433c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1389
    4340: 91000000     	add	x0, x0, #0x0
		0000000000004340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1389
    4344: 9100a3e2     	add	x2, sp, #0x28
    4348: aa1603e1     	mov	x1, x22
    434c: f8413108     	ldur	x8, [x8, #0x13]
    4350: f90017e8     	str	x8, [sp, #0x28]
    4354: 94000000     	bl	0x4354 <aw22xxx_fw_loaded+0x26c>
		0000000000004354:  R_AARCH64_CALL26	_printk
    4358: f10012bf     	cmp	x21, #0x4
    435c: 54004dc3     	b.lo	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4360: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    4364: f100111f     	cmp	x8, #0x4
    4368: 54004d60     	b.eq	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    436c: f94006e8     	ldr	x8, [x23, #0x8]
    4370: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165f
    4374: 91000000     	add	x0, x0, #0x0
		0000000000004374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165f
    4378: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    437c: 91000021     	add	x1, x1, #0x0
		000000000000437c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    4380: b841b108     	ldur	w8, [x8, #0x1b]
    4384: 5ac00902     	rev	w2, w8
    4388: b9000682     	str	w2, [x20, #0x4]
    438c: 94000000     	bl	0x438c <aw22xxx_fw_loaded+0x2a4>
		000000000000438c:  R_AARCH64_CALL26	_printk
    4390: f10022bf     	cmp	x21, #0x8
    4394: 54004c03     	b.lo	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4398: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    439c: f100211f     	cmp	x8, #0x8
    43a0: 54004ba0     	b.eq	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    43a4: f94006e8     	ldr	x8, [x23, #0x8]
    43a8: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000043a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12a8
    43ac: 91000000     	add	x0, x0, #0x0
		00000000000043ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12a8
    43b0: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000043b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    43b4: 91000021     	add	x1, x1, #0x0
		00000000000043b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    43b8: 79404508     	ldrh	w8, [x8, #0x22]
    43bc: 5ac00502     	rev16	w2, w8
    43c0: b9000a82     	str	w2, [x20, #0x8]
    43c4: 94000000     	bl	0x43c4 <aw22xxx_fw_loaded+0x2dc>
		00000000000043c4:  R_AARCH64_CALL26	_printk
    43c8: f10032bf     	cmp	x21, #0xc
    43cc: 54004a43     	b.lo	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    43d0: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    43d4: f100311f     	cmp	x8, #0xc
    43d8: 540049e0     	b.eq	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    43dc: f94006e8     	ldr	x8, [x23, #0x8]
    43e0: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000043e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1992
    43e4: 91000000     	add	x0, x0, #0x0
		00000000000043e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1992
    43e8: aa1603e1     	mov	x1, x22
    43ec: 39409102     	ldrb	w2, [x8, #0x24]
    43f0: b9000e82     	str	w2, [x20, #0xc]
    43f4: 94000000     	bl	0x43f4 <aw22xxx_fw_loaded+0x30c>
		00000000000043f4:  R_AARCH64_CALL26	_printk
    43f8: f94006e8     	ldr	x8, [x23, #0x8]
    43fc: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000043fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x139f
    4400: 91000000     	add	x0, x0, #0x0
		0000000000004400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x139f
    4404: aa1603e1     	mov	x1, x22
    4408: 79404d08     	ldrh	w8, [x8, #0x26]
    440c: 5ac00502     	rev16	w2, w8
    4410: b9000282     	str	w2, [x20]
    4414: 94000000     	bl	0x4414 <aw22xxx_fw_loaded+0x32c>
		0000000000004414:  R_AARCH64_CALL26	_printk
    4418: b9400282     	ldr	w2, [x20]
    441c: f10042a8     	subs	x8, x21, #0x10
    4420: 9a8833e1     	csel	x1, xzr, x8, lo
    4424: eb02003f     	cmp	x1, x2
    4428: 54004783     	b.lo	0x4d18 <aw22xxx_fw_loaded+0xc30>
    442c: f94006e8     	ldr	x8, [x23, #0x8]
    4430: 91004296     	add	x22, x20, #0x10
    4434: aa1603e0     	mov	x0, x22
    4438: 9100a101     	add	x1, x8, #0x28
    443c: 94000000     	bl	0x443c <aw22xxx_fw_loaded+0x354>
		000000000000443c:  R_AARCH64_CALL26	memcpy
    4440: aa1703e0     	mov	x0, x23
    4444: 94000000     	bl	0x4444 <aw22xxx_fw_loaded+0x35c>
		0000000000004444:  R_AARCH64_CALL26	release_firmware
    4448: aa1303e0     	mov	x0, x19
    444c: 52800021     	mov	w1, #0x1                // =1
    4450: 52800aa2     	mov	w2, #0x55               // =85
    4454: 97ffeff2     	bl	0x41c <aw22xxx_i2c_write>
    4458: 5280fa00     	mov	w0, #0x7d0              // =2000
    445c: 52817701     	mov	w1, #0xbb8              // =3000
    4460: 52800042     	mov	w2, #0x2                // =2
    4464: 94000000     	bl	0x4464 <aw22xxx_fw_loaded+0x37c>
		0000000000004464:  R_AARCH64_CALL26	usleep_range_state
    4468: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    446c: 91000000     	add	x0, x0, #0x0
		000000000000446c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    4470: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    4474: 91000021     	add	x1, x1, #0x0
		0000000000004474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    4478: 52803542     	mov	w2, #0x1aa              // =426
    447c: 52800023     	mov	w3, #0x1                // =1
    4480: 94000000     	bl	0x4480 <aw22xxx_fw_loaded+0x398>
		0000000000004480:  R_AARCH64_CALL26	_printk
    4484: 910093e2     	add	x2, sp, #0x24
    4488: aa1303e0     	mov	x0, x19
    448c: 52800041     	mov	w1, #0x2                // =2
    4490: 390093ff     	strb	wzr, [sp, #0x24]
    4494: 97fff02e     	bl	0x54c <aw22xxx_i2c_read>
    4498: 394093e8     	ldrb	w8, [sp, #0x24]
    449c: aa1303e0     	mov	x0, x19
    44a0: 52800041     	mov	w1, #0x2                // =2
    44a4: 32000102     	orr	w2, w8, #0x1
    44a8: 390093e2     	strb	w2, [sp, #0x24]
    44ac: 97ffefdc     	bl	0x41c <aw22xxx_i2c_write>
    44b0: 5280fa00     	mov	w0, #0x7d0              // =2000
    44b4: 52817701     	mov	w1, #0xbb8              // =3000
    44b8: 52800042     	mov	w2, #0x2                // =2
    44bc: 94000000     	bl	0x44bc <aw22xxx_fw_loaded+0x3d4>
		00000000000044bc:  R_AARCH64_CALL26	usleep_range_state
    44c0: 910093e2     	add	x2, sp, #0x24
    44c4: aa1303e0     	mov	x0, x19
    44c8: 52800081     	mov	w1, #0x4                // =4
    44cc: 390093ff     	strb	wzr, [sp, #0x24]
    44d0: 97fff01f     	bl	0x54c <aw22xxx_i2c_read>
    44d4: 394093e8     	ldrb	w8, [sp, #0x24]
    44d8: aa1303e0     	mov	x0, x19
    44dc: 52800081     	mov	w1, #0x4                // =4
    44e0: 32000102     	orr	w2, w8, #0x1
    44e4: 390093e2     	strb	w2, [sp, #0x24]
    44e8: 97ffefcd     	bl	0x41c <aw22xxx_i2c_write>
    44ec: b9400288     	ldr	w8, [x20]
    44f0: 529fffe9     	mov	w9, #0xffff             // =65535
    44f4: aa1303e0     	mov	x0, x19
    44f8: 52800441     	mov	w1, #0x22               // =34
    44fc: 0b090108     	add	w8, w8, w9
    4500: 53087d02     	lsr	w2, w8, #8
    4504: 97ffefc6     	bl	0x41c <aw22xxx_i2c_write>
    4508: 39400288     	ldrb	w8, [x20]
    450c: aa1303e0     	mov	x0, x19
    4510: 52800421     	mov	w1, #0x21               // =33
    4514: 51000502     	sub	w2, w8, #0x1
    4518: 97ffefc1     	bl	0x41c <aw22xxx_i2c_write>
    451c: aa1303e0     	mov	x0, x19
    4520: 52800481     	mov	w1, #0x24               // =36
    4524: 528000e2     	mov	w2, #0x7                // =7
    4528: 97ffefbd     	bl	0x41c <aw22xxx_i2c_write>
    452c: 52827100     	mov	w0, #0x1388             // =5000
    4530: 52832c81     	mov	w1, #0x1964             // =6500
    4534: 52800042     	mov	w2, #0x2                // =2
    4538: 94000000     	bl	0x4538 <aw22xxx_fw_loaded+0x450>
		0000000000004538:  R_AARCH64_CALL26	usleep_range_state
    453c: 910073e2     	add	x2, sp, #0x1c
    4540: aa1303e0     	mov	x0, x19
    4544: 52800481     	mov	w1, #0x24               // =36
    4548: 97fff001     	bl	0x54c <aw22xxx_i2c_read>
    454c: 394073e2     	ldrb	w2, [sp, #0x1c]
    4550: 7100145f     	cmp	w2, #0x5
    4554: 540004e1     	b.ne	0x45f0 <aw22xxx_fw_loaded+0x508>
    4558: 910073e2     	add	x2, sp, #0x1c
    455c: aa1303e0     	mov	x0, x19
    4560: 528004a1     	mov	w1, #0x25               // =37
    4564: 97ffeffa     	bl	0x54c <aw22xxx_i2c_read>
    4568: 394073f7     	ldrb	w23, [sp, #0x1c]
    456c: 910073e2     	add	x2, sp, #0x1c
    4570: aa1303e0     	mov	x0, x19
    4574: 528004c1     	mov	w1, #0x26               // =38
    4578: 97ffeff5     	bl	0x54c <aw22xxx_i2c_read>
    457c: f10022bf     	cmp	x21, #0x8
    4580: 54003ca3     	b.lo	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4584: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    4588: f100211f     	cmp	x8, #0x8
    458c: 54003c40     	b.eq	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4590: 394073e8     	ldrb	w8, [sp, #0x1c]
    4594: b9400a82     	ldr	w2, [x20, #0x8]
    4598: 2a0822e3     	orr	w3, w23, w8, lsl #8
    459c: 6b02007f     	cmp	w3, w2
    45a0: 540003e1     	b.ne	0x461c <aw22xxx_fw_loaded+0x534>
    45a4: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000045a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x144a
    45a8: 91000000     	add	x0, x0, #0x0
		00000000000045a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x144a
    45ac: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000045ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    45b0: 91000021     	add	x1, x1, #0x0
		00000000000045b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    45b4: 2a0303e2     	mov	w2, w3
    45b8: 94000000     	bl	0x45b8 <aw22xxx_fw_loaded+0x4d0>
		00000000000045b8:  R_AARCH64_CALL26	_printk
    45bc: 394bba68     	ldrb	w8, [x19, #0x2ee]
    45c0: 35003908     	cbnz	w8, 0x4ce0 <aw22xxx_fw_loaded+0xbf8>
    45c4: aa1403e0     	mov	x0, x20
    45c8: 94000000     	bl	0x45c8 <aw22xxx_fw_loaded+0x4e0>
		00000000000045c8:  R_AARCH64_CALL26	kfree
    45cc: aa1303e0     	mov	x0, x19
    45d0: 52800481     	mov	w1, #0x24               // =36
    45d4: 2a1f03e2     	mov	w2, wzr
    45d8: 97ffef91     	bl	0x41c <aw22xxx_i2c_write>
    45dc: aa1303e0     	mov	x0, x19
    45e0: 940001d1     	bl	0x4d24 <aw22xxx_led_init>
    45e4: 52800048     	mov	w8, #0x2                // =2
    45e8: 390bbe68     	strb	w8, [x19, #0x2ef]
    45ec: 140001af     	b	0x4ca8 <aw22xxx_fw_loaded+0xbc0>
    45f0: 90000017     	adrp	x23, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000045f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    45f4: 910002f7     	add	x23, x23, #0x0
		00000000000045f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    45f8: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000045f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfac
    45fc: 91000000     	add	x0, x0, #0x0
		00000000000045fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfac
    4600: aa1703e1     	mov	x1, x23
    4604: 94000000     	bl	0x4604 <aw22xxx_fw_loaded+0x51c>
		0000000000004604:  R_AARCH64_CALL26	_printk
    4608: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b6
    460c: 91000000     	add	x0, x0, #0x0
		000000000000460c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b6
    4610: aa1703e1     	mov	x1, x23
    4614: 94000000     	bl	0x4614 <aw22xxx_fw_loaded+0x52c>
		0000000000004614:  R_AARCH64_CALL26	_printk
    4618: 1400000f     	b	0x4654 <aw22xxx_fw_loaded+0x56c>
    461c: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		000000000000461c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c0
    4620: 91000000     	add	x0, x0, #0x0
		0000000000004620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c0
    4624: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    4628: 91000021     	add	x1, x1, #0x0
		0000000000004628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    462c: 94000000     	bl	0x462c <aw22xxx_fw_loaded+0x544>
		000000000000462c:  R_AARCH64_CALL26	_printk
    4630: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    4634: f100111f     	cmp	x8, #0x4
    4638: 540036e0     	b.eq	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    463c: b9400682     	ldr	w2, [x20, #0x4]
    4640: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004640:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb2
    4644: 91000000     	add	x0, x0, #0x0
		0000000000004644:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb2
    4648: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    464c: 91000021     	add	x1, x1, #0x0
		000000000000464c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    4650: 94000000     	bl	0x4650 <aw22xxx_fw_loaded+0x568>
		0000000000004650:  R_AARCH64_CALL26	_printk
    4654: aa1303e0     	mov	x0, x19
    4658: 52800481     	mov	w1, #0x24               // =36
    465c: 2a1f03e2     	mov	w2, wzr
    4660: 97ffef6f     	bl	0x41c <aw22xxx_i2c_write>
    4664: aa1303e0     	mov	x0, x19
    4668: 52801fe1     	mov	w1, #0xff               // =255
    466c: 2a1f03e2     	mov	w2, wzr
    4670: 390083ff     	strb	wzr, [sp, #0x20]
    4674: 97ffef6a     	bl	0x41c <aw22xxx_i2c_write>
    4678: aa1303e0     	mov	x0, x19
    467c: 52800021     	mov	w1, #0x1                // =1
    4680: 52800aa2     	mov	w2, #0x55               // =85
    4684: 97ffef66     	bl	0x41c <aw22xxx_i2c_write>
    4688: 5280fa00     	mov	w0, #0x7d0              // =2000
    468c: 52817701     	mov	w1, #0xbb8              // =3000
    4690: 52800042     	mov	w2, #0x2                // =2
    4694: 94000000     	bl	0x4694 <aw22xxx_fw_loaded+0x5ac>
		0000000000004694:  R_AARCH64_CALL26	usleep_range_state
    4698: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    469c: 91000000     	add	x0, x0, #0x0
		000000000000469c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    46a0: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000046a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    46a4: 91000021     	add	x1, x1, #0x0
		00000000000046a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    46a8: 52803542     	mov	w2, #0x1aa              // =426
    46ac: 52800023     	mov	w3, #0x1                // =1
    46b0: 94000000     	bl	0x46b0 <aw22xxx_fw_loaded+0x5c8>
		00000000000046b0:  R_AARCH64_CALL26	_printk
    46b4: 910093e2     	add	x2, sp, #0x24
    46b8: aa1303e0     	mov	x0, x19
    46bc: 52800041     	mov	w1, #0x2                // =2
    46c0: 390093ff     	strb	wzr, [sp, #0x24]
    46c4: 97ffefa2     	bl	0x54c <aw22xxx_i2c_read>
    46c8: 394093e8     	ldrb	w8, [sp, #0x24]
    46cc: aa1303e0     	mov	x0, x19
    46d0: 52800041     	mov	w1, #0x2                // =2
    46d4: 32000102     	orr	w2, w8, #0x1
    46d8: 390093e2     	strb	w2, [sp, #0x24]
    46dc: 97ffef50     	bl	0x41c <aw22xxx_i2c_write>
    46e0: 5280fa00     	mov	w0, #0x7d0              // =2000
    46e4: 52817701     	mov	w1, #0xbb8              // =3000
    46e8: 52800042     	mov	w2, #0x2                // =2
    46ec: 94000000     	bl	0x46ec <aw22xxx_fw_loaded+0x604>
		00000000000046ec:  R_AARCH64_CALL26	usleep_range_state
    46f0: 910093e2     	add	x2, sp, #0x24
    46f4: aa1303e0     	mov	x0, x19
    46f8: 52800081     	mov	w1, #0x4                // =4
    46fc: 390093ff     	strb	wzr, [sp, #0x24]
    4700: 97ffef93     	bl	0x54c <aw22xxx_i2c_read>
    4704: 394093e8     	ldrb	w8, [sp, #0x24]
    4708: aa1303e0     	mov	x0, x19
    470c: 52800081     	mov	w1, #0x4                // =4
    4710: 32000102     	orr	w2, w8, #0x1
    4714: 390093e2     	strb	w2, [sp, #0x24]
    4718: 97ffef41     	bl	0x41c <aw22xxx_i2c_write>
    471c: aa1303e0     	mov	x0, x19
    4720: 52801001     	mov	w1, #0x80               // =128
    4724: 52801d82     	mov	w2, #0xec               // =236
    4728: 97ffef3d     	bl	0x41c <aw22xxx_i2c_write>
    472c: aa1303e0     	mov	x0, x19
    4730: 528006a1     	mov	w1, #0x35               // =53
    4734: 52800522     	mov	w2, #0x29               // =41
    4738: 97ffef39     	bl	0x41c <aw22xxx_i2c_write>
    473c: f10032bf     	cmp	x21, #0xc
    4740: 54002ea3     	b.lo	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4744: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    4748: f100311f     	cmp	x8, #0xc
    474c: 54002e40     	b.eq	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4750: b9400e82     	ldr	w2, [x20, #0xc]
    4754: aa1303e0     	mov	x0, x19
    4758: 52800701     	mov	w1, #0x38               // =56
    475c: 97ffef30     	bl	0x41c <aw22xxx_i2c_write>
    4760: aa1303e0     	mov	x0, x19
    4764: 52800441     	mov	w1, #0x22               // =34
    4768: 2a1f03e2     	mov	w2, wzr
    476c: 97ffef2c     	bl	0x41c <aw22xxx_i2c_write>
    4770: aa1303e0     	mov	x0, x19
    4774: 52800421     	mov	w1, #0x21               // =33
    4778: 2a1f03e2     	mov	w2, wzr
    477c: 97ffef28     	bl	0x41c <aw22xxx_i2c_write>
    4780: aa1303e0     	mov	x0, x19
    4784: 52800401     	mov	w1, #0x20               // =32
    4788: 52800062     	mov	w2, #0x3                // =3
    478c: 97ffef24     	bl	0x41c <aw22xxx_i2c_write>
    4790: aa1303e0     	mov	x0, x19
    4794: 52800601     	mov	w1, #0x30               // =48
    4798: 52800062     	mov	w2, #0x3                // =3
    479c: 97ffef20     	bl	0x41c <aw22xxx_i2c_write>
    47a0: aa1303e0     	mov	x0, x19
    47a4: 52800461     	mov	w1, #0x23               // =35
    47a8: 2a1f03e2     	mov	w2, wzr
    47ac: 97ffef1c     	bl	0x41c <aw22xxx_i2c_write>
    47b0: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000047b0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x370
    47b4: b9400108     	ldr	w8, [x8]
		00000000000047b4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x370
    47b8: 7100311f     	cmp	w8, #0xc
    47bc: 540000c3     	b.lo	0x47d4 <aw22xxx_fw_loaded+0x6ec>
    47c0: 5281f400     	mov	w0, #0xfa0              // =4000
    47c4: 52823281     	mov	w1, #0x1194             // =4500
    47c8: 52800042     	mov	w2, #0x2                // =2
    47cc: 94000000     	bl	0x47cc <aw22xxx_fw_loaded+0x6e4>
		00000000000047cc:  R_AARCH64_CALL26	usleep_range_state
    47d0: 14000003     	b	0x47dc <aw22xxx_fw_loaded+0x6f4>
    47d4: 52800500     	mov	w0, #0x28               // =40
    47d8: 94000000     	bl	0x47d8 <aw22xxx_fw_loaded+0x6f0>
		00000000000047d8:  R_AARCH64_CALL26	msleep
    47dc: aa1303e0     	mov	x0, x19
    47e0: 52800601     	mov	w1, #0x30               // =48
    47e4: 2a1f03e2     	mov	w2, wzr
    47e8: 97ffef0d     	bl	0x41c <aw22xxx_i2c_write>
    47ec: aa1303e0     	mov	x0, x19
    47f0: 52800441     	mov	w1, #0x22               // =34
    47f4: 52800802     	mov	w2, #0x40               // =64
    47f8: 97ffef09     	bl	0x41c <aw22xxx_i2c_write>
    47fc: aa1303e0     	mov	x0, x19
    4800: 52800421     	mov	w1, #0x21               // =33
    4804: 2a1f03e2     	mov	w2, wzr
    4808: 97ffef05     	bl	0x41c <aw22xxx_i2c_write>
    480c: aa1303e0     	mov	x0, x19
    4810: 52800601     	mov	w1, #0x30               // =48
    4814: 52800042     	mov	w2, #0x2                // =2
    4818: 97ffef01     	bl	0x41c <aw22xxx_i2c_write>
    481c: aa1303e0     	mov	x0, x19
    4820: 52800461     	mov	w1, #0x23               // =35
    4824: 2a1f03e2     	mov	w2, wzr
    4828: 52800478     	mov	w24, #0x23              // =35
    482c: 97ffeefc     	bl	0x41c <aw22xxx_i2c_write>
    4830: 5282ee00     	mov	w0, #0x1770             // =6000
    4834: 52832c81     	mov	w1, #0x1964             // =6500
    4838: 52800042     	mov	w2, #0x2                // =2
    483c: 94000000     	bl	0x483c <aw22xxx_fw_loaded+0x754>
		000000000000483c:  R_AARCH64_CALL26	usleep_range_state
    4840: aa1303e0     	mov	x0, x19
    4844: 52800601     	mov	w1, #0x30               // =48
    4848: 2a1f03e2     	mov	w2, wzr
    484c: 97ffeef4     	bl	0x41c <aw22xxx_i2c_write>
    4850: aa1303e0     	mov	x0, x19
    4854: 52800441     	mov	w1, #0x22               // =34
    4858: 52800842     	mov	w2, #0x42               // =66
    485c: 97ffeef0     	bl	0x41c <aw22xxx_i2c_write>
    4860: aa1303e0     	mov	x0, x19
    4864: 52800421     	mov	w1, #0x21               // =33
    4868: 2a1f03e2     	mov	w2, wzr
    486c: 97ffeeec     	bl	0x41c <aw22xxx_i2c_write>
    4870: aa1303e0     	mov	x0, x19
    4874: 52800601     	mov	w1, #0x30               // =48
    4878: 52800042     	mov	w2, #0x2                // =2
    487c: 97ffeee8     	bl	0x41c <aw22xxx_i2c_write>
    4880: aa1303e0     	mov	x0, x19
    4884: 52800461     	mov	w1, #0x23               // =35
    4888: 2a1f03e2     	mov	w2, wzr
    488c: 97ffeee4     	bl	0x41c <aw22xxx_i2c_write>
    4890: 5282ee00     	mov	w0, #0x1770             // =6000
    4894: 52832c81     	mov	w1, #0x1964             // =6500
    4898: 52800042     	mov	w2, #0x2                // =2
    489c: 94000000     	bl	0x489c <aw22xxx_fw_loaded+0x7b4>
		000000000000489c:  R_AARCH64_CALL26	usleep_range_state
    48a0: aa1303e0     	mov	x0, x19
    48a4: 52800601     	mov	w1, #0x30               // =48
    48a8: 2a1f03e2     	mov	w2, wzr
    48ac: 97ffeedc     	bl	0x41c <aw22xxx_i2c_write>
    48b0: aa1303e0     	mov	x0, x19
    48b4: 52800441     	mov	w1, #0x22               // =34
    48b8: 52800882     	mov	w2, #0x44               // =68
    48bc: 97ffeed8     	bl	0x41c <aw22xxx_i2c_write>
    48c0: aa1303e0     	mov	x0, x19
    48c4: 52800421     	mov	w1, #0x21               // =33
    48c8: 2a1f03e2     	mov	w2, wzr
    48cc: 97ffeed4     	bl	0x41c <aw22xxx_i2c_write>
    48d0: aa1303e0     	mov	x0, x19
    48d4: 52800601     	mov	w1, #0x30               // =48
    48d8: 52800042     	mov	w2, #0x2                // =2
    48dc: 97ffeed0     	bl	0x41c <aw22xxx_i2c_write>
    48e0: aa1303e0     	mov	x0, x19
    48e4: 52800461     	mov	w1, #0x23               // =35
    48e8: 2a1f03e2     	mov	w2, wzr
    48ec: 97ffeecc     	bl	0x41c <aw22xxx_i2c_write>
    48f0: 5282ee00     	mov	w0, #0x1770             // =6000
    48f4: 52832c81     	mov	w1, #0x1964             // =6500
    48f8: 52800042     	mov	w2, #0x2                // =2
    48fc: 94000000     	bl	0x48fc <aw22xxx_fw_loaded+0x814>
		00000000000048fc:  R_AARCH64_CALL26	usleep_range_state
    4900: aa1303e0     	mov	x0, x19
    4904: 52800601     	mov	w1, #0x30               // =48
    4908: 2a1f03e2     	mov	w2, wzr
    490c: 97ffeec4     	bl	0x41c <aw22xxx_i2c_write>
    4910: aa1303e0     	mov	x0, x19
    4914: 52800401     	mov	w1, #0x20               // =32
    4918: 2a1f03e2     	mov	w2, wzr
    491c: 97ffeec0     	bl	0x41c <aw22xxx_i2c_write>
    4920: aa1303e0     	mov	x0, x19
    4924: 52800401     	mov	w1, #0x20               // =32
    4928: 52800062     	mov	w2, #0x3                // =3
    492c: 97ffeebc     	bl	0x41c <aw22xxx_i2c_write>
    4930: b9400288     	ldr	w8, [x20]
    4934: 35000be8     	cbnz	w8, 0x4ab0 <aw22xxx_fw_loaded+0x9c8>
    4938: aa1303e0     	mov	x0, x19
    493c: 52800401     	mov	w1, #0x20               // =32
    4940: 2a1f03e2     	mov	w2, wzr
    4944: 97ffeeb6     	bl	0x41c <aw22xxx_i2c_write>
    4948: aa1303e0     	mov	x0, x19
    494c: 52800021     	mov	w1, #0x1                // =1
    4950: 52800aa2     	mov	w2, #0x55               // =85
    4954: 97ffeeb2     	bl	0x41c <aw22xxx_i2c_write>
    4958: 5280fa00     	mov	w0, #0x7d0              // =2000
    495c: 52817701     	mov	w1, #0xbb8              // =3000
    4960: 52800042     	mov	w2, #0x2                // =2
    4964: 94000000     	bl	0x4964 <aw22xxx_fw_loaded+0x87c>
		0000000000004964:  R_AARCH64_CALL26	usleep_range_state
    4968: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    496c: 91000000     	add	x0, x0, #0x0
		000000000000496c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    4970: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    4974: 91000021     	add	x1, x1, #0x0
		0000000000004974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    4978: 52803542     	mov	w2, #0x1aa              // =426
    497c: 52800023     	mov	w3, #0x1                // =1
    4980: 94000000     	bl	0x4980 <aw22xxx_fw_loaded+0x898>
		0000000000004980:  R_AARCH64_CALL26	_printk
    4984: 910093e2     	add	x2, sp, #0x24
    4988: aa1303e0     	mov	x0, x19
    498c: 52800041     	mov	w1, #0x2                // =2
    4990: 390093ff     	strb	wzr, [sp, #0x24]
    4994: 97ffeeee     	bl	0x54c <aw22xxx_i2c_read>
    4998: 394093e8     	ldrb	w8, [sp, #0x24]
    499c: aa1303e0     	mov	x0, x19
    49a0: 52800041     	mov	w1, #0x2                // =2
    49a4: 32000102     	orr	w2, w8, #0x1
    49a8: 390093e2     	strb	w2, [sp, #0x24]
    49ac: 97ffee9c     	bl	0x41c <aw22xxx_i2c_write>
    49b0: 5280fa00     	mov	w0, #0x7d0              // =2000
    49b4: 52817701     	mov	w1, #0xbb8              // =3000
    49b8: 52800042     	mov	w2, #0x2                // =2
    49bc: 94000000     	bl	0x49bc <aw22xxx_fw_loaded+0x8d4>
		00000000000049bc:  R_AARCH64_CALL26	usleep_range_state
    49c0: 910093e2     	add	x2, sp, #0x24
    49c4: aa1303e0     	mov	x0, x19
    49c8: 52800081     	mov	w1, #0x4                // =4
    49cc: 390093ff     	strb	wzr, [sp, #0x24]
    49d0: 97ffeedf     	bl	0x54c <aw22xxx_i2c_read>
    49d4: 394093e8     	ldrb	w8, [sp, #0x24]
    49d8: aa1303e0     	mov	x0, x19
    49dc: 52800081     	mov	w1, #0x4                // =4
    49e0: 32000102     	orr	w2, w8, #0x1
    49e4: 390093e2     	strb	w2, [sp, #0x24]
    49e8: 97ffee8d     	bl	0x41c <aw22xxx_i2c_write>
    49ec: b9400288     	ldr	w8, [x20]
    49f0: 529fffe9     	mov	w9, #0xffff             // =65535
    49f4: aa1303e0     	mov	x0, x19
    49f8: 52800441     	mov	w1, #0x22               // =34
    49fc: 0b090108     	add	w8, w8, w9
    4a00: 53087d02     	lsr	w2, w8, #8
    4a04: 97ffee86     	bl	0x41c <aw22xxx_i2c_write>
    4a08: 39400288     	ldrb	w8, [x20]
    4a0c: aa1303e0     	mov	x0, x19
    4a10: 52800421     	mov	w1, #0x21               // =33
    4a14: 51000502     	sub	w2, w8, #0x1
    4a18: 97ffee81     	bl	0x41c <aw22xxx_i2c_write>
    4a1c: aa1303e0     	mov	x0, x19
    4a20: 52800481     	mov	w1, #0x24               // =36
    4a24: 528000e2     	mov	w2, #0x7                // =7
    4a28: 97ffee7d     	bl	0x41c <aw22xxx_i2c_write>
    4a2c: 52827100     	mov	w0, #0x1388             // =5000
    4a30: 52832c81     	mov	w1, #0x1964             // =6500
    4a34: 52800042     	mov	w2, #0x2                // =2
    4a38: 94000000     	bl	0x4a38 <aw22xxx_fw_loaded+0x950>
		0000000000004a38:  R_AARCH64_CALL26	usleep_range_state
    4a3c: 910083e2     	add	x2, sp, #0x20
    4a40: aa1303e0     	mov	x0, x19
    4a44: 52800481     	mov	w1, #0x24               // =36
    4a48: 97ffeec1     	bl	0x54c <aw22xxx_i2c_read>
    4a4c: 394083e2     	ldrb	w2, [sp, #0x20]
    4a50: 7100145f     	cmp	w2, #0x5
    4a54: 54000e61     	b.ne	0x4c20 <aw22xxx_fw_loaded+0xb38>
    4a58: 910083e2     	add	x2, sp, #0x20
    4a5c: aa1303e0     	mov	x0, x19
    4a60: 528004a1     	mov	w1, #0x25               // =37
    4a64: 97ffeeba     	bl	0x54c <aw22xxx_i2c_read>
    4a68: 394083f6     	ldrb	w22, [sp, #0x20]
    4a6c: 910083e2     	add	x2, sp, #0x20
    4a70: aa1303e0     	mov	x0, x19
    4a74: 528004c1     	mov	w1, #0x26               // =38
    4a78: 97ffeeb5     	bl	0x54c <aw22xxx_i2c_read>
    4a7c: f10022bf     	cmp	x21, #0x8
    4a80: 540014a3     	b.lo	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4a84: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    4a88: f100211f     	cmp	x8, #0x8
    4a8c: 54001440     	b.eq	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4a90: 394083e8     	ldrb	w8, [sp, #0x20]
    4a94: 2a0822c2     	orr	w2, w22, w8, lsl #8
    4a98: b9400a88     	ldr	w8, [x20, #0x8]
    4a9c: 6b08005f     	cmp	w2, w8
    4aa0: 54000d61     	b.ne	0x4c4c <aw22xxx_fw_loaded+0xb64>
    4aa4: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x144a
    4aa8: 91000000     	add	x0, x0, #0x0
		0000000000004aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x144a
    4aac: 1400005f     	b	0x4c28 <aw22xxx_fw_loaded+0xb40>
    4ab0: 2a1f03f7     	mov	w23, wzr
    4ab4: 52801019     	mov	w25, #0x80              // =128
    4ab8: d5384108     	mrs	x8, SP_EL0
    4abc: f9000be8     	str	x8, [sp, #0x10]
    4ac0: 1400000f     	b	0x4afc <aw22xxx_fw_loaded+0xa14>
    4ac4: aa1c03e0     	mov	x0, x28
    4ac8: 94000000     	bl	0x4ac8 <aw22xxx_fw_loaded+0x9e0>
		0000000000004ac8:  R_AARCH64_CALL26	kfree
    4acc: aa1303e0     	mov	x0, x19
    4ad0: 52800221     	mov	w1, #0x11               // =17
    4ad4: 2a1f03e2     	mov	w2, wzr
    4ad8: 97ffee51     	bl	0x41c <aw22xxx_i2c_write>
    4adc: aa1303e0     	mov	x0, x19
    4ae0: 52800601     	mov	w1, #0x30               // =48
    4ae4: 2a1f03e2     	mov	w2, wzr
    4ae8: 97ffee4d     	bl	0x41c <aw22xxx_i2c_write>
    4aec: b9400288     	ldr	w8, [x20]
    4af0: 0b170377     	add	w23, w27, w23
    4af4: 6b0802ff     	cmp	w23, w8
    4af8: 54fff202     	b.hs	0x4938 <aw22xxx_fw_loaded+0x850>
    4afc: 53087ee2     	lsr	w2, w23, #8
    4b00: aa1303e0     	mov	x0, x19
    4b04: 52800441     	mov	w1, #0x22               // =34
    4b08: 97ffee45     	bl	0x41c <aw22xxx_i2c_write>
    4b0c: aa1303e0     	mov	x0, x19
    4b10: 52800421     	mov	w1, #0x21               // =33
    4b14: 2a1703e2     	mov	w2, w23
    4b18: 97ffee41     	bl	0x41c <aw22xxx_i2c_write>
    4b1c: aa1303e0     	mov	x0, x19
    4b20: 52800221     	mov	w1, #0x11               // =17
    4b24: 52800022     	mov	w2, #0x1                // =1
    4b28: 97ffee3d     	bl	0x41c <aw22xxx_i2c_write>
    4b2c: aa1303e0     	mov	x0, x19
    4b30: 52800601     	mov	w1, #0x30               // =48
    4b34: 52800082     	mov	w2, #0x4                // =4
    4b38: 97ffee39     	bl	0x41c <aw22xxx_i2c_write>
    4b3c: b9400288     	ldr	w8, [x20]
    4b40: 4b170108     	sub	w8, w8, w23
    4b44: 7102011f     	cmp	w8, #0x80
    4b48: 1a99311b     	csel	w27, w8, w25, lo
    4b4c: d503201f     	nop
    4b50: 1100077a     	add	w26, w27, #0x1
    4b54: 52819801     	mov	w1, #0xcc0              // =3264
    4b58: aa1a03e0     	mov	x0, x26
    4b5c: 94000000     	bl	0x4b5c <aw22xxx_fw_loaded+0xa74>
		0000000000004b5c:  R_AARCH64_CALL26	__kmalloc_noprof
    4b60: aa0003fc     	mov	x28, x0
    4b64: b400053c     	cbz	x28, 0x4c08 <aw22xxx_fw_loaded+0xb20>
    4b68: d1000741     	sub	x1, x26, #0x1
    4b6c: aa1c03e0     	mov	x0, x28
    4b70: eb1b003f     	cmp	x1, x27
    4b74: 38001418     	strb	w24, [x0], #0x1
    4b78: 54000c23     	b.lo	0x4cfc <aw22xxx_fw_loaded+0xc14>
    4b7c: 2a1703e8     	mov	w8, w23
    4b80: 91004109     	add	x9, x8, #0x10
    4b84: eb0902a9     	subs	x9, x21, x9
    4b88: 9a8933e9     	csel	x9, xzr, x9, lo
    4b8c: eb1b013f     	cmp	x9, x27
    4b90: 54000bc3     	b.lo	0x4d08 <aw22xxx_fw_loaded+0xc20>
    4b94: 8b0802c1     	add	x1, x22, x8
    4b98: aa1b03e2     	mov	x2, x27
    4b9c: 94000000     	bl	0x4b9c <aw22xxx_fw_loaded+0xab4>
		0000000000004b9c:  R_AARCH64_CALL26	memcpy
    4ba0: f9400260     	ldr	x0, [x19]
    4ba4: 11000762     	add	w2, w27, #0x1
    4ba8: aa1c03e1     	mov	x1, x28
    4bac: 2a1f03e3     	mov	w3, wzr
    4bb0: 94000000     	bl	0x4bb0 <aw22xxx_fw_loaded+0xac8>
		0000000000004bb0:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    4bb4: 36fff880     	tbz	w0, #0x1f, 0x4ac4 <aw22xxx_fw_loaded+0x9dc>
    4bb8: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x983
    4bbc: 91000000     	add	x0, x0, #0x0
		0000000000004bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x983
    4bc0: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8b
    4bc4: 91000021     	add	x1, x1, #0x0
		0000000000004bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8b
    4bc8: 94000000     	bl	0x4bc8 <aw22xxx_fw_loaded+0xae0>
		0000000000004bc8:  R_AARCH64_CALL26	_printk
    4bcc: 17ffffbe     	b	0x4ac4 <aw22xxx_fw_loaded+0x9dc>
    4bd0: f9400be9     	ldr	x9, [sp, #0x10]
    4bd4: 1100077a     	add	w26, w27, #0x1
    4bd8: 52819801     	mov	w1, #0xcc0              // =3264
    4bdc: aa1a03e0     	mov	x0, x26
    4be0: f9402928     	ldr	x8, [x9, #0x50]
    4be4: f90007e8     	str	x8, [sp, #0x8]
    4be8: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004be8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xa0
    4bec: 91000108     	add	x8, x8, #0x0
		0000000000004bec:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xa0
    4bf0: f9002928     	str	x8, [x9, #0x50]
    4bf4: 94000000     	bl	0x4bf4 <aw22xxx_fw_loaded+0xb0c>
		0000000000004bf4:  R_AARCH64_CALL26	__kmalloc_noprof
    4bf8: a940a7e8     	ldp	x8, x9, [sp, #0x8]
    4bfc: aa0003fc     	mov	x28, x0
    4c00: f9002928     	str	x8, [x9, #0x50]
    4c04: b5fffb3c     	cbnz	x28, 0x4b68 <aw22xxx_fw_loaded+0xa80>
    4c08: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb45
    4c0c: 91000000     	add	x0, x0, #0x0
		0000000000004c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb45
    4c10: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8b
    4c14: 91000021     	add	x1, x1, #0x0
		0000000000004c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8b
    4c18: 94000000     	bl	0x4c18 <aw22xxx_fw_loaded+0xb30>
		0000000000004c18:  R_AARCH64_CALL26	_printk
    4c1c: 17ffffac     	b	0x4acc <aw22xxx_fw_loaded+0x9e4>
    4c20: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfac
    4c24: 91000000     	add	x0, x0, #0x0
		0000000000004c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfac
    4c28: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a9
    4c2c: 91000021     	add	x1, x1, #0x0
		0000000000004c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a9
    4c30: 94000000     	bl	0x4c30 <aw22xxx_fw_loaded+0xb48>
		0000000000004c30:  R_AARCH64_CALL26	_printk
    4c34: aa1303e0     	mov	x0, x19
    4c38: 52800481     	mov	w1, #0x24               // =36
    4c3c: 2a1f03e2     	mov	w2, wzr
    4c40: 97ffedf7     	bl	0x41c <aw22xxx_i2c_write>
    4c44: 52800048     	mov	w8, #0x2                // =2
    4c48: 1400000d     	b	0x4c7c <aw22xxx_fw_loaded+0xb94>
    4c4c: 90000015     	adrp	x21, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a9
    4c50: 910002b5     	add	x21, x21, #0x0
		0000000000004c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a9
    4c54: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45e
    4c58: 91000000     	add	x0, x0, #0x0
		0000000000004c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45e
    4c5c: aa1503e1     	mov	x1, x21
    4c60: 2a0803e2     	mov	w2, w8
    4c64: 94000000     	bl	0x4c64 <aw22xxx_fw_loaded+0xb7c>
		0000000000004c64:  R_AARCH64_CALL26	_printk
    4c68: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13cc
    4c6c: 91000000     	add	x0, x0, #0x0
		0000000000004c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13cc
    4c70: aa1503e1     	mov	x1, x21
    4c74: 94000000     	bl	0x4c74 <aw22xxx_fw_loaded+0xb8c>
		0000000000004c74:  R_AARCH64_CALL26	_printk
    4c78: 52800068     	mov	w8, #0x3                // =3
    4c7c: aa1403e0     	mov	x0, x20
    4c80: 390bbe68     	strb	w8, [x19, #0x2ef]
    4c84: 94000000     	bl	0x4c84 <aw22xxx_fw_loaded+0xb9c>
		0000000000004c84:  R_AARCH64_CALL26	kfree
    4c88: aa1303e0     	mov	x0, x19
    4c8c: 390bba7f     	strb	wzr, [x19, #0x2ee]
    4c90: 94000025     	bl	0x4d24 <aw22xxx_led_init>
    4c94: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1565
    4c98: 91000000     	add	x0, x0, #0x0
		0000000000004c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1565
    4c9c: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1377
    4ca0: 91000021     	add	x1, x1, #0x0
		0000000000004ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1377
    4ca4: 94000000     	bl	0x4ca4 <aw22xxx_fw_loaded+0xbbc>
		0000000000004ca4:  R_AARCH64_CALL26	_printk
    4ca8: d5384108     	mrs	x8, SP_EL0
    4cac: f9438908     	ldr	x8, [x8, #0x710]
    4cb0: f85f83a9     	ldur	x9, [x29, #-0x8]
    4cb4: eb09011f     	cmp	x8, x9
    4cb8: 54000341     	b.ne	0x4d20 <aw22xxx_fw_loaded+0xc38>
    4cbc: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
    4cc0: a94957f6     	ldp	x22, x21, [sp, #0x90]
    4cc4: a9485ff8     	ldp	x24, x23, [sp, #0x80]
    4cc8: a94767fa     	ldp	x26, x25, [sp, #0x70]
    4ccc: a9466ffc     	ldp	x28, x27, [sp, #0x60]
    4cd0: a9457bfd     	ldp	x29, x30, [sp, #0x50]
    4cd4: 9102c3ff     	add	sp, sp, #0xb0
    4cd8: d50323bf     	autiasp
    4cdc: d65f03c0     	ret
    4ce0: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
    4ce4: f100111f     	cmp	x8, #0x4
    4ce8: 54000160     	b.eq	0x4d14 <aw22xxx_fw_loaded+0xc2c>
    4cec: b9400682     	ldr	w2, [x20, #0x4]
    4cf0: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22
    4cf4: 91000000     	add	x0, x0, #0x0
		0000000000004cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22
    4cf8: 17fffe54     	b	0x4648 <aw22xxx_fw_loaded+0x560>
    4cfc: 52800220     	mov	w0, #0x11               // =17
    4d00: aa1b03e2     	mov	x2, x27
    4d04: 94000000     	bl	0x4d04 <aw22xxx_fw_loaded+0xc1c>
		0000000000004d04:  R_AARCH64_CALL26	__fortify_panic
    4d08: 52800200     	mov	w0, #0x10               // =16
    4d0c: aa1b03e2     	mov	x2, x27
    4d10: 94000000     	bl	0x4d10 <aw22xxx_fw_loaded+0xc28>
		0000000000004d10:  R_AARCH64_CALL26	__fortify_panic
    4d14: d4200020     	brk	#0x1
    4d18: 52800220     	mov	w0, #0x11               // =17
    4d1c: 94000000     	bl	0x4d1c <aw22xxx_fw_loaded+0xc34>
		0000000000004d1c:  R_AARCH64_CALL26	__fortify_panic
    4d20: 94000000     	bl	0x4d20 <aw22xxx_fw_loaded+0xc38>
		0000000000004d20:  R_AARCH64_CALL26	__stack_chk_fail
