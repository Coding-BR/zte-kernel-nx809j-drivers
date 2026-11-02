
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000003a8 <aw86320_timecheck_work_init>:
     3a8: b9400c08     	ldr	w8, [x0, #0xc]
     3ac: 7110011f     	cmp	w8, #0x400
     3b0: 5400044b     	b.lt	0x438 <aw86320_timecheck_work_init+0x90>
     3b4: d503233f     	paciasp
     3b8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     3bc: f9000bf3     	str	x19, [sp, #0x10]
     3c0: 910003fd     	mov	x29, sp
     3c4: aa0003f3     	mov	x19, x0
     3c8: 910b2000     	add	x0, x0, #0x2c8
     3cc: 94000000     	bl	0x3cc <aw86320_timecheck_work_init+0x24>
		00000000000003cc:  R_AARCH64_CALL26	cancel_delayed_work_sync
     3d0: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     3d4: 910b4269     	add	x9, x19, #0x2d0
     3d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     3dc: 91000021     	add	x1, x1, #0x0
		00000000000003dc:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     3e0: f9016668     	str	x8, [x19, #0x2c8]
     3e4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003e4:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_timecheck_work_handle
     3e8: 91000108     	add	x8, x8, #0x0
		00000000000003e8:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_timecheck_work_handle
     3ec: 910ba260     	add	x0, x19, #0x2e8
     3f0: 52a00402     	mov	w2, #0x200000           // =2097152
     3f4: aa1f03e3     	mov	x3, xzr
     3f8: aa1f03e4     	mov	x4, xzr
     3fc: f9016a69     	str	x9, [x19, #0x2d0]
     400: f9016e69     	str	x9, [x19, #0x2d8]
     404: f9017268     	str	x8, [x19, #0x2e0]
     408: 94000000     	bl	0x408 <aw86320_timecheck_work_init+0x60>
		0000000000000408:  R_AARCH64_CALL26	init_timer_key
     40c: b9400e60     	ldr	w0, [x19, #0xc]
     410: 94000000     	bl	0x410 <aw86320_timecheck_work_init+0x68>
		0000000000000410:  R_AARCH64_CALL26	__msecs_to_jiffies
     414: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000414:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     418: aa0003e3     	mov	x3, x0
     41c: 910b2262     	add	x2, x19, #0x2c8
     420: f9400101     	ldr	x1, [x8]
		0000000000000420:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     424: 52800400     	mov	w0, #0x20               // =32
     428: 94000000     	bl	0x428 <aw86320_timecheck_work_init+0x80>
		0000000000000428:  R_AARCH64_CALL26	queue_delayed_work_on
     42c: f9400bf3     	ldr	x19, [sp, #0x10]
     430: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     434: d50323bf     	autiasp
     438: d65f03c0     	ret
