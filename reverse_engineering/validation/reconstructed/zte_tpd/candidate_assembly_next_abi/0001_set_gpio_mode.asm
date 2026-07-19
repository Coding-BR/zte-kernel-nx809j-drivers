
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002624 <set_gpio_mode>:
    2624: d503233f     	paciasp
    2628: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    262c: f9000bf5     	str	x21, [sp, #0x10]
    2630: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2634: 910003fd     	mov	x29, sp
    2638: 90000015     	adrp	x21, 0x2000 <point_report_reset+0xc8>
		0000000000002638:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    263c: f94002a8     	ldr	x8, [x21]
		000000000000263c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2640: f947ad14     	ldr	x20, [x8, #0xf58]
    2644: b4000234     	cbz	x20, 0x2688 <set_gpio_mode+0x64>
    2648: b85fc289     	ldur	w9, [x20, #-0x4]
    264c: 5287b82a     	mov	w10, #0x3dc1            // =15809
    2650: 2a0003f3     	mov	w19, w0
    2654: 72bc3aca     	movk	w10, #0xe1d6, lsl #16
    2658: 6b0a013f     	cmp	w9, w10
    265c: 54000221     	b.ne	0x26a0 <set_gpio_mode+0x7c>
    2660: aa0803e0     	mov	x0, x8
    2664: 2a1303e1     	mov	w1, w19
    2668: b85fc290     	ldur	w16, [x20, #-0x4]
    266c: 7287b831     	movk	w17, #0x3dc1
    2670: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
    2674: 6b11021f     	cmp	w16, w17
    2678: 54000040     	b.eq	0x2680 <set_gpio_mode+0x5c>
    267c: d4304680     	brk	#0x8234
    2680: d63f0280     	blr	x20
    2684: 14000002     	b	0x268c <set_gpio_mode+0x68>
    2688: 12800080     	mov	w0, #-0x5               // =-5
    268c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2690: f9400bf5     	ldr	x21, [sp, #0x10]
    2694: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2698: d50323bf     	autiasp
    269c: d65f03c0     	ret
    26a0: 90000000     	adrp	x0, 0x2000 <point_report_reset+0xc8>
		00000000000026a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x31
    26a4: 91000000     	add	x0, x0, #0x0
		00000000000026a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x31
    26a8: 90000002     	adrp	x2, 0x2000 <point_report_reset+0xc8>
		00000000000026a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
    26ac: 91000042     	add	x2, x2, #0x0
		00000000000026ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
    26b0: 52904521     	mov	w1, #0x8229             // =33321
    26b4: 52800163     	mov	w3, #0xb                // =11
    26b8: 94000000     	bl	0x26b8 <set_gpio_mode+0x94>
		00000000000026b8:  R_AARCH64_CALL26	_printk
    26bc: f94002a8     	ldr	x8, [x21]
		00000000000026bc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    26c0: 17ffffe8     	b	0x2660 <set_gpio_mode+0x3c>
