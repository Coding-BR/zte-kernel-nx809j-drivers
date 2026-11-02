
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002694c <set_gpio_mode>:
   2694c: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		000000000002694c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   26950: f9400108     	ldr	x8, [x8]
		0000000000026950:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26954: f947ad09     	ldr	x9, [x8, #0xf58]
   26958: b4000209     	cbz	x9, 0x26998 <set_gpio_mode+0x4c>
   2695c: d503233f     	paciasp
   26960: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26964: 910003fd     	mov	x29, sp
   26968: 2a0003e1     	mov	w1, w0
   2696c: aa0803e0     	mov	x0, x8
   26970: b85fc130     	ldur	w16, [x9, #-0x4]
   26974: 7287b831     	movk	w17, #0x3dc1
   26978: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
   2697c: 6b11021f     	cmp	w16, w17
   26980: 54000040     	b.eq	0x26988 <set_gpio_mode+0x3c>
   26984: d4304520     	brk	#0x8229
   26988: d63f0120     	blr	x9
   2698c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26990: d50323bf     	autiasp
   26994: d65f03c0     	ret
   26998: 12800080     	mov	w0, #-0x5               // =-5
   2699c: d65f03c0     	ret
