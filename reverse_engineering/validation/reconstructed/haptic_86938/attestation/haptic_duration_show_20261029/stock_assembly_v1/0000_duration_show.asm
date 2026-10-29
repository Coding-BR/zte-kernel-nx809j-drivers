
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000074c8 <duration_show>:
    74c8: d503233f     	paciasp
    74cc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    74d0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    74d4: 910003fd     	mov	x29, sp
    74d8: f9404c14     	ldr	x20, [x0, #0x98]
    74dc: aa0203f3     	mov	x19, x2
    74e0: 910a2280     	add	x0, x20, #0x288
    74e4: 94000000     	bl	0x74e4 <duration_show+0x1c>
		00000000000074e4:  R_AARCH64_CALL26	hrtimer_active
    74e8: 36000180     	tbz	w0, #0x0, 0x7518 <duration_show+0x50>
    74ec: 910a2280     	add	x0, x20, #0x288
    74f0: 2a1f03e1     	mov	w1, wzr
    74f4: 94000000     	bl	0x74f4 <duration_show+0x2c>
		00000000000074f4:  R_AARCH64_CALL26	__hrtimer_get_remaining
    74f8: d2869b68     	mov	x8, #0x34db             // =13531
    74fc: f2baf6c8     	movk	x8, #0xd7b6, lsl #16
    7500: f2dbd048     	movk	x8, #0xde82, lsl #32
    7504: f2e86368     	movk	x8, #0x431b, lsl #48
    7508: 9b487c08     	smulh	x8, x0, x8
    750c: 9352fd09     	asr	x9, x8, #18
    7510: 8b48fd23     	add	x3, x9, x8, lsr #63
    7514: 14000002     	b	0x751c <duration_show+0x54>
    7518: aa1f03e3     	mov	x3, xzr
    751c: 90000002     	adrp	x2, 0x7000 <rtp_work_routine+0x1d8>
		000000000000751c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x106
    7520: 91000042     	add	x2, x2, #0x0
		0000000000007520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x106
    7524: aa1303e0     	mov	x0, x19
    7528: 52820001     	mov	w1, #0x1000             // =4096
    752c: 94000000     	bl	0x752c <duration_show+0x64>
		000000000000752c:  R_AARCH64_CALL26	snprintf
    7530: 93407c00     	sxtw	x0, w0
    7534: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7538: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    753c: d50323bf     	autiasp
    7540: d65f03c0     	ret
