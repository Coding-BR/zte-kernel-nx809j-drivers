
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002324 <audio_timer_func>:
    2324: d503233f     	paciasp
    2328: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    232c: f9000bf3     	str	x19, [sp, #0x10]
    2330: 910003fd     	mov	x29, sp
    2334: f8528001     	ldur	x1, [x0, #-0xd8]
    2338: aa0003f3     	mov	x19, x0
    233c: 91010002     	add	x2, x0, #0x40
    2340: 52800400     	mov	w0, #0x20               // =32
    2344: 94000000     	bl	0x2344 <audio_timer_func+0x20>
		0000000000002344:  R_AARCH64_CALL26	queue_work_on
    2348: b85bc268     	ldur	w8, [x19, #-0x44]
    234c: 529bd069     	mov	w9, #0xde83             // =56963
    2350: aa1303e0     	mov	x0, x19
    2354: 72a86369     	movk	w9, #0x431b, lsl #16
    2358: aa1f03e2     	mov	x2, xzr
    235c: 52800023     	mov	w3, #0x1                // =1
    2360: 9b297d09     	smull	x9, w8, w9
    2364: d37ffd2a     	lsr	x10, x9, #63
    2368: 9372fd29     	asr	x9, x9, #50
    236c: 0b0a0129     	add	w9, w9, w10
    2370: 5288480a     	mov	w10, #0x4240            // =16960
    2374: 72a001ea     	movk	w10, #0xf, lsl #16
    2378: 1b0aa128     	msub	w8, w9, w10, w8
    237c: 52807d0a     	mov	w10, #0x3e8             // =1000
    2380: 1b0a7d08     	mul	w8, w8, w10
    2384: 5299400a     	mov	w10, #0xca00            // =51712
    2388: 72a7734a     	movk	w10, #0x3b9a, lsl #16
    238c: 93407d08     	sxtw	x8, w8
    2390: 9b2a2121     	smaddl	x1, w9, w10, x8
    2394: 94000000     	bl	0x2394 <audio_timer_func+0x70>
		0000000000002394:  R_AARCH64_CALL26	hrtimer_start_range_ns
    2398: 2a1f03e0     	mov	w0, wzr
    239c: f9400bf3     	ldr	x19, [sp, #0x10]
    23a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    23a4: d50323bf     	autiasp
    23a8: d65f03c0     	ret
