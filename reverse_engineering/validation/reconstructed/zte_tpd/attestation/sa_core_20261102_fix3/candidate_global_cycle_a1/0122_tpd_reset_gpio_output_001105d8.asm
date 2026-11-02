
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000269a4 <tpd_reset_gpio_output>:
   269a4: 90000008     	adrp	x8, 0x26000 <get_tp_noise_show+0xfc>
		00000000000269a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   269a8: f9400108     	ldr	x8, [x8]
		00000000000269a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   269ac: f9475908     	ldr	x8, [x8, #0xeb0]
   269b0: b40001c8     	cbz	x8, 0x269e8 <tpd_reset_gpio_output+0x44>
   269b4: d503233f     	paciasp
   269b8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   269bc: 910003fd     	mov	x29, sp
   269c0: 12000000     	and	w0, w0, #0x1
   269c4: b85fc110     	ldur	w16, [x8, #-0x4]
   269c8: 729d2f31     	movk	w17, #0xe979
   269cc: 72b45f91     	movk	w17, #0xa2fc, lsl #16
   269d0: 6b11021f     	cmp	w16, w17
   269d4: 54000040     	b.eq	0x269dc <tpd_reset_gpio_output+0x38>
   269d8: d4304500     	brk	#0x8228
   269dc: d63f0100     	blr	x8
   269e0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   269e4: d50323bf     	autiasp
   269e8: d65f03c0     	ret
