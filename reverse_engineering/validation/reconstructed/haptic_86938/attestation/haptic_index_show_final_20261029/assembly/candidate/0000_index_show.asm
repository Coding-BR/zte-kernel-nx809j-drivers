
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002d88 <index_show>:
    2d88: d503233f     	paciasp
    2d8c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2d90: a9014ff4     	stp	x20, x19, [sp, #0x10]
    2d94: 910003fd     	mov	x29, sp
    2d98: f9404c14     	ldr	x20, [x0, #0x98]
    2d9c: 52800021     	mov	w1, #0x1                // =1
    2da0: aa0203f3     	mov	x19, x2
    2da4: f9429288     	ldr	x8, [x20, #0x520]
    2da8: d102a280     	sub	x0, x20, #0xa8
    2dac: f9409108     	ldr	x8, [x8, #0x120]
    2db0: b85fc110     	ldur	w16, [x8, #-0x4]
    2db4: 728dd2b1     	movk	w17, #0x6e95
    2db8: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    2dbc: 6b11021f     	cmp	w16, w17
    2dc0: 54000040     	b.eq	0x2dc8 <index_show+0x40>
    2dc4: d4304500     	brk	#0x8228
    2dc8: d63f0100     	blr	x8
    2dcc: 38576283     	ldurb	w3, [x20, #-0x8a]
    2dd0: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x762
    2dd4: 91000042     	add	x2, x2, #0x0
		0000000000002dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x762
    2dd8: aa1303e0     	mov	x0, x19
    2ddc: 52820001     	mov	w1, #0x1000             // =4096
    2de0: b819c283     	stur	w3, [x20, #-0x64]
    2de4: 94000000     	bl	0x2de4 <index_show+0x5c>
		0000000000002de4:  R_AARCH64_CALL26	snprintf
    2de8: 93407c00     	sxtw	x0, w0
    2dec: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2df0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2df4: d50323bf     	autiasp
    2df8: d65f03c0     	ret
