
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001957c <tpd_resume_work_init>:
   1957c: d503233f     	paciasp
   19580: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   19584: f9000bf3     	str	x19, [sp, #0x10]
   19588: 910003fd     	mov	x29, sp
   1958c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001958c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   19590: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019590:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17875
   19594: 91000000     	add	x0, x0, #0x0
		0000000000019594:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17875
   19598: f9400113     	ldr	x19, [x8]
		0000000000019598:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1959c: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x32c>
		000000000001959c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17cd6
   195a0: 91000021     	add	x1, x1, #0x0
		00000000000195a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17cd6
   195a4: 94000000     	bl	0x195a4 <tpd_resume_work_init+0x28>
		00000000000195a4:  R_AARCH64_CALL26	_printk
   195a8: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
   195ac: 91272269     	add	x9, x19, #0x9c8
   195b0: 90000001     	adrp	x1, 0x19000 <tp_ghost_check+0x32c>
		00000000000195b0:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
   195b4: 91000021     	add	x1, x1, #0x0
		00000000000195b4:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
   195b8: f904e268     	str	x8, [x19, #0x9c0]
   195bc: 91280260     	add	x0, x19, #0xa00
   195c0: f904e669     	str	x9, [x19, #0x9c8]
   195c4: 52a00402     	mov	w2, #0x200000           // =2097152
   195c8: aa1f03e3     	mov	x3, xzr
   195cc: f904ea69     	str	x9, [x19, #0x9d0]
   195d0: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		00000000000195d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_resume_work
   195d4: 91000129     	add	x9, x9, #0x0
		00000000000195d4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_resume_work
   195d8: f904ee69     	str	x9, [x19, #0x9d8]
   195dc: 9126a269     	add	x9, x19, #0x9a8
   195e0: aa1f03e4     	mov	x4, xzr
   195e4: f904d268     	str	x8, [x19, #0x9a0]
   195e8: f904d669     	str	x9, [x19, #0x9a8]
   195ec: f904da69     	str	x9, [x19, #0x9b0]
   195f0: 90000009     	adrp	x9, 0x19000 <tp_ghost_check+0x32c>
		00000000000195f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_suspend_work
   195f4: 91000129     	add	x9, x9, #0x0
		00000000000195f4:  R_AARCH64_ADD_ABS_LO12_NC	tpd_suspend_work
   195f8: f904f268     	str	x8, [x19, #0x9e0]
   195fc: 9127a268     	add	x8, x19, #0x9e8
   19600: f904de69     	str	x9, [x19, #0x9b8]
   19604: f904f668     	str	x8, [x19, #0x9e8]
   19608: f904fa68     	str	x8, [x19, #0x9f0]
   1960c: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		000000000001960c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_report_lcd_state_work
   19610: 91000108     	add	x8, x8, #0x0
		0000000000019610:  R_AARCH64_ADD_ABS_LO12_NC	ufp_report_lcd_state_work
   19614: f904fe68     	str	x8, [x19, #0x9f8]
   19618: 94000000     	bl	0x19618 <tpd_resume_work_init+0x9c>
		0000000000019618:  R_AARCH64_CALL26	init_timer_key
   1961c: f9400bf3     	ldr	x19, [sp, #0x10]
   19620: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   19624: d50323bf     	autiasp
   19628: d65f03c0     	ret
