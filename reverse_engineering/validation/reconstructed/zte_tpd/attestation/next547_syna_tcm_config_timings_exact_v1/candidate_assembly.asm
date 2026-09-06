
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020170 <syna_tcm_config_timings>:
   20170: b5000081     	cbnz	x1, 0x20180 <syna_tcm_config_timings+0x10>
   20174: 529fffe8     	mov	w8, #0xffff             // =65535
   20178: 6b08007f     	cmp	w3, w8
   2017c: 54000580     	b.eq	0x2022c <syna_tcm_config_timings+0xbc>
   20180: b4000101     	cbz	x1, 0x201a0 <syna_tcm_config_timings+0x30>
   20184: 361000e3     	tbz	w3, #0x2, 0x201a0 <syna_tcm_config_timings+0x30>
   20188: b9400828     	ldr	w8, [x1, #0x8]
   2018c: 34000048     	cbz	w8, 0x20194 <syna_tcm_config_timings+0x24>
   20190: b9021008     	str	w8, [x0, #0x210]
   20194: b9400c22     	ldr	w2, [x1, #0xc]
   20198: 34000042     	cbz	w2, 0x201a0 <syna_tcm_config_timings+0x30>
   2019c: b9021402     	str	w2, [x0, #0x214]
   201a0: 360000e3     	tbz	w3, #0x0, 0x201bc <syna_tcm_config_timings+0x4c>
   201a4: b4000081     	cbz	x1, 0x201b4 <syna_tcm_config_timings+0x44>
   201a8: b9400028     	ldr	w8, [x1]
   201ac: 7100011f     	cmp	w8, #0x0
   201b0: 1a880042     	csel	w2, w2, w8, eq
   201b4: 34000042     	cbz	w2, 0x201bc <syna_tcm_config_timings+0x4c>
   201b8: b9020802     	str	w2, [x0, #0x208]
   201bc: 360800e3     	tbz	w3, #0x1, 0x201d8 <syna_tcm_config_timings+0x68>
   201c0: b4000081     	cbz	x1, 0x201d0 <syna_tcm_config_timings+0x60>
   201c4: b9400428     	ldr	w8, [x1, #0x4]
   201c8: 7100011f     	cmp	w8, #0x0
   201cc: 1a880042     	csel	w2, w2, w8, eq
   201d0: 34000042     	cbz	w2, 0x201d8 <syna_tcm_config_timings+0x68>
   201d4: b9020c02     	str	w2, [x0, #0x20c]
   201d8: b40000a1     	cbz	x1, 0x201ec <syna_tcm_config_timings+0x7c>
   201dc: 36180083     	tbz	w3, #0x3, 0x201ec <syna_tcm_config_timings+0x7c>
   201e0: b9401022     	ldr	w2, [x1, #0x10]
   201e4: 34000042     	cbz	w2, 0x201ec <syna_tcm_config_timings+0x7c>
   201e8: b9021802     	str	w2, [x0, #0x218]
   201ec: 364000e3     	tbz	w3, #0x8, 0x20208 <syna_tcm_config_timings+0x98>
   201f0: b4000081     	cbz	x1, 0x20200 <syna_tcm_config_timings+0x90>
   201f4: b9402028     	ldr	w8, [x1, #0x20]
   201f8: 7100011f     	cmp	w8, #0x0
   201fc: 1a880042     	csel	w2, w2, w8, eq
   20200: 34000042     	cbz	w2, 0x20208 <syna_tcm_config_timings+0x98>
   20204: b901e802     	str	w2, [x0, #0x1e8]
   20208: 364800e3     	tbz	w3, #0x9, 0x20224 <syna_tcm_config_timings+0xb4>
   2020c: b4000081     	cbz	x1, 0x2021c <syna_tcm_config_timings+0xac>
   20210: b9402428     	ldr	w8, [x1, #0x24]
   20214: 7100011f     	cmp	w8, #0x0
   20218: 1a880042     	csel	w2, w2, w8, eq
   2021c: 34000042     	cbz	w2, 0x20224 <syna_tcm_config_timings+0xb4>
   20220: b901ec02     	str	w2, [x0, #0x1ec]
   20224: 2a1f03e0     	mov	w0, wzr
   20228: d65f03c0     	ret
   2022c: d503233f     	paciasp
   20230: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   20234: 910003fd     	mov	x29, sp
   20238: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_set_up_max_rw_size+0x90>
		0000000000020238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f02
   2023c: 91000000     	add	x0, x0, #0x0
		000000000002023c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f02
   20240: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_set_up_max_rw_size+0x90>
		0000000000020240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8c8
   20244: 91000021     	add	x1, x1, #0x0
		0000000000020244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8c8
   20248: 94000000     	bl	0x20248 <syna_tcm_config_timings+0xd8>
		0000000000020248:  R_AARCH64_CALL26	_printk
   2024c: 12801e00     	mov	w0, #-0xf1              // =-241
   20250: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   20254: d50323bf     	autiasp
   20258: d65f03c0     	ret
