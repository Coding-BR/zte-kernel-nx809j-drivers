
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000025d0 <set_gpio_mode>:
    25d0: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x2c>
		00000000000025d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    25d4: f9400108     	ldr	x8, [x8]
		00000000000025d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    25d8: f947ad09     	ldr	x9, [x8, #0xf58]
    25dc: b4000209     	cbz	x9, 0x261c <set_gpio_mode+0x4c>
    25e0: d503233f     	paciasp
    25e4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    25e8: 910003fd     	mov	x29, sp
    25ec: 2a0003e1     	mov	w1, w0
    25f0: aa0803e0     	mov	x0, x8
    25f4: b85fc130     	ldur	w16, [x9, #-0x4]
    25f8: 7287b831     	movk	w17, #0x3dc1
    25fc: 72bc3ad1     	movk	w17, #0xe1d6, lsl #16
    2600: 6b11021f     	cmp	w16, w17
    2604: 54000040     	b.eq	0x260c <set_gpio_mode+0x3c>
    2608: d4304520     	brk	#0x8229
    260c: d63f0120     	blr	x9
    2610: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2614: d50323bf     	autiasp
    2618: d65f03c0     	ret
    261c: 12800080     	mov	w0, #-0x5               // =-5
    2620: d65f03c0     	ret
