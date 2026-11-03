
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000042f4 <i2c_w_bytes>:
    42f4: d503233f     	paciasp
    42f8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    42fc: a90167fa     	stp	x26, x25, [sp, #0x10]
    4300: a9025ff8     	stp	x24, x23, [sp, #0x20]
    4304: a90357f6     	stp	x22, x21, [sp, #0x30]
    4308: a9044ff4     	stp	x20, x19, [sp, #0x40]
    430c: 910003fd     	mov	x29, sp
    4310: 2a0303f5     	mov	w21, w3
    4314: aa0203f7     	mov	x23, x2
    4318: 2a0103f3     	mov	w19, w1
    431c: aa0003f6     	mov	x22, x0
    4320: d503201f     	nop
    4324: 110006b8     	add	w24, w21, #0x1
    4328: 52819801     	mov	w1, #0xcc0              // =3264
    432c: aa1803e0     	mov	x0, x24
    4330: 94000000     	bl	0x4330 <i2c_w_bytes+0x3c>
		0000000000004330:  R_AARCH64_CALL26	__kmalloc_noprof
    4334: aa0003f4     	mov	x20, x0
    4338: b4000678     	cbz	x24, 0x4404 <i2c_w_bytes+0x110>
    433c: f1000708     	subs	x8, x24, #0x1
    4340: 2a1503e2     	mov	w2, w21
    4344: 39000293     	strb	w19, [x20]
    4348: 9a8833e1     	csel	x1, xzr, x8, lo
    434c: eb02003f     	cmp	x1, x2
    4350: 540003e3     	b.lo	0x43cc <i2c_w_bytes+0xd8>
    4354: 91000680     	add	x0, x20, #0x1
    4358: aa1703e1     	mov	x1, x23
    435c: 94000000     	bl	0x435c <i2c_w_bytes+0x68>
		000000000000435c:  R_AARCH64_CALL26	memcpy
    4360: f94196c0     	ldr	x0, [x22, #0x328]
    4364: 110006a2     	add	w2, w21, #0x1
    4368: aa1403e1     	mov	x1, x20
    436c: 2a1f03e3     	mov	w3, wzr
    4370: 94000000     	bl	0x4370 <i2c_w_bytes+0x7c>
		0000000000004370:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    4374: 2a0003f5     	mov	w21, w0
    4378: 37f80160     	tbnz	w0, #0x1f, 0x43a4 <i2c_w_bytes+0xb0>
    437c: aa1403e0     	mov	x0, x20
    4380: 94000000     	bl	0x4380 <i2c_w_bytes+0x8c>
		0000000000004380:  R_AARCH64_CALL26	kfree
    4384: 2a1503e0     	mov	w0, w21
    4388: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    438c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    4390: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    4394: a94167fa     	ldp	x26, x25, [sp, #0x10]
    4398: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    439c: d50323bf     	autiasp
    43a0: d65f03c0     	ret
    43a4: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000043a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165c
    43a8: 91000000     	add	x0, x0, #0x0
		00000000000043a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165c
    43ac: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000043ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    43b0: 91000021     	add	x1, x1, #0x0
		00000000000043b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    43b4: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000043b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a1c
    43b8: 91000063     	add	x3, x3, #0x0
		00000000000043b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a1c
    43bc: 12001e64     	and	w4, w19, #0xff
    43c0: 52800f42     	mov	w2, #0x7a               // =122
    43c4: 94000000     	bl	0x43c4 <i2c_w_bytes+0xd0>
		00000000000043c4:  R_AARCH64_CALL26	_printk
    43c8: 17ffffed     	b	0x437c <i2c_w_bytes+0x88>
    43cc: 52800220     	mov	w0, #0x11               // =17
    43d0: 94000000     	bl	0x43d0 <i2c_w_bytes+0xdc>
		00000000000043d0:  R_AARCH64_CALL26	__fortify_panic
    43d4: 110006b8     	add	w24, w21, #0x1
    43d8: d5384119     	mrs	x25, SP_EL0
    43dc: f9402b3a     	ldr	x26, [x25, #0x50]
    43e0: 90000008     	adrp	x8, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000043e0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
    43e4: 91000108     	add	x8, x8, #0x0
		00000000000043e4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
    43e8: aa1803e0     	mov	x0, x24
    43ec: 52819801     	mov	w1, #0xcc0              // =3264
    43f0: f9002b28     	str	x8, [x25, #0x50]
    43f4: 94000000     	bl	0x43f4 <i2c_w_bytes+0x100>
		00000000000043f4:  R_AARCH64_CALL26	__kmalloc_noprof
    43f8: aa0003f4     	mov	x20, x0
    43fc: f9002b3a     	str	x26, [x25, #0x50]
    4400: b5fff9f8     	cbnz	x24, 0x433c <i2c_w_bytes+0x48>
    4404: d4200020     	brk	#0x1
