
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000268f8 <tp_esd_check>:
   268f8: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		00000000000268f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   268fc: f9400100     	ldr	x0, [x8]
		00000000000268fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26900: f9474c08     	ldr	x8, [x0, #0xe98]
   26904: b40001e8     	cbz	x8, 0x26940 <tp_esd_check+0x48>
   26908: d503233f     	paciasp
   2690c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26910: 910003fd     	mov	x29, sp
   26914: b85fc110     	ldur	w16, [x8, #-0x4]
   26918: 72874531     	movk	w17, #0x3a29
   2691c: 72b01031     	movk	w17, #0x8081, lsl #16
   26920: 6b11021f     	cmp	w16, w17
   26924: 54000040     	b.eq	0x2692c <tp_esd_check+0x34>
   26928: d4304500     	brk	#0x8228
   2692c: d63f0100     	blr	x8
   26930: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26934: d50323bf     	autiasp
   26938: 12000000     	and	w0, w0, #0x1
   2693c: d65f03c0     	ret
   26940: 120003e0     	and	w0, wzr, #0x1
   26944: d65f03c0     	ret
