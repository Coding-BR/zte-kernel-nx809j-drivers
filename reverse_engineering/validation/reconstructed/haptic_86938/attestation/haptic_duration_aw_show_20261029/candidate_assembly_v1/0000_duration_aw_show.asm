
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002430 <duration_aw_show>:
    2430: d503233f     	paciasp
    2434: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2438: a9014ff4     	stp	x20, x19, [sp, #0x10]
    243c: 910003fd     	mov	x29, sp
    2440: f9404c14     	ldr	x20, [x0, #0x98]
    2444: aa0203f3     	mov	x19, x2
    2448: 910a2280     	add	x0, x20, #0x288
    244c: 94000000     	bl	0x244c <duration_aw_show+0x1c>
		000000000000244c:  R_AARCH64_CALL26	hrtimer_active
    2450: 36000180     	tbz	w0, #0x0, 0x2480 <duration_aw_show+0x50>
    2454: 910a2280     	add	x0, x20, #0x288
    2458: 2a1f03e1     	mov	w1, wzr
    245c: 94000000     	bl	0x245c <duration_aw_show+0x2c>
		000000000000245c:  R_AARCH64_CALL26	__hrtimer_get_remaining
    2460: d2869b68     	mov	x8, #0x34db             // =13531
    2464: f2baf6c8     	movk	x8, #0xd7b6, lsl #16
    2468: f2dbd048     	movk	x8, #0xde82, lsl #32
    246c: f2e86368     	movk	x8, #0x431b, lsl #48
    2470: 9b487c08     	smulh	x8, x0, x8
    2474: 9352fd09     	asr	x9, x8, #18
    2478: 8b48fd23     	add	x3, x9, x8, lsr #63
    247c: 14000002     	b	0x2484 <duration_aw_show+0x54>
    2480: aa1f03e3     	mov	x3, xzr
    2484: 90000002     	adrp	x2, 0x2000 <cont_save_store+0x78>
		0000000000002484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22
    2488: 91000042     	add	x2, x2, #0x0
		0000000000002488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22
    248c: aa1303e0     	mov	x0, x19
    2490: 52820001     	mov	w1, #0x1000             // =4096
    2494: 94000000     	bl	0x2494 <duration_aw_show+0x64>
		0000000000002494:  R_AARCH64_CALL26	snprintf
    2498: 93407c00     	sxtw	x0, w0
    249c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    24a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    24a4: d50323bf     	autiasp
    24a8: d65f03c0     	ret
