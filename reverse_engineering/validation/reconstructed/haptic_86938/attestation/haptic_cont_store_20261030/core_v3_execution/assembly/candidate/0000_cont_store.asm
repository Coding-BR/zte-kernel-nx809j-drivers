
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000605c <cont_store>:
    605c: d503233f     	paciasp
    6060: d10103ff     	sub	sp, sp, #0x40
    6064: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6068: f90013f5     	str	x21, [sp, #0x20]
    606c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    6070: 910043fd     	add	x29, sp, #0x10
    6074: d5384109     	mrs	x9, SP_EL0
    6078: aa0203e8     	mov	x8, x2
    607c: 910013e2     	add	x2, sp, #0x4
    6080: f9438929     	ldr	x9, [x9, #0x710]
    6084: 2a1f03e1     	mov	w1, wzr
    6088: aa0303f3     	mov	x19, x3
    608c: f90007e9     	str	x9, [sp, #0x8]
    6090: f9404c15     	ldr	x21, [x0, #0x98]
    6094: aa0803e0     	mov	x0, x8
    6098: b90007ff     	str	wzr, [sp, #0x4]
    609c: 94000000     	bl	0x609c <cont_store+0x40>
		000000000000609c:  R_AARCH64_CALL26	kstrtouint
    60a0: 37f80480     	tbnz	w0, #0x1f, 0x6130 <cont_store+0xd4>
    60a4: f94292a8     	ldr	x8, [x21, #0x520]
    60a8: d102a2b4     	sub	x20, x21, #0xa8
    60ac: aa1403e0     	mov	x0, x20
    60b0: f9401d08     	ldr	x8, [x8, #0x38]
    60b4: b85fc110     	ldur	w16, [x8, #-0x4]
    60b8: 72810611     	movk	w17, #0x830
    60bc: 72b08f51     	movk	w17, #0x847a, lsl #16
    60c0: 6b11021f     	cmp	w16, w17
    60c4: 54000040     	b.eq	0x60cc <cont_store+0x70>
    60c8: d4304500     	brk	#0x8228
    60cc: d63f0100     	blr	x8
    60d0: b94007e8     	ldr	w8, [sp, #0x4]
    60d4: 34000308     	cbz	w8, 0x6134 <cont_store+0xd8>
    60d8: f94292a8     	ldr	x8, [x21, #0x520]
    60dc: aa1403e0     	mov	x0, x20
    60e0: 52800021     	mov	w1, #0x1                // =1
    60e4: f9408d08     	ldr	x8, [x8, #0x118]
    60e8: b85fc110     	ldur	w16, [x8, #-0x4]
    60ec: 728dd2b1     	movk	w17, #0x6e95
    60f0: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    60f4: 6b11021f     	cmp	w16, w17
    60f8: 54000040     	b.eq	0x6100 <cont_store+0xa4>
    60fc: d4304500     	brk	#0x8228
    6100: d63f0100     	blr	x8
    6104: f94292a8     	ldr	x8, [x21, #0x520]
    6108: aa1403e0     	mov	x0, x20
    610c: f9402508     	ldr	x8, [x8, #0x48]
    6110: b85fc110     	ldur	w16, [x8, #-0x4]
    6114: 72810611     	movk	w17, #0x830
    6118: 72b08f51     	movk	w17, #0x847a, lsl #16
    611c: 6b11021f     	cmp	w16, w17
    6120: 54000040     	b.eq	0x6128 <cont_store+0xcc>
    6124: d4304500     	brk	#0x8228
    6128: d63f0100     	blr	x8
    612c: 14000002     	b	0x6134 <cont_store+0xd8>
    6130: 93407c13     	sxtw	x19, w0
    6134: d5384108     	mrs	x8, SP_EL0
    6138: f9438908     	ldr	x8, [x8, #0x710]
    613c: f94007e9     	ldr	x9, [sp, #0x8]
    6140: eb09011f     	cmp	x8, x9
    6144: 54000101     	b.ne	0x6164 <cont_store+0x108>
    6148: aa1303e0     	mov	x0, x19
    614c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    6150: f94013f5     	ldr	x21, [sp, #0x20]
    6154: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6158: 910103ff     	add	sp, sp, #0x40
    615c: d50323bf     	autiasp
    6160: d65f03c0     	ret
    6164: 94000000     	bl	0x6164 <cont_store+0x108>
		0000000000006164:  R_AARCH64_CALL26	__stack_chk_fail
