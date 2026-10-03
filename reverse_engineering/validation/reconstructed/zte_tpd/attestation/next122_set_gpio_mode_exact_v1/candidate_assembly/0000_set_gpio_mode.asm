
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009f64 <set_gpio_mode>:
    9f64: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009f64:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9f68: f9400108     	ldr	x8, [x8]
		0000000000009f68:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9f6c: f947ad09     	ldr	x9, [x8, #0xf58]
    9f70: b4000209     	cbz	x9, 0x9fb0 <set_gpio_mode+0x4c>
    9f74: d503233f     	paciasp
    9f78: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9f7c: 910003fd     	mov	x29, sp
    9f80: 2a0003e1     	mov	w1, w0
    9f84: aa0803e0     	mov	x0, x8
    9f88: b85fc130     	ldur	w16, [x9, #-0x4]
    9f8c: 7287b831     	movk	w17, #0x3dc1
    9f90: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
    9f94: 6b11021f     	cmp	w16, w17
    9f98: 54000040     	b.eq	0x9fa0 <set_gpio_mode+0x3c>
    9f9c: d4304520     	brk	#0x8229
    9fa0: d63f0120     	blr	x9
    9fa4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9fa8: d50323bf     	autiasp
    9fac: d65f03c0     	ret
    9fb0: 12800080     	mov	w0, #-0x5               // =-5
    9fb4: d65f03c0     	ret
