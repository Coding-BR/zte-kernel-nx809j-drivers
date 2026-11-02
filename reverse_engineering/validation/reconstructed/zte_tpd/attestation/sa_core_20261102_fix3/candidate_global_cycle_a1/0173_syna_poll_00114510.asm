
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000adac <syna_poll>:
    adac: d503233f     	paciasp
    adb0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    adb4: f9000bf3     	str	x19, [sp, #0x10]
    adb8: 910003fd     	mov	x29, sp
    adbc: f9401013     	ldr	x19, [x0, #0x20]
    adc0: b40001c1     	cbz	x1, 0xadf8 <syna_poll+0x4c>
    adc4: aa0103e2     	mov	x2, x1
    adc8: 91112261     	add	x1, x19, #0x448
    adcc: b4000161     	cbz	x1, 0xadf8 <syna_poll+0x4c>
    add0: f9400048     	ldr	x8, [x2]
    add4: b4000128     	cbz	x8, 0xadf8 <syna_poll+0x4c>
    add8: b85fc110     	ldur	w16, [x8, #-0x4]
    addc: 72822471     	movk	w17, #0x1123
    ade0: 72bcb431     	movk	w17, #0xe5a1, lsl #16
    ade4: 6b11021f     	cmp	w16, w17
    ade8: 54000040     	b.eq	0xadf0 <syna_poll+0x44>
    adec: d4304500     	brk	#0x8228
    adf0: d63f0100     	blr	x8
    adf4: d5033bbf     	dmb	ish
    adf8: b9446a68     	ldr	w8, [x19, #0x468]
    adfc: 7100011f     	cmp	w8, #0x0
    ae00: 52800828     	mov	w8, #0x41               // =65
    ae04: 1a8803e0     	csel	w0, wzr, w8, eq
    ae08: f9400bf3     	ldr	x19, [sp, #0x10]
    ae0c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    ae10: d50323bf     	autiasp
    ae14: d65f03c0     	ret
