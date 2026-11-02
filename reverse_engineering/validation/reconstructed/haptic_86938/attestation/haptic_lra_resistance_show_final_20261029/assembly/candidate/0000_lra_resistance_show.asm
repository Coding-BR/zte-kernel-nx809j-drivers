
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002d18 <lra_resistance_show>:
    2d18: d503233f     	paciasp
    2d1c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2d20: a9014ff4     	stp	x20, x19, [sp, #0x10]
    2d24: 910003fd     	mov	x29, sp
    2d28: f9404c14     	ldr	x20, [x0, #0x98]
    2d2c: aa0203f3     	mov	x19, x2
    2d30: f9429288     	ldr	x8, [x20, #0x520]
    2d34: d102a280     	sub	x0, x20, #0xa8
    2d38: f9403d08     	ldr	x8, [x8, #0x78]
    2d3c: b85fc110     	ldur	w16, [x8, #-0x4]
    2d40: 72810611     	movk	w17, #0x830
    2d44: 72b08f51     	movk	w17, #0x847a, lsl #16
    2d48: 6b11021f     	cmp	w16, w17
    2d4c: 54000040     	b.eq	0x2d54 <lra_resistance_show+0x3c>
    2d50: d4304500     	brk	#0x8228
    2d54: d63f0100     	blr	x8
    2d58: b85bc283     	ldur	w3, [x20, #-0x44]
    2d5c: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6
    2d60: 91000042     	add	x2, x2, #0x0
		0000000000002d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6
    2d64: aa1303e0     	mov	x0, x19
    2d68: 52820001     	mov	w1, #0x1000             // =4096
    2d6c: 94000000     	bl	0x2d6c <lra_resistance_show+0x54>
		0000000000002d6c:  R_AARCH64_CALL26	snprintf
    2d70: 93407c00     	sxtw	x0, w0
    2d74: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2d78: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2d7c: d50323bf     	autiasp
    2d80: d65f03c0     	ret
