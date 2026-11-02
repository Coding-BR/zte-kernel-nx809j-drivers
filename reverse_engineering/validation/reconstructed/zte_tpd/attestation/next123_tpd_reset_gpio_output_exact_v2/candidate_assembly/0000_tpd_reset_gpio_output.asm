
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011f70 <tpd_reset_gpio_output>:
   11f70: 90000008     	adrp	x8, 0x11000 <tp_single_aod_write+0xa4>
		0000000000011f70:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   11f74: f9400108     	ldr	x8, [x8]
		0000000000011f74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   11f78: f9475908     	ldr	x8, [x8, #0xeb0]
   11f7c: b40001c8     	cbz	x8, 0x11fb4 <tpd_reset_gpio_output+0x44>
   11f80: d503233f     	paciasp
   11f84: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   11f88: 910003fd     	mov	x29, sp
   11f8c: 12000000     	and	w0, w0, #0x1
   11f90: b85fc110     	ldur	w16, [x8, #-0x4]
   11f94: 729d2f31     	movk	w17, #0xe979
   11f98: 72b45f91     	movk	w17, #0xa2fc, lsl #16
   11f9c: 6b11021f     	cmp	w16, w17
   11fa0: 54000040     	b.eq	0x11fa8 <tpd_reset_gpio_output+0x38>
   11fa4: d4304500     	brk	#0x8228
   11fa8: d63f0100     	blr	x8
   11fac: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   11fb0: d50323bf     	autiasp
   11fb4: d65f03c0     	ret
