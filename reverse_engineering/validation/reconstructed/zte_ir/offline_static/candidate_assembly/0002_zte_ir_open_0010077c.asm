
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000364 <zte_ir_open>:
     364: d503233f     	paciasp
     368: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     36c: f9000bf5     	str	x21, [sp, #0x10]
     370: a9024ff4     	stp	x20, x19, [sp, #0x20]
     374: 910003fd     	mov	x29, sp
     378: aa0003f4     	mov	x20, x0
     37c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000037c:  R_AARCH64_ADR_PREL_PG_HI21	.data
     380: 91000000     	add	x0, x0, #0x0
		0000000000000380:  R_AARCH64_ADD_ABS_LO12_NC	.data
     384: aa0103f3     	mov	x19, x1
     388: 94000000     	bl	0x388 <zte_ir_open+0x24>
		0000000000000388:  R_AARCH64_CALL26	mutex_lock
     38c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000038c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     390: 91000108     	add	x8, x8, #0x0
		0000000000000390:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     394: 92871aea     	mov	x10, #-0x38d8           // =-14552
     398: f2bfffca     	movk	x10, #0xfffe, lsl #16
     39c: aa0803f5     	mov	x21, x8
     3a0: f94002b5     	ldr	x21, [x21]
     3a4: eb0802bf     	cmp	x21, x8
     3a8: 54000120     	b.eq	0x3cc <zte_ir_open+0x68>
     3ac: 8b0a02a9     	add	x9, x21, x10
     3b0: b9404e8c     	ldr	w12, [x20, #0x4c]
     3b4: b940012b     	ldr	w11, [x9]
     3b8: 6b0c017f     	cmp	w11, w12
     3bc: 54ffff21     	b.ne	0x3a0 <zte_ir_open+0x3c>
     3c0: b4000069     	cbz	x9, 0x3cc <zte_ir_open+0x68>
     3c4: 394052a8     	ldrb	w8, [x21, #0x14]
     3c8: 36000168     	tbz	w8, #0x0, 0x3f4 <zte_ir_open+0x90>
     3cc: 128000b4     	mov	w20, #-0x6              // =-6
     3d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003d0:  R_AARCH64_ADR_PREL_PG_HI21	.data
     3d4: 91000000     	add	x0, x0, #0x0
		00000000000003d4:  R_AARCH64_ADD_ABS_LO12_NC	.data
     3d8: 94000000     	bl	0x3d8 <zte_ir_open+0x74>
		00000000000003d8:  R_AARCH64_CALL26	mutex_unlock
     3dc: 2a1403e0     	mov	w0, w20
     3e0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     3e4: f9400bf5     	ldr	x21, [sp, #0x10]
     3e8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     3ec: d50323bf     	autiasp
     3f0: d65f03c0     	ret
     3f4: b94012a8     	ldr	w8, [x21, #0x10]
     3f8: aa1403e0     	mov	x0, x20
     3fc: aa1303e1     	mov	x1, x19
     400: 11000508     	add	w8, w8, #0x1
     404: b90012a8     	str	w8, [x21, #0x10]
     408: f9001269     	str	x9, [x19, #0x20]
     40c: 94000000     	bl	0x40c <zte_ir_open+0xa8>
		000000000000040c:  R_AARCH64_CALL26	nonseekable_open
     410: 2a0003f4     	mov	w20, w0
     414: 34fffde0     	cbz	w0, 0x3d0 <zte_ir_open+0x6c>
     418: b94012a8     	ldr	w8, [x21, #0x10]
     41c: 51000508     	sub	w8, w8, #0x1
     420: b90012a8     	str	w8, [x21, #0x10]
     424: f900127f     	str	xzr, [x19, #0x20]
     428: 17ffffea     	b	0x3d0 <zte_ir_open+0x6c>
