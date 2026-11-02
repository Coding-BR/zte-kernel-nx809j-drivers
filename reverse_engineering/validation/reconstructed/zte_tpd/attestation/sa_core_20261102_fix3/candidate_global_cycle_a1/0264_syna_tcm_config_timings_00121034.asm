
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012198 <syna_tcm_config_timings>:
   12198: b5000081     	cbnz	x1, 0x121a8 <syna_tcm_config_timings+0x10>
   1219c: 529fffe8     	mov	w8, #0xffff             // =65535
   121a0: 6b08007f     	cmp	w3, w8
   121a4: 54000580     	b.eq	0x12254 <syna_tcm_config_timings+0xbc>
   121a8: b4000101     	cbz	x1, 0x121c8 <syna_tcm_config_timings+0x30>
   121ac: 361000e3     	tbz	w3, #0x2, 0x121c8 <syna_tcm_config_timings+0x30>
   121b0: b9400828     	ldr	w8, [x1, #0x8]
   121b4: 34000048     	cbz	w8, 0x121bc <syna_tcm_config_timings+0x24>
   121b8: b9021008     	str	w8, [x0, #0x210]
   121bc: b9400c22     	ldr	w2, [x1, #0xc]
   121c0: 34000042     	cbz	w2, 0x121c8 <syna_tcm_config_timings+0x30>
   121c4: b9021402     	str	w2, [x0, #0x214]
   121c8: 360000e3     	tbz	w3, #0x0, 0x121e4 <syna_tcm_config_timings+0x4c>
   121cc: b4000081     	cbz	x1, 0x121dc <syna_tcm_config_timings+0x44>
   121d0: b9400028     	ldr	w8, [x1]
   121d4: 7100011f     	cmp	w8, #0x0
   121d8: 1a880042     	csel	w2, w2, w8, eq
   121dc: 34000042     	cbz	w2, 0x121e4 <syna_tcm_config_timings+0x4c>
   121e0: b9020802     	str	w2, [x0, #0x208]
   121e4: 360800e3     	tbz	w3, #0x1, 0x12200 <syna_tcm_config_timings+0x68>
   121e8: b4000081     	cbz	x1, 0x121f8 <syna_tcm_config_timings+0x60>
   121ec: b9400428     	ldr	w8, [x1, #0x4]
   121f0: 7100011f     	cmp	w8, #0x0
   121f4: 1a880042     	csel	w2, w2, w8, eq
   121f8: 34000042     	cbz	w2, 0x12200 <syna_tcm_config_timings+0x68>
   121fc: b9020c02     	str	w2, [x0, #0x20c]
   12200: b40000a1     	cbz	x1, 0x12214 <syna_tcm_config_timings+0x7c>
   12204: 36180083     	tbz	w3, #0x3, 0x12214 <syna_tcm_config_timings+0x7c>
   12208: b9401022     	ldr	w2, [x1, #0x10]
   1220c: 34000042     	cbz	w2, 0x12214 <syna_tcm_config_timings+0x7c>
   12210: b9021802     	str	w2, [x0, #0x218]
   12214: 364000e3     	tbz	w3, #0x8, 0x12230 <syna_tcm_config_timings+0x98>
   12218: b4000081     	cbz	x1, 0x12228 <syna_tcm_config_timings+0x90>
   1221c: b9402028     	ldr	w8, [x1, #0x20]
   12220: 7100011f     	cmp	w8, #0x0
   12224: 1a880042     	csel	w2, w2, w8, eq
   12228: 34000042     	cbz	w2, 0x12230 <syna_tcm_config_timings+0x98>
   1222c: b901e802     	str	w2, [x0, #0x1e8]
   12230: 364800e3     	tbz	w3, #0x9, 0x1224c <syna_tcm_config_timings+0xb4>
   12234: b4000081     	cbz	x1, 0x12244 <syna_tcm_config_timings+0xac>
   12238: b9402428     	ldr	w8, [x1, #0x24]
   1223c: 7100011f     	cmp	w8, #0x0
   12240: 1a880042     	csel	w2, w2, w8, eq
   12244: 34000042     	cbz	w2, 0x1224c <syna_tcm_config_timings+0xb4>
   12248: b901ec02     	str	w2, [x0, #0x1ec]
   1224c: 2a1f03e0     	mov	w0, wzr
   12250: d65f03c0     	ret
   12254: d503233f     	paciasp
   12258: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1225c: 910003fd     	mov	x29, sp
   12260: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb256
   12264: 91000000     	add	x0, x0, #0x0
		0000000000012264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb256
   12268: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bf6
   1226c: 91000021     	add	x1, x1, #0x0
		000000000001226c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bf6
   12270: 94000000     	bl	0x12270 <syna_tcm_config_timings+0xd8>
		0000000000012270:  R_AARCH64_CALL26	_printk
   12274: 12801e00     	mov	w0, #-0xf1              // =-241
   12278: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1227c: d50323bf     	autiasp
   12280: d65f03c0     	ret
