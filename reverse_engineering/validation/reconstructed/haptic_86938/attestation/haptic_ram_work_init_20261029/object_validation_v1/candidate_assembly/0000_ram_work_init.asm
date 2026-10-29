
/input/haptic_86938_fn_067_ram_work_init.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <ram_work_init>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: f9000bf3     	str	x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
      18: aa0003f3     	mov	x19, x0
      1c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
      20: 91000021     	add	x1, x1, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
      24: f901e008     	str	x8, [x0, #0x3c0]
      28: 910f2008     	add	x8, x0, #0x3c8
      2c: f901e408     	str	x8, [x0, #0x3c8]
      30: 52a00402     	mov	w2, #0x200000           // =2097152
      34: aa1f03e3     	mov	x3, xzr
      38: f901e808     	str	x8, [x0, #0x3d0]
      3c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	ram_work_routine
      40: 91000108     	add	x8, x8, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	ram_work_routine
      44: f901ec08     	str	x8, [x0, #0x3d8]
      48: 910f8000     	add	x0, x0, #0x3e0
      4c: aa1f03e4     	mov	x4, xzr
      50: 94000000     	bl	0x50 <ram_work_init+0x4c>
		0000000000000050:  R_AARCH64_CALL26	init_timer_key
      54: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
      58: 910f0262     	add	x2, x19, #0x3c0
      5c: 52800400     	mov	w0, #0x20               // =32
      60: f9400101     	ldr	x1, [x8]
		0000000000000060:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
      64: 5280fa03     	mov	w3, #0x7d0              // =2000
      68: 94000000     	bl	0x68 <ram_work_init+0x64>
		0000000000000068:  R_AARCH64_CALL26	queue_delayed_work_on
      6c: f9400bf3     	ldr	x19, [sp, #0x10]
      70: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      74: d50323bf     	autiasp
      78: d65f03c0     	ret
