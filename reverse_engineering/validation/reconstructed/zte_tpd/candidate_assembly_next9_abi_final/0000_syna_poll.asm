
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b620 <syna_poll>:
    b620: d503233f     	paciasp
    b624: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b628: f9000bf3     	str	x19, [sp, #0x10]
    b62c: 910003fd     	mov	x29, sp
    b630: f9401013     	ldr	x19, [x0, #0x20]
    b634: b40001c1     	cbz	x1, 0xb66c <syna_poll+0x4c>
    b638: aa0103e2     	mov	x2, x1
    b63c: 91112261     	add	x1, x19, #0x448
    b640: b4000161     	cbz	x1, 0xb66c <syna_poll+0x4c>
    b644: f9400048     	ldr	x8, [x2]
    b648: b4000128     	cbz	x8, 0xb66c <syna_poll+0x4c>
    b64c: b85fc110     	ldur	w16, [x8, #-0x4]
    b650: 72822471     	movk	w17, #0x1123
    b654: 72bcb431     	movk	w17, #0xe5a1, lsl #16
    b658: 6b11021f     	cmp	w16, w17
    b65c: 54000040     	b.eq	0xb664 <syna_poll+0x44>
    b660: d4304500     	brk	#0x8228
    b664: d63f0100     	blr	x8
    b668: d5033bbf     	dmb	ish
    b66c: b9446a68     	ldr	w8, [x19, #0x468]
    b670: 7100011f     	cmp	w8, #0x0
    b674: 52800828     	mov	w8, #0x41               // =65
    b678: 1a8803e0     	csel	w0, wzr, w8, eq
    b67c: f9400bf3     	ldr	x19, [sp, #0x10]
    b680: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b684: d50323bf     	autiasp
    b688: d65f03c0     	ret
