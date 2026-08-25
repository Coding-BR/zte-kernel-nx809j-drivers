
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a7ac <syna_tcm_config_timings>:
   1a7ac: b5000081     	cbnz	x1, 0x1a7bc <syna_tcm_config_timings+0x10>
   1a7b0: 529fffe8     	mov	w8, #0xffff             // =65535
   1a7b4: 6b08007f     	cmp	w3, w8
   1a7b8: 54000580     	b.eq	0x1a868 <syna_tcm_config_timings+0xbc>
   1a7bc: b4000101     	cbz	x1, 0x1a7dc <syna_tcm_config_timings+0x30>
   1a7c0: 361000e3     	tbz	w3, #0x2, 0x1a7dc <syna_tcm_config_timings+0x30>
   1a7c4: b9400828     	ldr	w8, [x1, #0x8]
   1a7c8: 34000048     	cbz	w8, 0x1a7d0 <syna_tcm_config_timings+0x24>
   1a7cc: b9021008     	str	w8, [x0, #0x210]
   1a7d0: b9400c22     	ldr	w2, [x1, #0xc]
   1a7d4: 34000042     	cbz	w2, 0x1a7dc <syna_tcm_config_timings+0x30>
   1a7d8: b9021402     	str	w2, [x0, #0x214]
   1a7dc: 360000e3     	tbz	w3, #0x0, 0x1a7f8 <syna_tcm_config_timings+0x4c>
   1a7e0: b4000081     	cbz	x1, 0x1a7f0 <syna_tcm_config_timings+0x44>
   1a7e4: b9400028     	ldr	w8, [x1]
   1a7e8: 7100011f     	cmp	w8, #0x0
   1a7ec: 1a880042     	csel	w2, w2, w8, eq
   1a7f0: 34000042     	cbz	w2, 0x1a7f8 <syna_tcm_config_timings+0x4c>
   1a7f4: b9020802     	str	w2, [x0, #0x208]
   1a7f8: 360800e3     	tbz	w3, #0x1, 0x1a814 <syna_tcm_config_timings+0x68>
   1a7fc: b4000081     	cbz	x1, 0x1a80c <syna_tcm_config_timings+0x60>
   1a800: b9400428     	ldr	w8, [x1, #0x4]
   1a804: 7100011f     	cmp	w8, #0x0
   1a808: 1a880042     	csel	w2, w2, w8, eq
   1a80c: 34000042     	cbz	w2, 0x1a814 <syna_tcm_config_timings+0x68>
   1a810: b9020c02     	str	w2, [x0, #0x20c]
   1a814: b40000a1     	cbz	x1, 0x1a828 <syna_tcm_config_timings+0x7c>
   1a818: 36180083     	tbz	w3, #0x3, 0x1a828 <syna_tcm_config_timings+0x7c>
   1a81c: b9401022     	ldr	w2, [x1, #0x10]
   1a820: 34000042     	cbz	w2, 0x1a828 <syna_tcm_config_timings+0x7c>
   1a824: b9021802     	str	w2, [x0, #0x218]
   1a828: 364000e3     	tbz	w3, #0x8, 0x1a844 <syna_tcm_config_timings+0x98>
   1a82c: b4000081     	cbz	x1, 0x1a83c <syna_tcm_config_timings+0x90>
   1a830: b9402028     	ldr	w8, [x1, #0x20]
   1a834: 7100011f     	cmp	w8, #0x0
   1a838: 1a880042     	csel	w2, w2, w8, eq
   1a83c: 34000042     	cbz	w2, 0x1a844 <syna_tcm_config_timings+0x98>
   1a840: b901e802     	str	w2, [x0, #0x1e8]
   1a844: 364800e3     	tbz	w3, #0x9, 0x1a860 <syna_tcm_config_timings+0xb4>
   1a848: b4000081     	cbz	x1, 0x1a858 <syna_tcm_config_timings+0xac>
   1a84c: b9402428     	ldr	w8, [x1, #0x24]
   1a850: 7100011f     	cmp	w8, #0x0
   1a854: 1a880042     	csel	w2, w2, w8, eq
   1a858: 34000042     	cbz	w2, 0x1a860 <syna_tcm_config_timings+0xb4>
   1a85c: b901ec02     	str	w2, [x0, #0x1ec]
   1a860: 2a1f03e0     	mov	w0, wzr
   1a864: d65f03c0     	ret
   1a868: d503233f     	paciasp
   1a86c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1a870: 910003fd     	mov	x29, sp
   1a874: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafa7
   1a878: 91000000     	add	x0, x0, #0x0
		000000000001a878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafa7
   1a87c: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a87c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b1c
   1a880: 91000021     	add	x1, x1, #0x0
		000000000001a880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b1c
   1a884: 94000000     	bl	0x1a884 <syna_tcm_config_timings+0xd8>
		000000000001a884:  R_AARCH64_CALL26	_printk
   1a888: 12801e00     	mov	w0, #-0xf1              // =-241
   1a88c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1a890: d50323bf     	autiasp
   1a894: d65f03c0     	ret
