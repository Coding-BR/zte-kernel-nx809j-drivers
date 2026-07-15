
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009cf8 <set_gpio_mode>:
    9cf8: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009cf8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9cfc: f9400108     	ldr	x8, [x8]
		0000000000009cfc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9d00: f947ad09     	ldr	x9, [x8, #0xf58]
    9d04: b4000209     	cbz	x9, 0x9d44 <set_gpio_mode+0x4c>
    9d08: d503233f     	paciasp
    9d0c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9d10: 910003fd     	mov	x29, sp
    9d14: 2a0003e1     	mov	w1, w0
    9d18: aa0803e0     	mov	x0, x8
    9d1c: b85fc130     	ldur	w16, [x9, #-0x4]
    9d20: 7287b831     	movk	w17, #0x3dc1
    9d24: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
    9d28: 6b11021f     	cmp	w16, w17
    9d2c: 54000040     	b.eq	0x9d34 <set_gpio_mode+0x3c>
    9d30: d4304520     	brk	#0x8229
    9d34: d63f0120     	blr	x9
    9d38: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9d3c: d50323bf     	autiasp
    9d40: d65f03c0     	ret
    9d44: 12800080     	mov	w0, #-0x5               // =-5
    9d48: d65f03c0     	ret
