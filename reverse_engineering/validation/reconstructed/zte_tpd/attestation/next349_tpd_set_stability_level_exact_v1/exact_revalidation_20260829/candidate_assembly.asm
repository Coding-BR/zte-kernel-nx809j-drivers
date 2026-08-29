
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c4b8 <tpd_set_stability_level>:
   1c4b8: d503233f     	paciasp
   1c4bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c4c0: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c4c4: 910003fd     	mov	x29, sp
   1c4c8: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c4cc: 2a0103f4     	mov	w20, w1
   1c4d0: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c4d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c4d4: 91000000     	add	x0, x0, #0x0
		000000000001c4d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c4d8: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c4d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba74
   1c4dc: 91000021     	add	x1, x1, #0x0
		000000000001c4dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba74
   1c4e0: 94000000     	bl	0x1c4e0 <tpd_set_stability_level+0x28>
		000000000001c4e0:  R_AARCH64_CALL26	_printk
   1c4e4: b40002d3     	cbz	x19, 0x1c53c <tpd_set_stability_level+0x84>
   1c4e8: f9413a69     	ldr	x9, [x19, #0x270]
   1c4ec: f9400268     	ldr	x8, [x19]
   1c4f0: b940b92a     	ldr	w10, [x9, #0xb8]
   1c4f4: 340000aa     	cbz	w10, 0x1c508 <tpd_set_stability_level+0x50>
   1c4f8: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c4fc: 36000069     	tbz	w9, #0x0, 0x1c508 <tpd_set_stability_level+0x50>
   1c500: 2a1f03e2     	mov	w2, wzr
   1c504: 14000002     	b	0x1c50c <tpd_set_stability_level+0x54>
   1c508: b9420d02     	ldr	w2, [x8, #0x20c]
   1c50c: b9457e68     	ldr	w8, [x19, #0x57c]
   1c510: 7100129f     	cmp	w20, #0x4
   1c514: 52800089     	mov	w9, #0x4                // =4
   1c518: 1a89b281     	csel	w1, w20, w9, lt
   1c51c: 7100051f     	cmp	w8, #0x1
   1c520: b9060661     	str	w1, [x19, #0x604]
   1c524: 54000161     	b.ne	0x1c550 <tpd_set_stability_level+0x98>
   1c528: aa1303e0     	mov	x0, x19
   1c52c: 94000000     	bl	0x1c52c <tpd_set_stability_level+0x74>
		000000000001c52c:  R_AARCH64_CALL26	syna_dev_set_stability_level
   1c530: 37f80160     	tbnz	w0, #0x1f, 0x1c55c <tpd_set_stability_level+0xa4>
   1c534: 2a1f03e0     	mov	w0, wzr
   1c538: 14000002     	b	0x1c540 <tpd_set_stability_level+0x88>
   1c53c: 128002a0     	mov	w0, #-0x16              // =-22
   1c540: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c544: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c548: d50323bf     	autiasp
   1c54c: d65f03c0     	ret
   1c550: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c554: 91000000     	add	x0, x0, #0x0
		000000000001c554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c558: 14000003     	b	0x1c564 <tpd_set_stability_level+0xac>
   1c55c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c55c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba8c
   1c560: 91000000     	add	x0, x0, #0x0
		000000000001c560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba8c
   1c564: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba74
   1c568: 91000021     	add	x1, x1, #0x0
		000000000001c568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba74
   1c56c: 94000000     	bl	0x1c56c <tpd_set_stability_level+0xb4>
		000000000001c56c:  R_AARCH64_CALL26	_printk
   1c570: 17fffff1     	b	0x1c534 <tpd_set_stability_level+0x7c>
