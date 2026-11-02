
/input/zlog_exception.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007a8 <zlog_poll>:
     7a8: d503233f     	paciasp
     7ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     7b0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     7b4: 910003fd     	mov	x29, sp
     7b8: 39403008     	ldrb	w8, [x0, #0xc]
     7bc: 37000068     	tbnz	w8, #0x0, 0x7c8 <zlog_poll+0x20>
     7c0: 2a1f03f3     	mov	w19, wzr
     7c4: 1400001a     	b	0x82c <zlog_poll+0x84>
     7c8: aa0103e2     	mov	x2, x1
     7cc: b40001a1     	cbz	x1, 0x800 <zlog_poll+0x58>
     7d0: f9400048     	ldr	x8, [x2]
     7d4: b4000168     	cbz	x8, 0x800 <zlog_poll+0x58>
     7d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info+0x98
     7dc: 91000021     	add	x1, x1, #0x0
		00000000000007dc:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info+0x98
     7e0: b85fc110     	ldur	w16, [x8, #-0x4]
     7e4: 72822471     	movk	w17, #0x1123
     7e8: 72bcb431     	movk	w17, #0xe5a1, lsl #16
     7ec: 6b11021f     	cmp	w16, w17
     7f0: 54000040     	b.eq	0x7f8 <zlog_poll+0x50>
     7f4: d4304500     	brk	#0x8228
     7f8: d63f0100     	blr	x8
     7fc: d5033bbf     	dmb	ish
     800: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_info
     804: 91000294     	add	x20, x20, #0x0
		0000000000000804:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_info
     808: aa1403e0     	mov	x0, x20
     80c: 94000000     	bl	0x80c <zlog_poll+0x64>
		000000000000080c:  R_AARCH64_CALL26	mutex_lock
     810: aa1403e8     	mov	x8, x20
     814: aa1403e0     	mov	x0, x20
     818: f8430d09     	ldr	x9, [x8, #0x30]!
     81c: eb08013f     	cmp	x9, x8
     820: 52800828     	mov	w8, #0x41               // =65
     824: 1a8803f3     	csel	w19, wzr, w8, eq
     828: 94000000     	bl	0x828 <zlog_poll+0x80>
		0000000000000828:  R_AARCH64_CALL26	mutex_unlock
     82c: 2a1303e0     	mov	w0, w19
     830: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     834: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     838: d50323bf     	autiasp
     83c: d65f03c0     	ret
