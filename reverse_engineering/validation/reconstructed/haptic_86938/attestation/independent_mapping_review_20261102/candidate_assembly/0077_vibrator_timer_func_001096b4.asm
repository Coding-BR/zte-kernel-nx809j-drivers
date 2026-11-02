
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000272c <vibrator_timer_func>:
    272c: d503233f     	paciasp
    2730: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2734: 910003fd     	mov	x29, sp
    2738: f9408c01     	ldr	x1, [x0, #0x118]
    273c: d10bc008     	sub	x8, x0, #0x2f0
    2740: 9103e002     	add	x2, x0, #0xf8
    2744: 52800400     	mov	w0, #0x20               // =32
    2748: b900011f     	str	wzr, [x8]
    274c: 94000000     	bl	0x274c <vibrator_timer_func+0x20>
		000000000000274c:  R_AARCH64_CALL26	queue_work_on
    2750: 2a1f03e0     	mov	w0, wzr
    2754: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2758: d50323bf     	autiasp
    275c: d65f03c0     	ret
