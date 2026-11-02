
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002be8 <prct_mode_show>:
    2be8: d503233f     	paciasp
    2bec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2bf0: f9000bf3     	str	x19, [sp, #0x10]
    2bf4: 910003fd     	mov	x29, sp
    2bf8: f9404c08     	ldr	x8, [x0, #0x98]
    2bfc: aa0203f3     	mov	x19, x2
    2c00: f9429109     	ldr	x9, [x8, #0x520]
    2c04: d102a100     	sub	x0, x8, #0xa8
    2c08: f940a929     	ldr	x9, [x9, #0x150]
    2c0c: b85fc130     	ldur	w16, [x9, #-0x4]
    2c10: 72870a91     	movk	w17, #0x3854
    2c14: 72af0971     	movk	w17, #0x784b, lsl #16
    2c18: 6b11021f     	cmp	w16, w17
    2c1c: 54000040     	b.eq	0x2c24 <prct_mode_show+0x3c>
    2c20: d4304520     	brk	#0x8229
    2c24: d63f0120     	blr	x9
    2c28: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eb
    2c2c: 91000042     	add	x2, x2, #0x0
		0000000000002c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eb
    2c30: 12001c03     	and	w3, w0, #0xff
    2c34: aa1303e0     	mov	x0, x19
    2c38: 52820001     	mov	w1, #0x1000             // =4096
    2c3c: 94000000     	bl	0x2c3c <prct_mode_show+0x54>
		0000000000002c3c:  R_AARCH64_CALL26	snprintf
    2c40: 93407c00     	sxtw	x0, w0
    2c44: f9400bf3     	ldr	x19, [sp, #0x10]
    2c48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2c4c: d50323bf     	autiasp
    2c50: d65f03c0     	ret
