
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011f98 <syna_tcm_v1_set_up_max_rw_size>:
   11f98: d503233f     	paciasp
   11f9c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   11fa0: 910003fd     	mov	x29, sp
   11fa4: b40003c0     	cbz	x0, 0x1201c <syna_tcm_v1_set_up_max_rw_size+0x84>
   11fa8: 39420008     	ldrb	w8, [x0, #0x80]
   11fac: 7100051f     	cmp	w8, #0x1
   11fb0: 540003c1     	b.ne	0x12028 <syna_tcm_v1_set_up_max_rw_size+0x90>
   11fb4: 79412c09     	ldrh	w9, [x0, #0x96]
   11fb8: b9404008     	ldr	w8, [x0, #0x40]
   11fbc: 6b01013f     	cmp	w9, w1
   11fc0: 54000163     	b.lo	0x11fec <syna_tcm_v1_set_up_max_rw_size+0x54>
   11fc4: 6b08013f     	cmp	w9, w8
   11fc8: b940380a     	ldr	w10, [x0, #0x38]
   11fcc: 1a883129     	csel	w9, w9, w8, lo
   11fd0: 6b01013f     	cmp	w9, w1
   11fd4: 1a813129     	csel	w9, w9, w1, lo
   11fd8: 7100011f     	cmp	w8, #0x0
   11fdc: 1a890029     	csel	w9, w1, w9, eq
   11fe0: 6b09015f     	cmp	w10, w9
   11fe4: 54000040     	b.eq	0x11fec <syna_tcm_v1_set_up_max_rw_size+0x54>
   11fe8: b9003809     	str	w9, [x0, #0x38]
   11fec: 34000088     	cbz	w8, 0x11ffc <syna_tcm_v1_set_up_max_rw_size+0x64>
   11ff0: b9404408     	ldr	w8, [x0, #0x44]
   11ff4: 6b02011f     	cmp	w8, w2
   11ff8: 1a823102     	csel	w2, w8, w2, lo
   11ffc: b9403c08     	ldr	w8, [x0, #0x3c]
   12000: 6b02011f     	cmp	w8, w2
   12004: 54000061     	b.ne	0x12010 <syna_tcm_v1_set_up_max_rw_size+0x78>
   12008: 2a1f03e8     	mov	w8, wzr
   1200c: 1400000d     	b	0x12040 <syna_tcm_v1_set_up_max_rw_size+0xa8>
   12010: 2a1f03e8     	mov	w8, wzr
   12014: b9003c02     	str	w2, [x0, #0x3c]
   12018: 1400000a     	b	0x12040 <syna_tcm_v1_set_up_max_rw_size+0xa8>
   1201c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		000000000001201c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   12020: 91000000     	add	x0, x0, #0x0
		0000000000012020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   12024: 14000003     	b	0x12030 <syna_tcm_v1_set_up_max_rw_size+0x98>
   12028: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58f4
   1202c: 91000000     	add	x0, x0, #0x0
		000000000001202c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58f4
   12030: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bd6
   12034: 91000021     	add	x1, x1, #0x0
		0000000000012034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bd6
   12038: 94000000     	bl	0x12038 <syna_tcm_v1_set_up_max_rw_size+0xa0>
		0000000000012038:  R_AARCH64_CALL26	_printk
   1203c: 12801e08     	mov	w8, #-0xf1              // =-241
   12040: 2a0803e0     	mov	w0, w8
   12044: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   12048: d50323bf     	autiasp
   1204c: d65f03c0     	ret
