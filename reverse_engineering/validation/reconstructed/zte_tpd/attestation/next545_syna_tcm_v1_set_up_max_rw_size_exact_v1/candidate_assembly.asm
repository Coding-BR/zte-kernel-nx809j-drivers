
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000201b8 <syna_tcm_v1_set_up_max_rw_size>:
   201b8: d503233f     	paciasp
   201bc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   201c0: 910003fd     	mov	x29, sp
   201c4: b40003c0     	cbz	x0, 0x2023c <syna_tcm_v1_set_up_max_rw_size+0x84>
   201c8: 39420008     	ldrb	w8, [x0, #0x80]
   201cc: 7100051f     	cmp	w8, #0x1
   201d0: 540003c1     	b.ne	0x20248 <syna_tcm_v1_set_up_max_rw_size+0x90>
   201d4: 79412c09     	ldrh	w9, [x0, #0x96]
   201d8: b9404008     	ldr	w8, [x0, #0x40]
   201dc: 6b01013f     	cmp	w9, w1
   201e0: 54000163     	b.lo	0x2020c <syna_tcm_v1_set_up_max_rw_size+0x54>
   201e4: 6b08013f     	cmp	w9, w8
   201e8: b940380a     	ldr	w10, [x0, #0x38]
   201ec: 1a883129     	csel	w9, w9, w8, lo
   201f0: 6b01013f     	cmp	w9, w1
   201f4: 1a813129     	csel	w9, w9, w1, lo
   201f8: 7100011f     	cmp	w8, #0x0
   201fc: 1a890029     	csel	w9, w1, w9, eq
   20200: 6b09015f     	cmp	w10, w9
   20204: 54000040     	b.eq	0x2020c <syna_tcm_v1_set_up_max_rw_size+0x54>
   20208: b9003809     	str	w9, [x0, #0x38]
   2020c: 34000088     	cbz	w8, 0x2021c <syna_tcm_v1_set_up_max_rw_size+0x64>
   20210: b9404408     	ldr	w8, [x0, #0x44]
   20214: 6b02011f     	cmp	w8, w2
   20218: 1a823102     	csel	w2, w8, w2, lo
   2021c: b9403c08     	ldr	w8, [x0, #0x3c]
   20220: 6b02011f     	cmp	w8, w2
   20224: 54000061     	b.ne	0x20230 <syna_tcm_v1_set_up_max_rw_size+0x78>
   20228: 2a1f03e8     	mov	w8, wzr
   2022c: 1400000d     	b	0x20260 <syna_tcm_v1_set_up_max_rw_size+0xa8>
   20230: 2a1f03e8     	mov	w8, wzr
   20234: b9003c02     	str	w2, [x0, #0x3c]
   20238: 1400000a     	b	0x20260 <syna_tcm_v1_set_up_max_rw_size+0xa8>
   2023c: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x13b8>
		000000000002023c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   20240: 91000000     	add	x0, x0, #0x0
		0000000000020240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   20244: 14000003     	b	0x20250 <syna_tcm_v1_set_up_max_rw_size+0x98>
   20248: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_read_message+0x13b8>
		0000000000020248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x105c6
   2024c: 91000000     	add	x0, x0, #0x0
		000000000002024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x105c6
   20250: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_read_message+0x13b8>
		0000000000020250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8a8
   20254: 91000021     	add	x1, x1, #0x0
		0000000000020254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8a8
   20258: 94000000     	bl	0x20258 <syna_tcm_v1_set_up_max_rw_size+0xa0>
		0000000000020258:  R_AARCH64_CALL26	_printk
   2025c: 12801e08     	mov	w8, #-0xf1              // =-241
   20260: 2a0803e0     	mov	w0, w8
   20264: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   20268: d50323bf     	autiasp
   2026c: d65f03c0     	ret
