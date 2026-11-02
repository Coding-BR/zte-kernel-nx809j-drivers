
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002a38 <duration_aw_show>:
    2a38: d503233f     	paciasp
    2a3c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2a40: a9014ff4     	stp	x20, x19, [sp, #0x10]
    2a44: 910003fd     	mov	x29, sp
    2a48: f9404c14     	ldr	x20, [x0, #0x98]
    2a4c: aa0203f3     	mov	x19, x2
    2a50: 910a2280     	add	x0, x20, #0x288
    2a54: 94000000     	bl	0x2a54 <duration_aw_show+0x1c>
		0000000000002a54:  R_AARCH64_CALL26	hrtimer_active
    2a58: 36000180     	tbz	w0, #0x0, 0x2a88 <duration_aw_show+0x50>
    2a5c: 910a2280     	add	x0, x20, #0x288
    2a60: 2a1f03e1     	mov	w1, wzr
    2a64: 94000000     	bl	0x2a64 <duration_aw_show+0x2c>
		0000000000002a64:  R_AARCH64_CALL26	__hrtimer_get_remaining
    2a68: d2869b68     	mov	x8, #0x34db             // =13531
    2a6c: f2baf6c8     	movk	x8, #0xd7b6, lsl #16
    2a70: f2dbd048     	movk	x8, #0xde82, lsl #32
    2a74: f2e86368     	movk	x8, #0x431b, lsl #48
    2a78: 9b487c08     	smulh	x8, x0, x8
    2a7c: 9352fd09     	asr	x9, x8, #18
    2a80: 8b48fd23     	add	x3, x9, x8, lsr #63
    2a84: 14000002     	b	0x2a8c <duration_aw_show+0x54>
    2a88: aa1f03e3     	mov	x3, xzr
    2a8c: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53
    2a90: 91000042     	add	x2, x2, #0x0
		0000000000002a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53
    2a94: aa1303e0     	mov	x0, x19
    2a98: 52820001     	mov	w1, #0x1000             // =4096
    2a9c: 94000000     	bl	0x2a9c <duration_aw_show+0x64>
		0000000000002a9c:  R_AARCH64_CALL26	snprintf
    2aa0: 93407c00     	sxtw	x0, w0
    2aa4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2aa8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2aac: d50323bf     	autiasp
    2ab0: d65f03c0     	ret
