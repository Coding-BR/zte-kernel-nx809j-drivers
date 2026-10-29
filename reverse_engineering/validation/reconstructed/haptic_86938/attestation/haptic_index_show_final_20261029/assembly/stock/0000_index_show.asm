
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000781c <index_show>:
    781c: d503233f     	paciasp
    7820: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7824: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7828: 910003fd     	mov	x29, sp
    782c: f9404c14     	ldr	x20, [x0, #0x98]
    7830: 52800021     	mov	w1, #0x1                // =1
    7834: aa0203f3     	mov	x19, x2
    7838: f9429288     	ldr	x8, [x20, #0x520]
    783c: d102a280     	sub	x0, x20, #0xa8
    7840: f9409108     	ldr	x8, [x8, #0x120]
    7844: b85fc110     	ldur	w16, [x8, #-0x4]
    7848: 728dd2b1     	movk	w17, #0x6e95
    784c: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    7850: 6b11021f     	cmp	w16, w17
    7854: 54000040     	b.eq	0x785c <index_show+0x40>
    7858: d4304500     	brk	#0x8228
    785c: d63f0100     	blr	x8
    7860: 38576283     	ldurb	w3, [x20, #-0x8a]
    7864: 90000002     	adrp	x2, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29a2
    7868: 91000042     	add	x2, x2, #0x0
		0000000000007868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29a2
    786c: aa1303e0     	mov	x0, x19
    7870: 52820001     	mov	w1, #0x1000             // =4096
    7874: b819c283     	stur	w3, [x20, #-0x64]
    7878: 94000000     	bl	0x7878 <index_show+0x5c>
		0000000000007878:  R_AARCH64_CALL26	snprintf
    787c: 93407c00     	sxtw	x0, w0
    7880: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7884: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7888: d50323bf     	autiasp
    788c: d65f03c0     	ret
