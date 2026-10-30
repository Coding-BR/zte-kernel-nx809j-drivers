
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000086c <i2c_w_bytes>:
     86c: d503233f     	paciasp
     870: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     874: a90167fa     	stp	x26, x25, [sp, #0x10]
     878: a9025ff8     	stp	x24, x23, [sp, #0x20]
     87c: a90357f6     	stp	x22, x21, [sp, #0x30]
     880: a9044ff4     	stp	x20, x19, [sp, #0x40]
     884: 910003fd     	mov	x29, sp
     888: 2a0303f5     	mov	w21, w3
     88c: aa0203f7     	mov	x23, x2
     890: 2a0103f3     	mov	w19, w1
     894: aa0003f6     	mov	x22, x0
     898: d503201f     	nop
     89c: 110006b8     	add	w24, w21, #0x1
     8a0: 52819801     	mov	w1, #0xcc0              // =3264
     8a4: aa1803e0     	mov	x0, x24
     8a8: 94000000     	bl	0x8a8 <i2c_w_bytes+0x3c>
		00000000000008a8:  R_AARCH64_CALL26	__kmalloc_noprof
     8ac: aa0003f4     	mov	x20, x0
     8b0: b4000678     	cbz	x24, 0x97c <i2c_w_bytes+0x110>
     8b4: f1000708     	subs	x8, x24, #0x1
     8b8: 2a1503e2     	mov	w2, w21
     8bc: 39000293     	strb	w19, [x20]
     8c0: 9a8833e1     	csel	x1, xzr, x8, lo
     8c4: eb02003f     	cmp	x1, x2
     8c8: 540003e3     	b.lo	0x944 <i2c_w_bytes+0xd8>
     8cc: 91000680     	add	x0, x20, #0x1
     8d0: aa1703e1     	mov	x1, x23
     8d4: 94000000     	bl	0x8d4 <i2c_w_bytes+0x68>
		00000000000008d4:  R_AARCH64_CALL26	memcpy
     8d8: f94196c0     	ldr	x0, [x22, #0x328]
     8dc: 110006a2     	add	w2, w21, #0x1
     8e0: aa1403e1     	mov	x1, x20
     8e4: 2a1f03e3     	mov	w3, wzr
     8e8: 94000000     	bl	0x8e8 <i2c_w_bytes+0x7c>
		00000000000008e8:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     8ec: 2a0003f5     	mov	w21, w0
     8f0: 37f80160     	tbnz	w0, #0x1f, 0x91c <i2c_w_bytes+0xb0>
     8f4: aa1403e0     	mov	x0, x20
     8f8: 94000000     	bl	0x8f8 <i2c_w_bytes+0x8c>
		00000000000008f8:  R_AARCH64_CALL26	kfree
     8fc: 2a1503e0     	mov	w0, w21
     900: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     904: a94357f6     	ldp	x22, x21, [sp, #0x30]
     908: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     90c: a94167fa     	ldp	x26, x25, [sp, #0x10]
     910: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     914: d50323bf     	autiasp
     918: d65f03c0     	ret
     91c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000091c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c
     920: 91000000     	add	x0, x0, #0x0
		0000000000000920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c
     924: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
     928: 91000021     	add	x1, x1, #0x0
		0000000000000928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
     92c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000092c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e1
     930: 91000063     	add	x3, x3, #0x0
		0000000000000930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e1
     934: 12001e64     	and	w4, w19, #0xff
     938: 52800f42     	mov	w2, #0x7a               // =122
     93c: 94000000     	bl	0x93c <i2c_w_bytes+0xd0>
		000000000000093c:  R_AARCH64_CALL26	_printk
     940: 17ffffed     	b	0x8f4 <i2c_w_bytes+0x88>
     944: 52800220     	mov	w0, #0x11               // =17
     948: 94000000     	bl	0x948 <i2c_w_bytes+0xdc>
		0000000000000948:  R_AARCH64_CALL26	__fortify_panic
     94c: 110006b8     	add	w24, w21, #0x1
     950: d5384119     	mrs	x25, SP_EL0
     954: f9402b3a     	ldr	x26, [x25, #0x50]
     958: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000958:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     95c: 91000108     	add	x8, x8, #0x0
		000000000000095c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     960: aa1803e0     	mov	x0, x24
     964: 52819801     	mov	w1, #0xcc0              // =3264
     968: f9002b28     	str	x8, [x25, #0x50]
     96c: 94000000     	bl	0x96c <i2c_w_bytes+0x100>
		000000000000096c:  R_AARCH64_CALL26	__kmalloc_noprof
     970: aa0003f4     	mov	x20, x0
     974: f9002b3a     	str	x26, [x25, #0x50]
     978: b5fff9f8     	cbnz	x24, 0x8b4 <i2c_w_bytes+0x48>
     97c: d4200020     	brk	#0x1
