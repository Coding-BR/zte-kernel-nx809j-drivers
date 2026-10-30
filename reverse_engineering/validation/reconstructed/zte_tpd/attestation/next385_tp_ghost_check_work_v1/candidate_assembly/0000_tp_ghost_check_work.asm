
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e100 <tp_ghost_check_work>:
   1e100: d503233f     	paciasp
   1e104: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1e108: f9000bf3     	str	x19, [sp, #0x10]
   1e10c: 910003fd     	mov	x29, sp
   1e110: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x424>
		000000000001e110:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e114: f9400113     	ldr	x19, [x8]
		000000000001e114:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e118: 94000000     	bl	0x1e118 <tp_ghost_check_work+0x18>
		000000000001e118:  R_AARCH64_CALL26	tp_ghost_check
   1e11c: 370000e0     	tbnz	w0, #0x0, 0x1e138 <tp_ghost_check_work+0x38>
   1e120: 94000000     	bl	0x1e120 <tp_ghost_check_work+0x20>
		000000000001e120:  R_AARCH64_CALL26	ghost_check_reset
   1e124: 3912227f     	strb	wzr, [x19, #0x488]
   1e128: f9400bf3     	ldr	x19, [sp, #0x10]
   1e12c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1e130: d50323bf     	autiasp
   1e134: d65f03c0     	ret
   1e138: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x424>
		000000000001e138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6258
   1e13c: 91000000     	add	x0, x0, #0x0
		000000000001e13c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6258
   1e140: 94000000     	bl	0x1e140 <tp_ghost_check_work+0x40>
		000000000001e140:  R_AARCH64_CALL26	_printk
   1e144: b944aa68     	ldr	w8, [x19, #0x4a8]
   1e148: 7100091f     	cmp	w8, #0x2
   1e14c: 540002ac     	b.gt	0x1e1a0 <tp_ghost_check_work+0xa0>
   1e150: f947fa69     	ldr	x9, [x19, #0xff0]
   1e154: b5000089     	cbnz	x9, 0x1e164 <tp_ghost_check_work+0x64>
   1e158: 11000508     	add	w8, w8, #0x1
   1e15c: b904aa68     	str	w8, [x19, #0x4a8]
   1e160: 17fffff0     	b	0x1e120 <tp_ghost_check_work+0x20>
   1e164: aa1303e0     	mov	x0, x19
   1e168: b85fc130     	ldur	w16, [x9, #-0x4]
   1e16c: 7281af31     	movk	w17, #0xd79
   1e170: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1e174: 6b11021f     	cmp	w16, w17
   1e178: 54000040     	b.eq	0x1e180 <tp_ghost_check_work+0x80>
   1e17c: d4304520     	brk	#0x8229
   1e180: d63f0120     	blr	x9
   1e184: b944aa68     	ldr	w8, [x19, #0x4a8]
   1e188: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x424>
		000000000001e188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4474
   1e18c: 91000000     	add	x0, x0, #0x0
		000000000001e18c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4474
   1e190: 11000501     	add	w1, w8, #0x1
   1e194: 94000000     	bl	0x1e194 <tp_ghost_check_work+0x94>
		000000000001e194:  R_AARCH64_CALL26	_printk
   1e198: b944aa68     	ldr	w8, [x19, #0x4a8]
   1e19c: 17ffffef     	b	0x1e158 <tp_ghost_check_work+0x58>
   1e1a0: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x424>
		000000000001e1a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3437
   1e1a4: 91000000     	add	x0, x0, #0x0
		000000000001e1a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3437
   1e1a8: 94000000     	bl	0x1e1a8 <tp_ghost_check_work+0xa8>
		000000000001e1a8:  R_AARCH64_CALL26	_printk
   1e1ac: 17ffffdd     	b	0x1e120 <tp_ghost_check_work+0x20>
