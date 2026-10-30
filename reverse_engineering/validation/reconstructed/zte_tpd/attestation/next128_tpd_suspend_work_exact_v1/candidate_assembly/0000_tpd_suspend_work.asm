
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000022c84 <tpd_suspend_work>:
   22c84: 90000008     	adrp	x8, 0x22000 <tpd_resume_work+0x8c>
		0000000000022c84:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   22c88: f9400109     	ldr	x9, [x8]
		0000000000022c88:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   22c8c: f9470928     	ldr	x8, [x9, #0xe10]
   22c90: b40001c8     	cbz	x8, 0x22cc8 <tpd_suspend_work+0x44>
   22c94: d503233f     	paciasp
   22c98: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   22c9c: 910003fd     	mov	x29, sp
   22ca0: f946ed20     	ldr	x0, [x9, #0xdd8]
   22ca4: b85fc110     	ldur	w16, [x8, #-0x4]
   22ca8: 729c8c91     	movk	w17, #0xe464
   22cac: 72b80d31     	movk	w17, #0xc069, lsl #16
   22cb0: 6b11021f     	cmp	w16, w17
   22cb4: 54000040     	b.eq	0x22cbc <tpd_suspend_work+0x38>
   22cb8: d4304500     	brk	#0x8228
   22cbc: d63f0100     	blr	x8
   22cc0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   22cc4: d50323bf     	autiasp
   22cc8: d65f03c0     	ret
