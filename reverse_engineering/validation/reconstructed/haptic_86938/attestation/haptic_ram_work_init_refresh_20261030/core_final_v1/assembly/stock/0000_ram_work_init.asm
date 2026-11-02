
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005a5c <ram_work_init>:
    5a5c: d503233f     	paciasp
    5a60: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    5a64: f9000bf3     	str	x19, [sp, #0x10]
    5a68: 910003fd     	mov	x29, sp
    5a6c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    5a70: aa0003f3     	mov	x19, x0
    5a74: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005a74:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    5a78: 91000021     	add	x1, x1, #0x0
		0000000000005a78:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    5a7c: f901e008     	str	x8, [x0, #0x3c0]
    5a80: 910f2008     	add	x8, x0, #0x3c8
    5a84: f901e408     	str	x8, [x0, #0x3c8]
    5a88: 52a00402     	mov	w2, #0x200000           // =2097152
    5a8c: aa1f03e3     	mov	x3, xzr
    5a90: f901e808     	str	x8, [x0, #0x3d0]
    5a94: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005a94:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xb370
    5a98: 91000108     	add	x8, x8, #0x0
		0000000000005a98:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xb370
    5a9c: f901ec08     	str	x8, [x0, #0x3d8]
    5aa0: 910f8000     	add	x0, x0, #0x3e0
    5aa4: aa1f03e4     	mov	x4, xzr
    5aa8: 94000000     	bl	0x5aa8 <ram_work_init+0x4c>
		0000000000005aa8:  R_AARCH64_CALL26	init_timer_key
    5aac: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005aac:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    5ab0: 910f0262     	add	x2, x19, #0x3c0
    5ab4: 52800400     	mov	w0, #0x20               // =32
    5ab8: f9400101     	ldr	x1, [x8]
		0000000000005ab8:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    5abc: 5280fa03     	mov	w3, #0x7d0              // =2000
    5ac0: 94000000     	bl	0x5ac0 <ram_work_init+0x64>
		0000000000005ac0:  R_AARCH64_CALL26	queue_delayed_work_on
    5ac4: f9400bf3     	ldr	x19, [sp, #0x10]
    5ac8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    5acc: d50323bf     	autiasp
    5ad0: d65f03c0     	ret
