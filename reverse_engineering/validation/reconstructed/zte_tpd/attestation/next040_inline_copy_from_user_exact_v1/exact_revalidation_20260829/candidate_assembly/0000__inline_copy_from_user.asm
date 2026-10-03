
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009090 <_inline_copy_from_user>:
    9090: d503233f     	paciasp
    9094: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9098: f9000bf5     	str	x21, [sp, #0x10]
    909c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    90a0: 910003fd     	mov	x29, sp
    90a4: d5384108     	mrs	x8, SP_EL0
    90a8: 39411909     	ldrb	w9, [x8, #0x46]
    90ac: aa0203f3     	mov	x19, x2
    90b0: aa0003f4     	mov	x20, x0
    90b4: 37280089     	tbnz	w9, #0x5, 0x90c4 <_inline_copy_from_user+0x34>
    90b8: f940010a     	ldr	x10, [x8]
    90bc: aa0103e9     	mov	x9, x1
    90c0: 36d0006a     	tbz	w10, #0x1a, 0x90cc <_inline_copy_from_user+0x3c>
    90c4: d378dc29     	lsl	x9, x1, #8
    90c8: 8a892029     	and	x9, x1, x9, asr #8
    90cc: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    90d0: aa1303f5     	mov	x21, x19
    90d4: eb0a027f     	cmp	x19, x10
    90d8: 54000408     	b.hi	0x9158 <_inline_copy_from_user+0xc8>
    90dc: cb13014a     	sub	x10, x10, x19
    90e0: aa1303f5     	mov	x21, x19
    90e4: eb09015f     	cmp	x10, x9
    90e8: 54000383     	b.lo	0x9158 <_inline_copy_from_user+0xc8>
    90ec: d503201f     	nop
    90f0: d53b4229     	mrs	x9, DAIF
    90f4: d50343df     	msr	DAIFSet, #0x3
    90f8: f9400508     	ldr	x8, [x8, #0x8]
    90fc: d538202a     	mrs	x10, TTBR1_EL1
    9100: aa0803eb     	mov	x11, x8
    9104: b340bd4b     	bfxil	x11, x10, #0, #48
    9108: d518202b     	msr	TTBR1_EL1, x11
    910c: d5182008     	msr	TTBR0_EL1, x8
    9110: d5033fdf     	isb
    9114: d51b4229     	msr	DAIF, x9
    9118: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    911c: aa1403e0     	mov	x0, x20
    9120: aa1303e2     	mov	x2, x19
    9124: 94000000     	bl	0x9124 <_inline_copy_from_user+0x94>
		0000000000009124:  R_AARCH64_CALL26	__arch_copy_from_user
    9128: aa0003f5     	mov	x21, x0
    912c: d503201f     	nop
    9130: d53b4228     	mrs	x8, DAIF
    9134: d50343df     	msr	DAIFSet, #0x3
    9138: d5382029     	mrs	x9, TTBR1_EL1
    913c: 9240bd29     	and	x9, x9, #0xffffffffffff
    9140: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    9144: d518200a     	msr	TTBR0_EL1, x10
    9148: d5182029     	msr	TTBR1_EL1, x9
    914c: d5033fdf     	isb
    9150: d51b4228     	msr	DAIF, x8
    9154: b40000d5     	cbz	x21, 0x916c <_inline_copy_from_user+0xdc>
    9158: cb150268     	sub	x8, x19, x21
    915c: 2a1f03e1     	mov	w1, wzr
    9160: aa1503e2     	mov	x2, x21
    9164: 8b080280     	add	x0, x20, x8
    9168: 94000000     	bl	0x9168 <_inline_copy_from_user+0xd8>
		0000000000009168:  R_AARCH64_CALL26	memset
    916c: aa1503e0     	mov	x0, x21
    9170: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9174: f9400bf5     	ldr	x21, [sp, #0x10]
    9178: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    917c: d50323bf     	autiasp
    9180: d65f03c0     	ret
