
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f00 <ram_work_init>:
    1f00: d503233f     	paciasp
    1f04: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1f08: f9000bf3     	str	x19, [sp, #0x10]
    1f0c: 910003fd     	mov	x29, sp
    1f10: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1f14: aa0003f3     	mov	x19, x0
    1f18: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001f18:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    1f1c: 91000021     	add	x1, x1, #0x0
		0000000000001f1c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    1f20: f901e008     	str	x8, [x0, #0x3c0]
    1f24: 910f2008     	add	x8, x0, #0x3c8
    1f28: f901e408     	str	x8, [x0, #0x3c8]
    1f2c: 52a00402     	mov	w2, #0x200000           // =2097152
    1f30: aa1f03e3     	mov	x3, xzr
    1f34: f901e808     	str	x8, [x0, #0x3d0]
    1f38: 90000008     	adrp	x8, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001f38:  R_AARCH64_ADR_PREL_PG_HI21	ram_work_routine
    1f3c: 91000108     	add	x8, x8, #0x0
		0000000000001f3c:  R_AARCH64_ADD_ABS_LO12_NC	ram_work_routine
    1f40: f901ec08     	str	x8, [x0, #0x3d8]
    1f44: 910f8000     	add	x0, x0, #0x3e0
    1f48: aa1f03e4     	mov	x4, xzr
    1f4c: 94000000     	bl	0x1f4c <ram_work_init+0x4c>
		0000000000001f4c:  R_AARCH64_CALL26	init_timer_key
    1f50: 90000008     	adrp	x8, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001f50:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1f54: 910f0262     	add	x2, x19, #0x3c0
    1f58: 52800400     	mov	w0, #0x20               // =32
    1f5c: f9400101     	ldr	x1, [x8]
		0000000000001f5c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    1f60: 5280fa03     	mov	w3, #0x7d0              // =2000
    1f64: 94000000     	bl	0x1f64 <ram_work_init+0x64>
		0000000000001f64:  R_AARCH64_CALL26	queue_delayed_work_on
    1f68: f9400bf3     	ldr	x19, [sp, #0x10]
    1f6c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1f70: d50323bf     	autiasp
    1f74: d65f03c0     	ret
