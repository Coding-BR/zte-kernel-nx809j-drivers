
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008fcc <cont_show>:
    8fcc: d503233f     	paciasp
    8fd0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8fd4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    8fd8: 910003fd     	mov	x29, sp
    8fdc: f9404c14     	ldr	x20, [x0, #0x98]
    8fe0: aa0203f3     	mov	x19, x2
    8fe4: f9429288     	ldr	x8, [x20, #0x520]
    8fe8: d102a280     	sub	x0, x20, #0xa8
    8fec: f9400908     	ldr	x8, [x8, #0x10]
    8ff0: b85fc110     	ldur	w16, [x8, #-0x4]
    8ff4: 729e3e11     	movk	w17, #0xf1f0
    8ff8: 72aa2591     	movk	w17, #0x512c, lsl #16
    8ffc: 6b11021f     	cmp	w16, w17
    9000: 54000040     	b.eq	0x9008 <cont_show+0x3c>
    9004: d4304500     	brk	#0x8228
    9008: d63f0100     	blr	x8
    900c: b85c8283     	ldur	w3, [x20, #-0x38]
    9010: 90000002     	adrp	x2, 0x9000 <cont_show+0x34>
		0000000000009010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1225
    9014: 91000042     	add	x2, x2, #0x0
		0000000000009014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1225
    9018: aa1303e0     	mov	x0, x19
    901c: 52820001     	mov	w1, #0x1000             // =4096
    9020: 94000000     	bl	0x9020 <cont_show+0x54>
		0000000000009020:  R_AARCH64_CALL26	snprintf
    9024: 93407c00     	sxtw	x0, w0
    9028: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    902c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9030: d50323bf     	autiasp
    9034: d65f03c0     	ret
