
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000041f4 <i2c_r_bytes>:
    41f4: d503233f     	paciasp
    41f8: d10143ff     	sub	sp, sp, #0x50
    41fc: a9037bfd     	stp	x29, x30, [sp, #0x30]
    4200: f90023f3     	str	x19, [sp, #0x40]
    4204: 9100c3fd     	add	x29, sp, #0x30
    4208: d5384108     	mrs	x8, SP_EL0
    420c: 52a00029     	mov	w9, #0x10000            // =65536
    4210: f9438908     	ldr	x8, [x8, #0x710]
    4214: f81f83a8     	stur	x8, [x29, #-0x8]
    4218: f9419408     	ldr	x8, [x0, #0x328]
    421c: 390013e1     	strb	w1, [sp, #0x4]
    4220: 910023e1     	add	x1, sp, #0x8
    4224: 7940050a     	ldrh	w10, [x8, #0x2]
    4228: f90013e2     	str	x2, [sp, #0x20]
    422c: 52800042     	mov	w2, #0x2                // =2
    4230: b800a3e9     	stur	w9, [sp, #0xa]
    4234: 910013e9     	add	x9, sp, #0x4
    4238: f9400d00     	ldr	x0, [x8, #0x18]
    423c: f9000be9     	str	x9, [sp, #0x10]
    4240: 52800029     	mov	w9, #0x1                // =1
    4244: 79001fff     	strh	wzr, [sp, #0xe]
    4248: 790037e9     	strh	w9, [sp, #0x1a]
    424c: 790013ea     	strh	w10, [sp, #0x8]
    4250: 790033ea     	strh	w10, [sp, #0x18]
    4254: 79003be3     	strh	w3, [sp, #0x1c]
    4258: 79003fff     	strh	wzr, [sp, #0x1e]
    425c: 94000000     	bl	0x425c <i2c_r_bytes+0x68>
		000000000000425c:  R_AARCH64_CALL26	i2c_transfer
    4260: 37f801a0     	tbnz	w0, #0x1f, 0x4294 <i2c_r_bytes+0xa0>
    4264: 7100081f     	cmp	w0, #0x2
    4268: 540002e1     	b.ne	0x42c4 <i2c_r_bytes+0xd0>
    426c: d5384108     	mrs	x8, SP_EL0
    4270: f9438908     	ldr	x8, [x8, #0x710]
    4274: f85f83a9     	ldur	x9, [x29, #-0x8]
    4278: eb09011f     	cmp	x8, x9
    427c: 54000381     	b.ne	0x42ec <i2c_r_bytes+0xf8>
    4280: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    4284: f94023f3     	ldr	x19, [sp, #0x40]
    4288: 910143ff     	add	sp, sp, #0x50
    428c: d50323bf     	autiasp
    4290: d65f03c0     	ret
    4294: 90000008     	adrp	x8, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x905
    4298: 91000108     	add	x8, x8, #0x0
		0000000000004298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x905
    429c: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		000000000000429c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    42a0: 91000021     	add	x1, x1, #0x0
		00000000000042a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    42a4: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000042a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    42a8: 91000063     	add	x3, x3, #0x0
		00000000000042a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    42ac: 2a0003f3     	mov	w19, w0
    42b0: aa0803e0     	mov	x0, x8
    42b4: 52800ca2     	mov	w2, #0x65               // =101
    42b8: 94000000     	bl	0x42b8 <i2c_r_bytes+0xc4>
		00000000000042b8:  R_AARCH64_CALL26	_printk
    42bc: 2a1303e0     	mov	w0, w19
    42c0: 17ffffeb     	b	0x426c <i2c_r_bytes+0x78>
    42c4: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000042c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162e
    42c8: 91000000     	add	x0, x0, #0x0
		00000000000042c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162e
    42cc: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000042cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    42d0: 91000021     	add	x1, x1, #0x0
		00000000000042d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    42d4: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000042d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    42d8: 91000063     	add	x3, x3, #0x0
		00000000000042d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    42dc: 52800d02     	mov	w2, #0x68               // =104
    42e0: 94000000     	bl	0x42e0 <i2c_r_bytes+0xec>
		00000000000042e0:  R_AARCH64_CALL26	_printk
    42e4: 128000a0     	mov	w0, #-0x6               // =-6
    42e8: 17ffffe1     	b	0x426c <i2c_r_bytes+0x78>
    42ec: 94000000     	bl	0x42ec <i2c_r_bytes+0xf8>
		00000000000042ec:  R_AARCH64_CALL26	__stack_chk_fail
