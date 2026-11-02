
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026a48 <tpd_suspend_work>:
   26a48: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026a48:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   26a4c: f9400109     	ldr	x9, [x8]
		0000000000026a4c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26a50: f9470928     	ldr	x8, [x9, #0xe10]
   26a54: b40001c8     	cbz	x8, 0x26a8c <tpd_suspend_work+0x44>
   26a58: d503233f     	paciasp
   26a5c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26a60: 910003fd     	mov	x29, sp
   26a64: f946ed20     	ldr	x0, [x9, #0xdd8]
   26a68: b85fc110     	ldur	w16, [x8, #-0x4]
   26a6c: 729c8c91     	movk	w17, #0xe464
   26a70: 72b80d31     	movk	w17, #0xc069, lsl #16
   26a74: 6b11021f     	cmp	w16, w17
   26a78: 54000040     	b.eq	0x26a80 <tpd_suspend_work+0x38>
   26a7c: d4304500     	brk	#0x8228
   26a80: d63f0100     	blr	x8
   26a84: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26a88: d50323bf     	autiasp
   26a8c: d65f03c0     	ret
