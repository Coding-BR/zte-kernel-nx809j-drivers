
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026630 <zte_touch_remove>:
   26630: d503233f     	paciasp
   26634: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26638: 910003fd     	mov	x29, sp
   2663c: 90000000     	adrp	x0, 0x26000 <get_tp_noise_store+0x3c>
		000000000002663c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7566
   26640: 91000000     	add	x0, x0, #0x0
		0000000000026640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7566
   26644: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d34
   26648: 91000021     	add	x1, x1, #0x0
		0000000000026648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d34
   2664c: 52816ae2     	mov	w2, #0xb57              // =2903
   26650: 94000000     	bl	0x26650 <zte_touch_remove+0x20>
		0000000000026650:  R_AARCH64_CALL26	_printk
   26654: 94001291     	bl	0x2b098 <zte_touch_probe+0x323c>
		0000000000026654:  R_AARCH64_CALL26	zte_touch_deinit
   26658: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2665c: d50323bf     	autiasp
   26660: d65f03c0     	ret
