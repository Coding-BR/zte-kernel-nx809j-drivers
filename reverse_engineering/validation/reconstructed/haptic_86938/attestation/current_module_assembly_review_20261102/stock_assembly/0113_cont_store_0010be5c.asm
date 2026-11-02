
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000903c <cont_store>:
    903c: d503233f     	paciasp
    9040: d10103ff     	sub	sp, sp, #0x40
    9044: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9048: f90013f5     	str	x21, [sp, #0x20]
    904c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9050: 910043fd     	add	x29, sp, #0x10
    9054: d5384109     	mrs	x9, SP_EL0
    9058: aa0203e8     	mov	x8, x2
    905c: 910013e2     	add	x2, sp, #0x4
    9060: f9438929     	ldr	x9, [x9, #0x710]
    9064: 2a1f03e1     	mov	w1, wzr
    9068: aa0303f3     	mov	x19, x3
    906c: f90007e9     	str	x9, [sp, #0x8]
    9070: f9404c15     	ldr	x21, [x0, #0x98]
    9074: aa0803e0     	mov	x0, x8
    9078: b90007ff     	str	wzr, [sp, #0x4]
    907c: 94000000     	bl	0x907c <cont_store+0x40>
		000000000000907c:  R_AARCH64_CALL26	kstrtouint
    9080: 37f80480     	tbnz	w0, #0x1f, 0x9110 <cont_store+0xd4>
    9084: f94292a8     	ldr	x8, [x21, #0x520]
    9088: d102a2b4     	sub	x20, x21, #0xa8
    908c: aa1403e0     	mov	x0, x20
    9090: f9401d08     	ldr	x8, [x8, #0x38]
    9094: b85fc110     	ldur	w16, [x8, #-0x4]
    9098: 72810611     	movk	w17, #0x830
    909c: 72b08f51     	movk	w17, #0x847a, lsl #16
    90a0: 6b11021f     	cmp	w16, w17
    90a4: 54000040     	b.eq	0x90ac <cont_store+0x70>
    90a8: d4304500     	brk	#0x8228
    90ac: d63f0100     	blr	x8
    90b0: b94007e8     	ldr	w8, [sp, #0x4]
    90b4: 34000308     	cbz	w8, 0x9114 <cont_store+0xd8>
    90b8: f94292a8     	ldr	x8, [x21, #0x520]
    90bc: aa1403e0     	mov	x0, x20
    90c0: 52800021     	mov	w1, #0x1                // =1
    90c4: f9408d08     	ldr	x8, [x8, #0x118]
    90c8: b85fc110     	ldur	w16, [x8, #-0x4]
    90cc: 728dd2b1     	movk	w17, #0x6e95
    90d0: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    90d4: 6b11021f     	cmp	w16, w17
    90d8: 54000040     	b.eq	0x90e0 <cont_store+0xa4>
    90dc: d4304500     	brk	#0x8228
    90e0: d63f0100     	blr	x8
    90e4: f94292a8     	ldr	x8, [x21, #0x520]
    90e8: aa1403e0     	mov	x0, x20
    90ec: f9402508     	ldr	x8, [x8, #0x48]
    90f0: b85fc110     	ldur	w16, [x8, #-0x4]
    90f4: 72810611     	movk	w17, #0x830
    90f8: 72b08f51     	movk	w17, #0x847a, lsl #16
    90fc: 6b11021f     	cmp	w16, w17
    9100: 54000040     	b.eq	0x9108 <cont_store+0xcc>
    9104: d4304500     	brk	#0x8228
    9108: d63f0100     	blr	x8
    910c: 14000002     	b	0x9114 <cont_store+0xd8>
    9110: 93407c13     	sxtw	x19, w0
    9114: d5384108     	mrs	x8, SP_EL0
    9118: f9438908     	ldr	x8, [x8, #0x710]
    911c: f94007e9     	ldr	x9, [sp, #0x8]
    9120: eb09011f     	cmp	x8, x9
    9124: 54000101     	b.ne	0x9144 <cont_store+0x108>
    9128: aa1303e0     	mov	x0, x19
    912c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9130: f94013f5     	ldr	x21, [sp, #0x20]
    9134: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9138: 910103ff     	add	sp, sp, #0x40
    913c: d50323bf     	autiasp
    9140: d65f03c0     	ret
    9144: 94000000     	bl	0x9144 <cont_store+0x108>
		0000000000009144:  R_AARCH64_CALL26	__stack_chk_fail
