
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b294 <syna_poll>:
    b294: d503233f     	paciasp
    b298: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b29c: f9000bf3     	str	x19, [sp, #0x10]
    b2a0: 910003fd     	mov	x29, sp
    b2a4: f9401013     	ldr	x19, [x0, #0x20]
    b2a8: b40001c1     	cbz	x1, 0xb2e0 <syna_poll+0x4c>
    b2ac: aa0103e2     	mov	x2, x1
    b2b0: 91112261     	add	x1, x19, #0x448
    b2b4: b4000161     	cbz	x1, 0xb2e0 <syna_poll+0x4c>
    b2b8: f9400048     	ldr	x8, [x2]
    b2bc: b4000128     	cbz	x8, 0xb2e0 <syna_poll+0x4c>
    b2c0: b85fc110     	ldur	w16, [x8, #-0x4]
    b2c4: 72822471     	movk	w17, #0x1123
    b2c8: 72bcb431     	movk	w17, #0xe5a1, lsl #16
    b2cc: 6b11021f     	cmp	w16, w17
    b2d0: 54000040     	b.eq	0xb2d8 <syna_poll+0x44>
    b2d4: d4304500     	brk	#0x8228
    b2d8: d63f0100     	blr	x8
    b2dc: d5033bbf     	dmb	ish
    b2e0: b9446a68     	ldr	w8, [x19, #0x468]
    b2e4: 7100011f     	cmp	w8, #0x0
    b2e8: 52800828     	mov	w8, #0x41               // =65
    b2ec: 1a8803e0     	csel	w0, wzr, w8, eq
    b2f0: f9400bf3     	ldr	x19, [sp, #0x10]
    b2f4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b2f8: d50323bf     	autiasp
    b2fc: d65f03c0     	ret
