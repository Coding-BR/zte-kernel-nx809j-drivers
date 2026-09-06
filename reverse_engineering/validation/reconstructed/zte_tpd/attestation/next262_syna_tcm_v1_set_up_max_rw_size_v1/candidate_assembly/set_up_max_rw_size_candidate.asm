
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b1dc <syna_tcm_v1_set_up_max_rw_size>:
   1b1dc: d503233f     	paciasp
   1b1e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1b1e4: 910003fd     	mov	x29, sp
   1b1e8: b40003c0     	cbz	x0, 0x1b260 <syna_tcm_v1_set_up_max_rw_size+0x84>
   1b1ec: 39420008     	ldrb	w8, [x0, #0x80]
   1b1f0: 7100051f     	cmp	w8, #0x1
   1b1f4: 540003c1     	b.ne	0x1b26c <syna_tcm_v1_set_up_max_rw_size+0x90>
   1b1f8: 79412c09     	ldrh	w9, [x0, #0x96]
   1b1fc: b9404008     	ldr	w8, [x0, #0x40]
   1b200: 6b01013f     	cmp	w9, w1
   1b204: 54000163     	b.lo	0x1b230 <syna_tcm_v1_set_up_max_rw_size+0x54>
   1b208: 6b08013f     	cmp	w9, w8
   1b20c: b940380a     	ldr	w10, [x0, #0x38]
   1b210: 1a883129     	csel	w9, w9, w8, lo
   1b214: 6b01013f     	cmp	w9, w1
   1b218: 1a813129     	csel	w9, w9, w1, lo
   1b21c: 7100011f     	cmp	w8, #0x0
   1b220: 1a890029     	csel	w9, w1, w9, eq
   1b224: 6b09015f     	cmp	w10, w9
   1b228: 54000040     	b.eq	0x1b230 <syna_tcm_v1_set_up_max_rw_size+0x54>
   1b22c: b9003809     	str	w9, [x0, #0x38]
   1b230: 34000088     	cbz	w8, 0x1b240 <syna_tcm_v1_set_up_max_rw_size+0x64>
   1b234: b9404408     	ldr	w8, [x0, #0x44]
   1b238: 6b02011f     	cmp	w8, w2
   1b23c: 1a823102     	csel	w2, w8, w2, lo
   1b240: b9403c08     	ldr	w8, [x0, #0x3c]
   1b244: 6b02011f     	cmp	w8, w2
   1b248: 54000061     	b.ne	0x1b254 <syna_tcm_v1_set_up_max_rw_size+0x78>
   1b24c: 2a1f03e8     	mov	w8, wzr
   1b250: 1400000d     	b	0x1b284 <syna_tcm_v1_set_up_max_rw_size+0xa8>
   1b254: 2a1f03e8     	mov	w8, wzr
   1b258: b9003c02     	str	w2, [x0, #0x3c]
   1b25c: 1400000a     	b	0x1b284 <syna_tcm_v1_set_up_max_rw_size+0xa8>
   1b260: 90000000     	adrp	x0, 0x1b000 <syna_tcm_v1_read_message+0x1414>
		000000000001b260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
   1b264: 91000000     	add	x0, x0, #0x0
		000000000001b264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
   1b268: 14000003     	b	0x1b274 <syna_tcm_v1_set_up_max_rw_size+0x98>
   1b26c: 90000000     	adrp	x0, 0x1b000 <syna_tcm_v1_read_message+0x1414>
		000000000001b26c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23b2
   1b270: 91000000     	add	x0, x0, #0x0
		000000000001b270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23b2
   1b274: 90000001     	adrp	x1, 0x1b000 <syna_tcm_v1_read_message+0x1414>
		000000000001b274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1947
   1b278: 91000021     	add	x1, x1, #0x0
		000000000001b278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1947
   1b27c: 94000000     	bl	0x1b27c <syna_tcm_v1_set_up_max_rw_size+0xa0>
		000000000001b27c:  R_AARCH64_CALL26	_printk
   1b280: 12801e08     	mov	w8, #-0xf1              // =-241
   1b284: 2a0803e0     	mov	w0, w8
   1b288: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1b28c: d50323bf     	autiasp
   1b290: d65f03c0     	ret
