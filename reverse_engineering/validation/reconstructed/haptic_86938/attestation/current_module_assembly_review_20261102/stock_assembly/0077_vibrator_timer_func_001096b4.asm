
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006894 <vibrator_timer_func>:
    6894: d503233f     	paciasp
    6898: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    689c: 910003fd     	mov	x29, sp
    68a0: f9408c01     	ldr	x1, [x0, #0x118]
    68a4: d10bc008     	sub	x8, x0, #0x2f0
    68a8: 9103e002     	add	x2, x0, #0xf8
    68ac: 52800400     	mov	w0, #0x20               // =32
    68b0: b900011f     	str	wzr, [x8]
    68b4: 94000000     	bl	0x68b4 <vibrator_timer_func+0x20>
		00000000000068b4:  R_AARCH64_CALL26	queue_work_on
    68b8: 2a1f03e0     	mov	w0, wzr
    68bc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    68c0: d50323bf     	autiasp
    68c4: d65f03c0     	ret
