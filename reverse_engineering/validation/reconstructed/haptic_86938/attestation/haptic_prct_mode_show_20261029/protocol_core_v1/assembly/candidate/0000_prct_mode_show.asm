
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000025e0 <prct_mode_show>:
    25e0: d503233f     	paciasp
    25e4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    25e8: f9000bf3     	str	x19, [sp, #0x10]
    25ec: 910003fd     	mov	x29, sp
    25f0: f9404c08     	ldr	x8, [x0, #0x98]
    25f4: aa0203f3     	mov	x19, x2
    25f8: f9429109     	ldr	x9, [x8, #0x520]
    25fc: d102a100     	sub	x0, x8, #0xa8
    2600: f940a929     	ldr	x9, [x9, #0x150]
    2604: b85fc130     	ldur	w16, [x9, #-0x4]
    2608: 72870a91     	movk	w17, #0x3854
    260c: 72af0971     	movk	w17, #0x784b, lsl #16
    2610: 6b11021f     	cmp	w16, w17
    2614: 54000040     	b.eq	0x261c <prct_mode_show+0x3c>
    2618: d4304520     	brk	#0x8229
    261c: d63f0120     	blr	x9
    2620: 90000002     	adrp	x2, 0x2000 <cont_save_store+0x78>
		0000000000002620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x154
    2624: 91000042     	add	x2, x2, #0x0
		0000000000002624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x154
    2628: 12001c03     	and	w3, w0, #0xff
    262c: aa1303e0     	mov	x0, x19
    2630: 52820001     	mov	w1, #0x1000             // =4096
    2634: 94000000     	bl	0x2634 <prct_mode_show+0x54>
		0000000000002634:  R_AARCH64_CALL26	snprintf
    2638: 93407c00     	sxtw	x0, w0
    263c: f9400bf3     	ldr	x19, [sp, #0x10]
    2640: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2644: d50323bf     	autiasp
    2648: d65f03c0     	ret
