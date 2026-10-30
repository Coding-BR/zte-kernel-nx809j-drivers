
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a520 <syna_tcm_v1_set_up_max_rw_size>:
   1a520: d503233f     	paciasp
   1a524: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1a528: 910003fd     	mov	x29, sp
   1a52c: b40003c0     	cbz	x0, 0x1a5a4 <syna_tcm_v1_set_up_max_rw_size+0x84>
   1a530: 39420008     	ldrb	w8, [x0, #0x80]
   1a534: 7100051f     	cmp	w8, #0x1
   1a538: 540003c1     	b.ne	0x1a5b0 <syna_tcm_v1_set_up_max_rw_size+0x90>
   1a53c: 79412c09     	ldrh	w9, [x0, #0x96]
   1a540: b9404008     	ldr	w8, [x0, #0x40]
   1a544: 6b01013f     	cmp	w9, w1
   1a548: 54000163     	b.lo	0x1a574 <syna_tcm_v1_set_up_max_rw_size+0x54>
   1a54c: 6b08013f     	cmp	w9, w8
   1a550: b940380a     	ldr	w10, [x0, #0x38]
   1a554: 1a883129     	csel	w9, w9, w8, lo
   1a558: 6b01013f     	cmp	w9, w1
   1a55c: 1a813129     	csel	w9, w9, w1, lo
   1a560: 7100011f     	cmp	w8, #0x0
   1a564: 1a890029     	csel	w9, w1, w9, eq
   1a568: 6b09015f     	cmp	w10, w9
   1a56c: 54000040     	b.eq	0x1a574 <syna_tcm_v1_set_up_max_rw_size+0x54>
   1a570: b9003809     	str	w9, [x0, #0x38]
   1a574: 34000088     	cbz	w8, 0x1a584 <syna_tcm_v1_set_up_max_rw_size+0x64>
   1a578: b9404408     	ldr	w8, [x0, #0x44]
   1a57c: 6b02011f     	cmp	w8, w2
   1a580: 1a823102     	csel	w2, w8, w2, lo
   1a584: b9403c08     	ldr	w8, [x0, #0x3c]
   1a588: 6b02011f     	cmp	w8, w2
   1a58c: 54000061     	b.ne	0x1a598 <syna_tcm_v1_set_up_max_rw_size+0x78>
   1a590: 2a1f03e8     	mov	w8, wzr
   1a594: 1400000d     	b	0x1a5c8 <syna_tcm_v1_set_up_max_rw_size+0xa8>
   1a598: 2a1f03e8     	mov	w8, wzr
   1a59c: b9003c02     	str	w2, [x0, #0x3c]
   1a5a0: 1400000a     	b	0x1a5c8 <syna_tcm_v1_set_up_max_rw_size+0xa8>
   1a5a4: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a5a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1a5a8: 91000000     	add	x0, x0, #0x0
		000000000001a5a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1a5ac: 14000003     	b	0x1a5b8 <syna_tcm_v1_set_up_max_rw_size+0x98>
   1a5b0: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a5b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57b9
   1a5b4: 91000000     	add	x0, x0, #0x0
		000000000001a5b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57b9
   1a5b8: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a5b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3afd
   1a5bc: 91000021     	add	x1, x1, #0x0
		000000000001a5bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3afd
   1a5c0: 94000000     	bl	0x1a5c0 <syna_tcm_v1_set_up_max_rw_size+0xa0>
		000000000001a5c0:  R_AARCH64_CALL26	_printk
   1a5c4: 12801e08     	mov	w8, #-0xf1              // =-241
   1a5c8: 2a0803e0     	mov	w0, w8
   1a5cc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1a5d0: d50323bf     	autiasp
   1a5d4: d65f03c0     	ret
