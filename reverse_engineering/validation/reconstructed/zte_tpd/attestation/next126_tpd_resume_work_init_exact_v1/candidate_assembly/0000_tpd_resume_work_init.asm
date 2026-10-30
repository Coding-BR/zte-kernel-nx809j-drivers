
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f3e0 <tpd_resume_work_init>:
   1f3e0: d503233f     	paciasp
   1f3e4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1f3e8: f9000bf3     	str	x19, [sp, #0x10]
   1f3ec: 910003fd     	mov	x29, sp
   1f3f0: 90000008     	adrp	x8, 0x1f000 <tp_ghost_check+0x4c8>
		000000000001f3f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1f3f4: 90000000     	adrp	x0, 0x1f000 <tp_ghost_check+0x4c8>
		000000000001f3f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1798b
   1f3f8: 91000000     	add	x0, x0, #0x0
		000000000001f3f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1798b
   1f3fc: f9400113     	ldr	x19, [x8]
		000000000001f3fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1f400: 90000001     	adrp	x1, 0x1f000 <tp_ghost_check+0x4c8>
		000000000001f400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f49
   1f404: 91000021     	add	x1, x1, #0x0
		000000000001f404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f49
   1f408: 94000000     	bl	0x1f408 <tpd_resume_work_init+0x28>
		000000000001f408:  R_AARCH64_CALL26	_printk
   1f40c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   1f410: 91272269     	add	x9, x19, #0x9c8
   1f414: 90000001     	adrp	x1, 0x1f000 <tp_ghost_check+0x4c8>
		000000000001f414:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   1f418: 91000021     	add	x1, x1, #0x0
		000000000001f418:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   1f41c: f904e268     	str	x8, [x19, #0x9c0]
   1f420: 91280260     	add	x0, x19, #0xa00
   1f424: f904e669     	str	x9, [x19, #0x9c8]
   1f428: 52a00402     	mov	w2, #0x200000           // =2097152
   1f42c: aa1f03e3     	mov	x3, xzr
   1f430: f904ea69     	str	x9, [x19, #0x9d0]
   1f434: 90000009     	adrp	x9, 0x1f000 <tp_ghost_check+0x4c8>
		000000000001f434:  R_AARCH64_ADR_PREL_PG_HI21	tpd_resume_work
   1f438: 91000129     	add	x9, x9, #0x0
		000000000001f438:  R_AARCH64_ADD_ABS_LO12_NC	tpd_resume_work
   1f43c: f904ee69     	str	x9, [x19, #0x9d8]
   1f440: 9126a269     	add	x9, x19, #0x9a8
   1f444: aa1f03e4     	mov	x4, xzr
   1f448: f904d268     	str	x8, [x19, #0x9a0]
   1f44c: f904d669     	str	x9, [x19, #0x9a8]
   1f450: f904da69     	str	x9, [x19, #0x9b0]
   1f454: 90000009     	adrp	x9, 0x1f000 <tp_ghost_check+0x4c8>
		000000000001f454:  R_AARCH64_ADR_PREL_PG_HI21	tpd_suspend_work
   1f458: 91000129     	add	x9, x9, #0x0
		000000000001f458:  R_AARCH64_ADD_ABS_LO12_NC	tpd_suspend_work
   1f45c: f904f268     	str	x8, [x19, #0x9e0]
   1f460: 9127a268     	add	x8, x19, #0x9e8
   1f464: f904de69     	str	x9, [x19, #0x9b8]
   1f468: f904f668     	str	x8, [x19, #0x9e8]
   1f46c: f904fa68     	str	x8, [x19, #0x9f0]
   1f470: 90000008     	adrp	x8, 0x1f000 <tp_ghost_check+0x4c8>
		000000000001f470:  R_AARCH64_ADR_PREL_PG_HI21	ufp_report_lcd_state_work
   1f474: 91000108     	add	x8, x8, #0x0
		000000000001f474:  R_AARCH64_ADD_ABS_LO12_NC	ufp_report_lcd_state_work
   1f478: f904fe68     	str	x8, [x19, #0x9f8]
   1f47c: 94000000     	bl	0x1f47c <tpd_resume_work_init+0x9c>
		000000000001f47c:  R_AARCH64_CALL26	init_timer_key
   1f480: f9400bf3     	ldr	x19, [sp, #0x10]
   1f484: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1f488: d50323bf     	autiasp
   1f48c: d65f03c0     	ret
