
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000091dc <lra_resistance_show>:
    91dc: d503233f     	paciasp
    91e0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    91e4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    91e8: 910003fd     	mov	x29, sp
    91ec: f9404c14     	ldr	x20, [x0, #0x98]
    91f0: aa0203f3     	mov	x19, x2
    91f4: f9429288     	ldr	x8, [x20, #0x520]
    91f8: d102a280     	sub	x0, x20, #0xa8
    91fc: f9403d08     	ldr	x8, [x8, #0x78]
    9200: b85fc110     	ldur	w16, [x8, #-0x4]
    9204: 72810611     	movk	w17, #0x830
    9208: 72b08f51     	movk	w17, #0x847a, lsl #16
    920c: 6b11021f     	cmp	w16, w17
    9210: 54000040     	b.eq	0x9218 <lra_resistance_show+0x3c>
    9214: d4304500     	brk	#0x8228
    9218: d63f0100     	blr	x8
    921c: b85bc283     	ldur	w3, [x20, #-0x44]
    9220: 90000002     	adrp	x2, 0x9000 <cont_show+0x34>
		0000000000009220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74d
    9224: 91000042     	add	x2, x2, #0x0
		0000000000009224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74d
    9228: aa1303e0     	mov	x0, x19
    922c: 52820001     	mov	w1, #0x1000             // =4096
    9230: 94000000     	bl	0x9230 <lra_resistance_show+0x54>
		0000000000009230:  R_AARCH64_CALL26	snprintf
    9234: 93407c00     	sxtw	x0, w0
    9238: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    923c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9240: d50323bf     	autiasp
    9244: d65f03c0     	ret
