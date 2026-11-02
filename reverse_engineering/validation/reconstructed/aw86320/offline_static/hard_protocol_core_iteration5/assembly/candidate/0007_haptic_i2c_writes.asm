
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007c4 <haptic_i2c_writes>:
     7c4: d503233f     	paciasp
     7c8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     7cc: a90167fa     	stp	x26, x25, [sp, #0x10]
     7d0: a9025ff8     	stp	x24, x23, [sp, #0x20]
     7d4: a90357f6     	stp	x22, x21, [sp, #0x30]
     7d8: a9044ff4     	stp	x20, x19, [sp, #0x40]
     7dc: 910003fd     	mov	x29, sp
     7e0: 2a0303f5     	mov	w21, w3
     7e4: aa0203f7     	mov	x23, x2
     7e8: 2a0103f3     	mov	w19, w1
     7ec: aa0003f6     	mov	x22, x0
     7f0: d503201f     	nop
     7f4: 110006b8     	add	w24, w21, #0x1
     7f8: 52819801     	mov	w1, #0xcc0              // =3264
     7fc: aa1803e0     	mov	x0, x24
     800: 94000000     	bl	0x800 <haptic_i2c_writes+0x3c>
		0000000000000800:  R_AARCH64_CALL26	__kmalloc_noprof
     804: aa0003f4     	mov	x20, x0
     808: b40005d4     	cbz	x20, 0x8c0 <haptic_i2c_writes+0xfc>
     80c: b40003d8     	cbz	x24, 0x884 <haptic_i2c_writes+0xc0>
     810: f1000708     	subs	x8, x24, #0x1
     814: 2a1503e2     	mov	w2, w21
     818: 39000293     	strb	w19, [x20]
     81c: 9a8833e1     	csel	x1, xzr, x8, lo
     820: eb02003f     	cmp	x1, x2
     824: 54000323     	b.lo	0x888 <haptic_i2c_writes+0xc4>
     828: 91000680     	add	x0, x20, #0x1
     82c: aa1703e1     	mov	x1, x23
     830: 94000000     	bl	0x830 <haptic_i2c_writes+0x6c>
		0000000000000830:  R_AARCH64_CALL26	memcpy
     834: f940f6c0     	ldr	x0, [x22, #0x1e8]
     838: 110006a2     	add	w2, w21, #0x1
     83c: aa1403e1     	mov	x1, x20
     840: 2a1f03e3     	mov	w3, wzr
     844: 94000000     	bl	0x844 <haptic_i2c_writes+0x80>
		0000000000000844:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     848: 2a0003f5     	mov	w21, w0
     84c: 37f80080     	tbnz	w0, #0x1f, 0x85c <haptic_i2c_writes+0x98>
     850: aa1403e0     	mov	x0, x20
     854: 94000000     	bl	0x854 <haptic_i2c_writes+0x90>
		0000000000000854:  R_AARCH64_CALL26	kfree
     858: 1400001b     	b	0x8c4 <haptic_i2c_writes+0x100>
     85c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000085c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x8f7
     860: 91000000     	add	x0, x0, #0x0
		0000000000000860:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x8f7
     864: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
     868: 91000021     	add	x1, x1, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
     86c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000086c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb18
     870: 91000063     	add	x3, x3, #0x0
		0000000000000870:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb18
     874: 12001e64     	and	w4, w19, #0xff
     878: 52800682     	mov	w2, #0x34               // =52
     87c: 94000000     	bl	0x87c <haptic_i2c_writes+0xb8>
		000000000000087c:  R_AARCH64_CALL26	_printk
     880: 17fffff4     	b	0x850 <haptic_i2c_writes+0x8c>
     884: d4200020     	brk	#0x1
     888: 52800220     	mov	w0, #0x11               // =17
     88c: 94000000     	bl	0x88c <haptic_i2c_writes+0xc8>
		000000000000088c:  R_AARCH64_CALL26	__fortify_panic
     890: 110006b8     	add	w24, w21, #0x1
     894: d5384119     	mrs	x25, SP_EL0
     898: f9402b3a     	ldr	x26, [x25, #0x50]
     89c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_codetag_base
     8a0: 91000108     	add	x8, x8, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_codetag_base
     8a4: aa1803e0     	mov	x0, x24
     8a8: 52819801     	mov	w1, #0xcc0              // =3264
     8ac: f9002b28     	str	x8, [x25, #0x50]
     8b0: 94000000     	bl	0x8b0 <haptic_i2c_writes+0xec>
		00000000000008b0:  R_AARCH64_CALL26	__kmalloc_noprof
     8b4: aa0003f4     	mov	x20, x0
     8b8: f9002b3a     	str	x26, [x25, #0x50]
     8bc: b5fffa94     	cbnz	x20, 0x80c <haptic_i2c_writes+0x48>
     8c0: 12800175     	mov	w21, #-0xc              // =-12
     8c4: 2a1503e0     	mov	w0, w21
     8c8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     8cc: a94357f6     	ldp	x22, x21, [sp, #0x30]
     8d0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     8d4: a94167fa     	ldp	x26, x25, [sp, #0x10]
     8d8: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     8dc: d50323bf     	autiasp
     8e0: d65f03c0     	ret
