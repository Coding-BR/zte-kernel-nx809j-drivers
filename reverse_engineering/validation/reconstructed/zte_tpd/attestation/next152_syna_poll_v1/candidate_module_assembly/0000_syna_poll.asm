
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b354 <syna_poll>:
    b354: d503233f     	paciasp
    b358: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b35c: f9000bf3     	str	x19, [sp, #0x10]
    b360: 910003fd     	mov	x29, sp
    b364: f9401013     	ldr	x19, [x0, #0x20]
    b368: b40001c1     	cbz	x1, 0xb3a0 <syna_poll+0x4c>
    b36c: aa0103e2     	mov	x2, x1
    b370: 91112261     	add	x1, x19, #0x448
    b374: b4000161     	cbz	x1, 0xb3a0 <syna_poll+0x4c>
    b378: f9400048     	ldr	x8, [x2]
    b37c: b4000128     	cbz	x8, 0xb3a0 <syna_poll+0x4c>
    b380: b85fc110     	ldur	w16, [x8, #-0x4]
    b384: 72822471     	movk	w17, #0x1123
    b388: 72bcb431     	movk	w17, #0xe5a1, lsl #16
    b38c: 6b11021f     	cmp	w16, w17
    b390: 54000040     	b.eq	0xb398 <syna_poll+0x44>
    b394: d4304500     	brk	#0x8228
    b398: d63f0100     	blr	x8
    b39c: d5033bbf     	dmb	ish
    b3a0: b9446a68     	ldr	w8, [x19, #0x468]
    b3a4: 7100011f     	cmp	w8, #0x0
    b3a8: 52800828     	mov	w8, #0x41               // =65
    b3ac: 1a8803e0     	csel	w0, wzr, w8, eq
    b3b0: f9400bf3     	ldr	x19, [sp, #0x10]
    b3b4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b3b8: d50323bf     	autiasp
    b3bc: d65f03c0     	ret
