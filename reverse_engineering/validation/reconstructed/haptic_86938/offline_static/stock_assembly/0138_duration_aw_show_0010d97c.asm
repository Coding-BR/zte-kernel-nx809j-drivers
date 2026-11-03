
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ab5c <duration_aw_show>:
    ab5c: d503233f     	paciasp
    ab60: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    ab64: a9014ff4     	stp	x20, x19, [sp, #0x10]
    ab68: 910003fd     	mov	x29, sp
    ab6c: f9404c14     	ldr	x20, [x0, #0x98]
    ab70: aa0203f3     	mov	x19, x2
    ab74: 910a2280     	add	x0, x20, #0x288
    ab78: 94000000     	bl	0xab78 <duration_aw_show+0x1c>
		000000000000ab78:  R_AARCH64_CALL26	hrtimer_active
    ab7c: 36000180     	tbz	w0, #0x0, 0xabac <duration_aw_show+0x50>
    ab80: 910a2280     	add	x0, x20, #0x288
    ab84: 2a1f03e1     	mov	w1, wzr
    ab88: 94000000     	bl	0xab88 <duration_aw_show+0x2c>
		000000000000ab88:  R_AARCH64_CALL26	__hrtimer_get_remaining
    ab8c: d2869b68     	mov	x8, #0x34db             // =13531
    ab90: f2baf6c8     	movk	x8, #0xd7b6, lsl #16
    ab94: f2dbd048     	movk	x8, #0xde82, lsl #32
    ab98: f2e86368     	movk	x8, #0x431b, lsl #48
    ab9c: 9b487c08     	smulh	x8, x0, x8
    aba0: 9352fd09     	asr	x9, x8, #18
    aba4: 8b48fd23     	add	x3, x9, x8, lsr #63
    aba8: 14000002     	b	0xabb0 <duration_aw_show+0x54>
    abac: aa1f03e3     	mov	x3, xzr
    abb0: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000abb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x106
    abb4: 91000042     	add	x2, x2, #0x0
		000000000000abb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x106
    abb8: aa1303e0     	mov	x0, x19
    abbc: 52820001     	mov	w1, #0x1000             // =4096
    abc0: 94000000     	bl	0xabc0 <duration_aw_show+0x64>
		000000000000abc0:  R_AARCH64_CALL26	snprintf
    abc4: 93407c00     	sxtw	x0, w0
    abc8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    abcc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    abd0: d50323bf     	autiasp
    abd4: d65f03c0     	ret
