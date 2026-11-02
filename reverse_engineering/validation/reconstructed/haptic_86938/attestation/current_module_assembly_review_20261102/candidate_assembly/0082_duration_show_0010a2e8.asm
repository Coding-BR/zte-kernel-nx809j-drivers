
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000029b8 <duration_show>:
    29b8: d503233f     	paciasp
    29bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    29c0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    29c4: 910003fd     	mov	x29, sp
    29c8: f9404c14     	ldr	x20, [x0, #0x98]
    29cc: aa0203f3     	mov	x19, x2
    29d0: 910a2280     	add	x0, x20, #0x288
    29d4: 94000000     	bl	0x29d4 <duration_show+0x1c>
		00000000000029d4:  R_AARCH64_CALL26	hrtimer_active
    29d8: 36000180     	tbz	w0, #0x0, 0x2a08 <duration_show+0x50>
    29dc: 910a2280     	add	x0, x20, #0x288
    29e0: 2a1f03e1     	mov	w1, wzr
    29e4: 94000000     	bl	0x29e4 <duration_show+0x2c>
		00000000000029e4:  R_AARCH64_CALL26	__hrtimer_get_remaining
    29e8: d2869b68     	mov	x8, #0x34db             // =13531
    29ec: f2baf6c8     	movk	x8, #0xd7b6, lsl #16
    29f0: f2dbd048     	movk	x8, #0xde82, lsl #32
    29f4: f2e86368     	movk	x8, #0x431b, lsl #48
    29f8: 9b487c08     	smulh	x8, x0, x8
    29fc: 9352fd09     	asr	x9, x8, #18
    2a00: 8b48fd23     	add	x3, x9, x8, lsr #63
    2a04: 14000002     	b	0x2a0c <duration_show+0x54>
    2a08: aa1f03e3     	mov	x3, xzr
    2a0c: 90000002     	adrp	x2, 0x2000 <ram_load+0x34>
		0000000000002a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x53
    2a10: 91000042     	add	x2, x2, #0x0
		0000000000002a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x53
    2a14: aa1303e0     	mov	x0, x19
    2a18: 52820001     	mov	w1, #0x1000             // =4096
    2a1c: 94000000     	bl	0x2a1c <duration_show+0x64>
		0000000000002a1c:  R_AARCH64_CALL26	snprintf
    2a20: 93407c00     	sxtw	x0, w0
    2a24: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2a28: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2a2c: d50323bf     	autiasp
    2a30: d65f03c0     	ret
