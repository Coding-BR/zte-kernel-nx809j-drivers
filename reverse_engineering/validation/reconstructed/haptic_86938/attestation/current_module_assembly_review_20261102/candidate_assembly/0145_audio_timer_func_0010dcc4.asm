
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000292c <audio_timer_func>:
    292c: d503233f     	paciasp
    2930: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2934: f9000bf3     	str	x19, [sp, #0x10]
    2938: 910003fd     	mov	x29, sp
    293c: f8528001     	ldur	x1, [x0, #-0xd8]
    2940: aa0003f3     	mov	x19, x0
    2944: 91010002     	add	x2, x0, #0x40
    2948: 52800400     	mov	w0, #0x20               // =32
    294c: 94000000     	bl	0x294c <audio_timer_func+0x20>
		000000000000294c:  R_AARCH64_CALL26	queue_work_on
    2950: b85bc268     	ldur	w8, [x19, #-0x44]
    2954: 529bd069     	mov	w9, #0xde83             // =56963
    2958: aa1303e0     	mov	x0, x19
    295c: 72a86369     	movk	w9, #0x431b, lsl #16
    2960: aa1f03e2     	mov	x2, xzr
    2964: 52800023     	mov	w3, #0x1                // =1
    2968: 9b297d09     	smull	x9, w8, w9
    296c: d37ffd2a     	lsr	x10, x9, #63
    2970: 9372fd29     	asr	x9, x9, #50
    2974: 0b0a0129     	add	w9, w9, w10
    2978: 5288480a     	mov	w10, #0x4240            // =16960
    297c: 72a001ea     	movk	w10, #0xf, lsl #16
    2980: 1b0aa128     	msub	w8, w9, w10, w8
    2984: 52807d0a     	mov	w10, #0x3e8             // =1000
    2988: 1b0a7d08     	mul	w8, w8, w10
    298c: 5299400a     	mov	w10, #0xca00            // =51712
    2990: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    2994: 93407d08     	sxtw	x8, w8
    2998: 9b2a2121     	smaddl	x1, w9, w10, x8
    299c: 94000000     	bl	0x299c <audio_timer_func+0x70>
		000000000000299c:  R_AARCH64_CALL26	hrtimer_start_range_ns
    29a0: 2a1f03e0     	mov	w0, wzr
    29a4: f9400bf3     	ldr	x19, [sp, #0x10]
    29a8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    29ac: d50323bf     	autiasp
    29b0: d65f03c0     	ret
