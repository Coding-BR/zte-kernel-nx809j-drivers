
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000dc88 <syna_poll>:
    dc88: d503233f     	paciasp
    dc8c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    dc90: f9000bf3     	str	x19, [sp, #0x10]
    dc94: 910003fd     	mov	x29, sp
    dc98: f9401013     	ldr	x19, [x0, #0x20]
    dc9c: b40001c1     	cbz	x1, 0xdcd4 <syna_poll+0x4c>
    dca0: aa0103e2     	mov	x2, x1
    dca4: 91112261     	add	x1, x19, #0x448
    dca8: b4000161     	cbz	x1, 0xdcd4 <syna_poll+0x4c>
    dcac: f9400048     	ldr	x8, [x2]
    dcb0: b4000128     	cbz	x8, 0xdcd4 <syna_poll+0x4c>
    dcb4: b85fc110     	ldur	w16, [x8, #-0x4]
    dcb8: 72822471     	movk	w17, #0x1123
    dcbc: 72bcb431     	movk	w17, #0xe5a1, lsl #16
    dcc0: 6b11021f     	cmp	w16, w17
    dcc4: 54000040     	b.eq	0xdccc <syna_poll+0x44>
    dcc8: d4304500     	brk	#0x8228
    dccc: d63f0100     	blr	x8
    dcd0: d5033bbf     	dmb	ish
    dcd4: b9446a68     	ldr	w8, [x19, #0x468]
    dcd8: 7100011f     	cmp	w8, #0x0
    dcdc: 52800828     	mov	w8, #0x41               // =65
    dce0: 1a8803e0     	csel	w0, wzr, w8, eq
    dce4: f9400bf3     	ldr	x19, [sp, #0x10]
    dce8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    dcec: d50323bf     	autiasp
    dcf0: d65f03c0     	ret
