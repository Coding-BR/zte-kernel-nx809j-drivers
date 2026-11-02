
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000269f0 <tpd_resume_work>:
   269f0: d503233f     	paciasp
   269f4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   269f8: f9000bf3     	str	x19, [sp, #0x10]
   269fc: 910003fd     	mov	x29, sp
   26a00: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		0000000000026a00:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   26a04: f9400113     	ldr	x19, [x8]
		0000000000026a04:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26a08: f9470668     	ldr	x8, [x19, #0xe08]
   26a0c: b4000148     	cbz	x8, 0x26a34 <tpd_resume_work+0x44>
   26a10: f946ee60     	ldr	x0, [x19, #0xdd8]
   26a14: b85fc110     	ldur	w16, [x8, #-0x4]
   26a18: 729c8c91     	movk	w17, #0xe464
   26a1c: 72b80d31     	movk	w17, #0xc069, lsl #16
   26a20: 6b11021f     	cmp	w16, w17
   26a24: 54000040     	b.eq	0x26a2c <tpd_resume_work+0x3c>
   26a28: d4304500     	brk	#0x8228
   26a2c: d63f0100     	blr	x8
   26a30: b904aa7f     	str	wzr, [x19, #0x4a8]
   26a34: f9400bf3     	ldr	x19, [sp, #0x10]
   26a38: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26a3c: d50323bf     	autiasp
   26a40: d65f03c0     	ret
