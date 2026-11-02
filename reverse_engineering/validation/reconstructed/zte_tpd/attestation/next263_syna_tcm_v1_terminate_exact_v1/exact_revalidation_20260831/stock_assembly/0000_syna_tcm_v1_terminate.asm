
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a5dc <syna_tcm_v1_terminate>:
   1a5dc: d503233f     	paciasp
   1a5e0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1a5e4: f9000bf3     	str	x19, [sp, #0x10]
   1a5e8: 910003fd     	mov	x29, sp
   1a5ec: b4000100     	cbz	x0, 0x1a60c <syna_tcm_v1_terminate+0x30>
   1a5f0: b941f808     	ldr	w8, [x0, #0x1f8]
   1a5f4: 7100051f     	cmp	w8, #0x1
   1a5f8: 54000160     	b.eq	0x1a624 <syna_tcm_v1_terminate+0x48>
   1a5fc: f9400bf3     	ldr	x19, [sp, #0x10]
   1a600: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1a604: d50323bf     	autiasp
   1a608: d65f03c0     	ret
   1a60c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a60c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1a610: 91000000     	add	x0, x0, #0x0
		000000000001a610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1a614: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa818
   1a618: 91000021     	add	x1, x1, #0x0
		000000000001a618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa818
   1a61c: 94000000     	bl	0x1a61c <syna_tcm_v1_terminate+0x40>
		000000000001a61c:  R_AARCH64_CALL26	_printk
   1a620: 17fffff7     	b	0x1a5fc <syna_tcm_v1_terminate+0x20>
   1a624: 3947f002     	ldrb	w2, [x0, #0x1fc]
   1a628: 90000008     	adrp	x8, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa175
   1a62c: 91000108     	add	x8, x8, #0x0
		000000000001a62c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa175
   1a630: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa818
   1a634: 91000021     	add	x1, x1, #0x0
		000000000001a634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa818
   1a638: aa0003f3     	mov	x19, x0
   1a63c: aa0803e0     	mov	x0, x8
   1a640: 94000000     	bl	0x1a640 <syna_tcm_v1_terminate+0x64>
		000000000001a640:  R_AARCH64_CALL26	_printk
   1a644: 52800048     	mov	w8, #0x2                // =2
   1a648: 91088260     	add	x0, x19, #0x220
   1a64c: b901fa68     	str	w8, [x19, #0x1f8]
   1a650: 94000000     	bl	0x1a650 <syna_tcm_v1_terminate+0x74>
		000000000001a650:  R_AARCH64_CALL26	completion_done
   1a654: 3707fd40     	tbnz	w0, #0x0, 0x1a5fc <syna_tcm_v1_terminate+0x20>
   1a658: 91088260     	add	x0, x19, #0x220
   1a65c: 94000000     	bl	0x1a65c <syna_tcm_v1_terminate+0x80>
		000000000001a65c:  R_AARCH64_CALL26	complete
   1a660: 17ffffe7     	b	0x1a5fc <syna_tcm_v1_terminate+0x20>
