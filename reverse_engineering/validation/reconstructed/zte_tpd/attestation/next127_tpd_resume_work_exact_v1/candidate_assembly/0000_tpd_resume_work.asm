
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021f74 <tpd_resume_work>:
   21f74: d503233f     	paciasp
   21f78: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   21f7c: f9000bf3     	str	x19, [sp, #0x10]
   21f80: 910003fd     	mov	x29, sp
   21f84: 90000008     	adrp	x8, 0x21000 <tp_zlog_debug_write+0x10>
		0000000000021f84:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   21f88: f9400113     	ldr	x19, [x8]
		0000000000021f88:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21f8c: f9470668     	ldr	x8, [x19, #0xe08]
   21f90: b4000148     	cbz	x8, 0x21fb8 <tpd_resume_work+0x44>
   21f94: f946ee60     	ldr	x0, [x19, #0xdd8]
   21f98: b85fc110     	ldur	w16, [x8, #-0x4]
   21f9c: 729c8c91     	movk	w17, #0xe464
   21fa0: 72b80d31     	movk	w17, #0xc069, lsl #16
   21fa4: 6b11021f     	cmp	w16, w17
   21fa8: 54000040     	b.eq	0x21fb0 <tpd_resume_work+0x3c>
   21fac: d4304500     	brk	#0x8228
   21fb0: d63f0100     	blr	x8
   21fb4: b904aa7f     	str	wzr, [x19, #0x4a8]
   21fb8: f9400bf3     	ldr	x19, [sp, #0x10]
   21fbc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   21fc0: d50323bf     	autiasp
   21fc4: d65f03c0     	ret
