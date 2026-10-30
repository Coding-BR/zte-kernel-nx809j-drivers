
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000023b0 <duration_show>:
    23b0: d503233f     	paciasp
    23b4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    23b8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    23bc: 910003fd     	mov	x29, sp
    23c0: f9404c14     	ldr	x20, [x0, #0x98]
    23c4: aa0203f3     	mov	x19, x2
    23c8: 910a2280     	add	x0, x20, #0x288
    23cc: 94000000     	bl	0x23cc <duration_show+0x1c>
		00000000000023cc:  R_AARCH64_CALL26	hrtimer_active
    23d0: 36000180     	tbz	w0, #0x0, 0x2400 <duration_show+0x50>
    23d4: 910a2280     	add	x0, x20, #0x288
    23d8: 2a1f03e1     	mov	w1, wzr
    23dc: 94000000     	bl	0x23dc <duration_show+0x2c>
		00000000000023dc:  R_AARCH64_CALL26	__hrtimer_get_remaining
    23e0: d2869b68     	mov	x8, #0x34db             // =13531
    23e4: f2baf6c8     	movk	x8, #0xd7b6, lsl #16
    23e8: f2dbd048     	movk	x8, #0xde82, lsl #32
    23ec: f2e86368     	movk	x8, #0x431b, lsl #48
    23f0: 9b487c08     	smulh	x8, x0, x8
    23f4: 9352fd09     	asr	x9, x8, #18
    23f8: 8b48fd23     	add	x3, x9, x8, lsr #63
    23fc: 14000002     	b	0x2404 <duration_show+0x54>
    2400: aa1f03e3     	mov	x3, xzr
    2404: 90000002     	adrp	x2, 0x2000 <cont_save_store+0x78>
		0000000000002404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22
    2408: 91000042     	add	x2, x2, #0x0
		0000000000002408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22
    240c: aa1303e0     	mov	x0, x19
    2410: 52820001     	mov	w1, #0x1000             // =4096
    2414: 94000000     	bl	0x2414 <duration_show+0x64>
		0000000000002414:  R_AARCH64_CALL26	snprintf
    2418: 93407c00     	sxtw	x0, w0
    241c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2420: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2424: d50323bf     	autiasp
    2428: d65f03c0     	ret
