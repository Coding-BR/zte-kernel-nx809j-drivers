
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000440c <i2c_w_bits>:
    440c: d503233f     	paciasp
    4410: d10183ff     	sub	sp, sp, #0x60
    4414: a9037bfd     	stp	x29, x30, [sp, #0x30]
    4418: a90457f6     	stp	x22, x21, [sp, #0x40]
    441c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4420: 9100c3fd     	add	x29, sp, #0x30
    4424: d5384108     	mrs	x8, SP_EL0
    4428: 52a00029     	mov	w9, #0x10000            // =65536
    442c: aa0003f4     	mov	x20, x0
    4430: f9438908     	ldr	x8, [x8, #0x710]
    4434: 2a0203f6     	mov	w22, w2
    4438: 2a0103f3     	mov	w19, w1
    443c: 52800042     	mov	w2, #0x2                // =2
    4440: 2a0303f5     	mov	w21, w3
    4444: f81f83a8     	stur	x8, [x29, #-0x8]
    4448: f9419408     	ldr	x8, [x0, #0x328]
    444c: 390013e1     	strb	w1, [sp, #0x4]
    4450: 910023e1     	add	x1, sp, #0x8
    4454: 390003ff     	strb	wzr, [sp]
    4458: 7940050a     	ldrh	w10, [x8, #0x2]
    445c: b800a3e9     	stur	w9, [sp, #0xa]
    4460: 910013e9     	add	x9, sp, #0x4
    4464: f9000be9     	str	x9, [sp, #0x10]
    4468: 910003e9     	mov	x9, sp
    446c: f90013e9     	str	x9, [sp, #0x20]
    4470: 320083e9     	mov	w9, #0x10001            // =65537
    4474: f9400d00     	ldr	x0, [x8, #0x18]
    4478: 79001fff     	strh	wzr, [sp, #0xe]
    447c: 790013ea     	strh	w10, [sp, #0x8]
    4480: 790033ea     	strh	w10, [sp, #0x18]
    4484: b801a3e9     	stur	w9, [sp, #0x1a]
    4488: 79003fff     	strh	wzr, [sp, #0x1e]
    448c: 94000000     	bl	0x448c <i2c_w_bits+0x80>
		000000000000448c:  R_AARCH64_CALL26	i2c_transfer
    4490: 37f80340     	tbnz	w0, #0x1f, 0x44f8 <i2c_w_bits+0xec>
    4494: 7100081f     	cmp	w0, #0x2
    4498: 54000441     	b.ne	0x4520 <i2c_w_bits+0x114>
    449c: 394003e8     	ldrb	w8, [sp]
    44a0: 0a3602a9     	bic	w9, w21, w22
    44a4: 910003e2     	mov	x2, sp
    44a8: aa1403e0     	mov	x0, x20
    44ac: 2a1303e1     	mov	w1, w19
    44b0: 52800023     	mov	w3, #0x1                // =1
    44b4: 0a160108     	and	w8, w8, w22
    44b8: 2a090108     	orr	w8, w8, w9
    44bc: 390003e8     	strb	w8, [sp]
    44c0: 94000000     	bl	0x44c0 <i2c_w_bits+0xb4>
		00000000000044c0:  R_AARCH64_CALL26	i2c_w_bytes
    44c4: 37f80500     	tbnz	w0, #0x1f, 0x4564 <i2c_w_bits+0x158>
    44c8: 2a1f03e0     	mov	w0, wzr
    44cc: d5384108     	mrs	x8, SP_EL0
    44d0: f9438908     	ldr	x8, [x8, #0x710]
    44d4: f85f83a9     	ldur	x9, [x29, #-0x8]
    44d8: eb09011f     	cmp	x8, x9
    44dc: 540005e1     	b.ne	0x4598 <i2c_w_bits+0x18c>
    44e0: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    44e4: a94457f6     	ldp	x22, x21, [sp, #0x40]
    44e8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    44ec: 910183ff     	add	sp, sp, #0x60
    44f0: d50323bf     	autiasp
    44f4: d65f03c0     	ret
    44f8: 2a0003f3     	mov	w19, w0
    44fc: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000044fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x905
    4500: 91000000     	add	x0, x0, #0x0
		0000000000004500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x905
    4504: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4508: 91000021     	add	x1, x1, #0x0
		0000000000004508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    450c: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		000000000000450c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    4510: 91000063     	add	x3, x3, #0x0
		0000000000004510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    4514: 52800ca2     	mov	w2, #0x65               // =101
    4518: 94000000     	bl	0x4518 <i2c_w_bits+0x10c>
		0000000000004518:  R_AARCH64_CALL26	_printk
    451c: 1400000a     	b	0x4544 <i2c_w_bits+0x138>
    4520: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162e
    4524: 91000000     	add	x0, x0, #0x0
		0000000000004524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162e
    4528: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    452c: 91000021     	add	x1, x1, #0x0
		000000000000452c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4530: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    4534: 91000063     	add	x3, x3, #0x0
		0000000000004534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    4538: 52800d02     	mov	w2, #0x68               // =104
    453c: 94000000     	bl	0x453c <i2c_w_bits+0x130>
		000000000000453c:  R_AARCH64_CALL26	_printk
    4540: 128000b3     	mov	w19, #-0x6              // =-6
    4544: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f5c
    4548: 91000000     	add	x0, x0, #0x0
		0000000000004548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f5c
    454c: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		000000000000454c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4550: 91000021     	add	x1, x1, #0x0
		0000000000004550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4554: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28da
    4558: 91000063     	add	x3, x3, #0x0
		0000000000004558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28da
    455c: 528010e2     	mov	w2, #0x87               // =135
    4560: 1400000a     	b	0x4588 <i2c_w_bits+0x17c>
    4564: 90000008     	adrp	x8, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28e5
    4568: 91000108     	add	x8, x8, #0x0
		0000000000004568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28e5
    456c: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		000000000000456c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4570: 91000021     	add	x1, x1, #0x0
		0000000000004570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4574: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28da
    4578: 91000063     	add	x3, x3, #0x0
		0000000000004578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28da
    457c: 2a0003f3     	mov	w19, w0
    4580: aa0803e0     	mov	x0, x8
    4584: 528011c2     	mov	w2, #0x8e               // =142
    4588: 2a1303e4     	mov	w4, w19
    458c: 94000000     	bl	0x458c <i2c_w_bits+0x180>
		000000000000458c:  R_AARCH64_CALL26	_printk
    4590: 2a1303e0     	mov	w0, w19
    4594: 17ffffce     	b	0x44cc <i2c_w_bits+0xc0>
    4598: 94000000     	bl	0x4598 <i2c_w_bits+0x18c>
		0000000000004598:  R_AARCH64_CALL26	__stack_chk_fail
