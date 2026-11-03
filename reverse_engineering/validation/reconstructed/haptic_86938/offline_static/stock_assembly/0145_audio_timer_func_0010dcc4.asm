
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000aea4 <audio_timer_func>:
    aea4: d503233f     	paciasp
    aea8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    aeac: f9000bf3     	str	x19, [sp, #0x10]
    aeb0: 910003fd     	mov	x29, sp
    aeb4: f8528001     	ldur	x1, [x0, #-0xd8]
    aeb8: aa0003f3     	mov	x19, x0
    aebc: 91010002     	add	x2, x0, #0x40
    aec0: 52800400     	mov	w0, #0x20               // =32
    aec4: 94000000     	bl	0xaec4 <audio_timer_func+0x20>
		000000000000aec4:  R_AARCH64_CALL26	queue_work_on
    aec8: b85bc268     	ldur	w8, [x19, #-0x44]
    aecc: 529bd069     	mov	w9, #0xde83             // =56963
    aed0: aa1303e0     	mov	x0, x19
    aed4: 72a86369     	movk	w9, #0x431b, lsl #16
    aed8: aa1f03e2     	mov	x2, xzr
    aedc: 52800023     	mov	w3, #0x1                // =1
    aee0: 9b297d09     	smull	x9, w8, w9
    aee4: d37ffd2a     	lsr	x10, x9, #63
    aee8: 9372fd29     	asr	x9, x9, #50
    aeec: 0b0a0129     	add	w9, w9, w10
    aef0: 5288480a     	mov	w10, #0x4240            // =16960
    aef4: 72a001ea     	movk	w10, #0xf, lsl #16
    aef8: 1b0aa128     	msub	w8, w9, w10, w8
    aefc: 52807d0a     	mov	w10, #0x3e8             // =1000
    af00: 1b0a7d08     	mul	w8, w8, w10
    af04: 5299400a     	mov	w10, #0xca00            // =51712
    af08: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    af0c: 93407d08     	sxtw	x8, w8
    af10: 9b2a2121     	smaddl	x1, w9, w10, x8
    af14: 94000000     	bl	0xaf14 <audio_timer_func+0x70>
		000000000000af14:  R_AARCH64_CALL26	hrtimer_start_range_ns
    af18: 2a1f03e0     	mov	w0, wzr
    af1c: f9400bf3     	ldr	x19, [sp, #0x10]
    af20: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    af24: d50323bf     	autiasp
    af28: d65f03c0     	ret
