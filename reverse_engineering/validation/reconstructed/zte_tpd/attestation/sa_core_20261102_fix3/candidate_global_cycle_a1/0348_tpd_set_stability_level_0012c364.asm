
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c514 <tpd_set_stability_level>:
   1c514: d503233f     	paciasp
   1c518: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c51c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c520: 910003fd     	mov	x29, sp
   1c524: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c528: 2a0103f4     	mov	w20, w1
   1c52c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c52c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c530: 91000000     	add	x0, x0, #0x0
		000000000001c530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c534: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba74
   1c538: 91000021     	add	x1, x1, #0x0
		000000000001c538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba74
   1c53c: 94000000     	bl	0x1c53c <tpd_set_stability_level+0x28>
		000000000001c53c:  R_AARCH64_CALL26	_printk
   1c540: b40002d3     	cbz	x19, 0x1c598 <tpd_set_stability_level+0x84>
   1c544: f9413a69     	ldr	x9, [x19, #0x270]
   1c548: f9400268     	ldr	x8, [x19]
   1c54c: b940b92a     	ldr	w10, [x9, #0xb8]
   1c550: 340000aa     	cbz	w10, 0x1c564 <tpd_set_stability_level+0x50>
   1c554: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c558: 36000069     	tbz	w9, #0x0, 0x1c564 <tpd_set_stability_level+0x50>
   1c55c: 2a1f03e2     	mov	w2, wzr
   1c560: 14000002     	b	0x1c568 <tpd_set_stability_level+0x54>
   1c564: b9420d02     	ldr	w2, [x8, #0x20c]
   1c568: b9457e68     	ldr	w8, [x19, #0x57c]
   1c56c: 7100129f     	cmp	w20, #0x4
   1c570: 52800089     	mov	w9, #0x4                // =4
   1c574: 1a89b281     	csel	w1, w20, w9, lt
   1c578: 7100051f     	cmp	w8, #0x1
   1c57c: b9060661     	str	w1, [x19, #0x604]
   1c580: 54000161     	b.ne	0x1c5ac <tpd_set_stability_level+0x98>
   1c584: aa1303e0     	mov	x0, x19
   1c588: 94000000     	bl	0x1c588 <tpd_set_stability_level+0x74>
		000000000001c588:  R_AARCH64_CALL26	syna_dev_set_stability_level
   1c58c: 37f80160     	tbnz	w0, #0x1f, 0x1c5b8 <tpd_set_stability_level+0xa4>
   1c590: 2a1f03e0     	mov	w0, wzr
   1c594: 14000002     	b	0x1c59c <tpd_set_stability_level+0x88>
   1c598: 128002a0     	mov	w0, #-0x16              // =-22
   1c59c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c5a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c5a4: d50323bf     	autiasp
   1c5a8: d65f03c0     	ret
   1c5ac: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c5ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c5b0: 91000000     	add	x0, x0, #0x0
		000000000001c5b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c5b4: 14000003     	b	0x1c5c0 <tpd_set_stability_level+0xac>
   1c5b8: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c5b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba8c
   1c5bc: 91000000     	add	x0, x0, #0x0
		000000000001c5bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba8c
   1c5c0: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c5c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba74
   1c5c4: 91000021     	add	x1, x1, #0x0
		000000000001c5c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba74
   1c5c8: 94000000     	bl	0x1c5c8 <tpd_set_stability_level+0xb4>
		000000000001c5c8:  R_AARCH64_CALL26	_printk
   1c5cc: 17fffff1     	b	0x1c590 <tpd_set_stability_level+0x7c>
