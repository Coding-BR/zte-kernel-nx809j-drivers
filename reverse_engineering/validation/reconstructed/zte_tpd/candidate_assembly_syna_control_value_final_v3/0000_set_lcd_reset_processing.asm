
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000026dc <set_lcd_reset_processing>:
    26dc: d503233f     	paciasp
    26e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    26e4: 910003fd     	mov	x29, sp
    26e8: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xb4>
		00000000000026e8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    26ec: 12000001     	and	w1, w0, #0x1
    26f0: f9400108     	ldr	x8, [x8]
		00000000000026f0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    26f4: 39006100     	strb	w0, [x8, #0x18]
    26f8: 90000008     	adrp	x8, 0x2000 <point_report_reset+0xb4>
		00000000000026f8:  R_AARCH64_ADR_PREL_PG_HI21	unk_38D27
    26fc: 91000108     	add	x8, x8, #0x0
		00000000000026fc:  R_AARCH64_ADD_ABS_LO12_NC	unk_38D27
    2700: aa0803e0     	mov	x0, x8
    2704: 94000000     	bl	0x2704 <set_lcd_reset_processing+0x28>
		0000000000002704:  R_AARCH64_CALL26	_printk
    2708: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    270c: d50323bf     	autiasp
    2710: d65f03c0     	ret
