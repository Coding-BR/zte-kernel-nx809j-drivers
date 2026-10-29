
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002124 <vibrator_timer_func>:
    2124: d503233f     	paciasp
    2128: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    212c: 910003fd     	mov	x29, sp
    2130: f9408c01     	ldr	x1, [x0, #0x118]
    2134: d10bc008     	sub	x8, x0, #0x2f0
    2138: 9103e002     	add	x2, x0, #0xf8
    213c: 52800400     	mov	w0, #0x20               // =32
    2140: b900011f     	str	wzr, [x8]
    2144: 94000000     	bl	0x2144 <vibrator_timer_func+0x20>
		0000000000002144:  R_AARCH64_CALL26	queue_work_on
    2148: 2a1f03e0     	mov	w0, wzr
    214c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2150: d50323bf     	autiasp
    2154: d65f03c0     	ret
