
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002ca8 <cont_show>:
    2ca8: d503233f     	paciasp
    2cac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2cb0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    2cb4: 910003fd     	mov	x29, sp
    2cb8: f9404c14     	ldr	x20, [x0, #0x98]
    2cbc: aa0203f3     	mov	x19, x2
    2cc0: f9429288     	ldr	x8, [x20, #0x520]
    2cc4: d102a280     	sub	x0, x20, #0xa8
    2cc8: f9400908     	ldr	x8, [x8, #0x10]
    2ccc: b85fc110     	ldur	w16, [x8, #-0x4]
    2cd0: 729e3e11     	movk	w17, #0xf1f0
    2cd4: 72aa2591     	movk	w17, #0x512c, lsl #16
    2cd8: 6b11021f     	cmp	w16, w17
    2cdc: 54000040     	b.eq	0x2ce4 <cont_show+0x3c>
    2ce0: d4304500     	brk	#0x8228
    2ce4: d63f0100     	blr	x8
    2ce8: b85c8283     	ldur	w3, [x20, #-0x38]
    2cec: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x297
    2cf0: 91000042     	add	x2, x2, #0x0
		0000000000002cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x297
    2cf4: aa1303e0     	mov	x0, x19
    2cf8: 52820001     	mov	w1, #0x1000             // =4096
    2cfc: 94000000     	bl	0x2cfc <cont_show+0x54>
		0000000000002cfc:  R_AARCH64_CALL26	snprintf
    2d00: 93407c00     	sxtw	x0, w0
    2d04: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2d08: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2d0c: d50323bf     	autiasp
    2d10: d65f03c0     	ret
