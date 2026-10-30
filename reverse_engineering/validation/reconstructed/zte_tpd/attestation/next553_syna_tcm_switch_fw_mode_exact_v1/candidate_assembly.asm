
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020088 <syna_tcm_switch_fw_mode>:
   20088: d503233f     	paciasp
   2008c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   20090: f9000bf5     	str	x21, [sp, #0x10]
   20094: a9024ff4     	stp	x20, x19, [sp, #0x20]
   20098: 910003fd     	mov	x29, sp
   2009c: b4000540     	cbz	x0, 0x20144 <syna_tcm_switch_fw_mode+0xbc>
   200a0: 340000a2     	cbz	w2, 0x200b4 <syna_tcm_switch_fw_mode+0x2c>
   200a4: b941e808     	ldr	w8, [x0, #0x1e8]
   200a8: 6b02011f     	cmp	w8, w2
   200ac: 1a828113     	csel	w19, w8, w2, hi
   200b0: 14000005     	b	0x200c4 <syna_tcm_switch_fw_mode+0x3c>
   200b4: f9402408     	ldr	x8, [x0, #0x48]
   200b8: 39405108     	ldrb	w8, [x8, #0x14]
   200bc: 36000648     	tbz	w8, #0x0, 0x20184 <syna_tcm_switch_fw_mode+0xfc>
   200c0: 2a1f03f3     	mov	w19, wzr
   200c4: 12001c28     	and	w8, w1, #0xff
   200c8: 71002d1f     	cmp	w8, #0xb
   200cc: 54000180     	b.eq	0x200fc <syna_tcm_switch_fw_mode+0x74>
   200d0: 7100051f     	cmp	w8, #0x1
   200d4: 540003e1     	b.ne	0x20150 <syna_tcm_switch_fw_mode+0xc8>
   200d8: 39402408     	ldrb	w8, [x0, #0x9]
   200dc: 7100051f     	cmp	w8, #0x1
   200e0: 54000140     	b.eq	0x20108 <syna_tcm_switch_fw_mode+0x80>
   200e4: 350007d3     	cbnz	w19, 0x201dc <syna_tcm_switch_fw_mode+0x154>
   200e8: f9402408     	ldr	x8, [x0, #0x48]
   200ec: 39405108     	ldrb	w8, [x8, #0x14]
   200f0: 36000648     	tbz	w8, #0x0, 0x201b8 <syna_tcm_switch_fw_mode+0x130>
   200f4: 2a1f03f3     	mov	w19, wzr
   200f8: 14000039     	b	0x201dc <syna_tcm_switch_fw_mode+0x154>
   200fc: 39402408     	ldrb	w8, [x0, #0x9]
   20100: 71002d1f     	cmp	w8, #0xb
   20104: 54000341     	b.ne	0x2016c <syna_tcm_switch_fw_mode+0xe4>
   20108: f941d808     	ldr	x8, [x0, #0x3b0]
   2010c: b4000108     	cbz	x8, 0x2012c <syna_tcm_switch_fw_mode+0xa4>
   20110: b85fc110     	ldur	w16, [x8, #-0x4]
   20114: 728ca131     	movk	w17, #0x6509
   20118: 72baaf51     	movk	w17, #0xd57a, lsl #16
   2011c: 6b11021f     	cmp	w16, w17
   20120: 54000040     	b.eq	0x20128 <syna_tcm_switch_fw_mode+0xa0>
   20124: d4304500     	brk	#0x8228
   20128: d63f0100     	blr	x8
   2012c: 2a1f03e0     	mov	w0, wzr
   20130: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   20134: f9400bf5     	ldr	x21, [sp, #0x10]
   20138: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   2013c: d50323bf     	autiasp
   20140: d65f03c0     	ret
   20144: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   20148: 91000000     	add	x0, x0, #0x0
		0000000000020148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   2014c: 14000003     	b	0x20158 <syna_tcm_switch_fw_mode+0xd0>
   20150: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1066c
   20154: 91000000     	add	x0, x0, #0x0
		0000000000020154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1066c
   20158: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f66
   2015c: 91000021     	add	x1, x1, #0x0
		000000000002015c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f66
   20160: 94000000     	bl	0x20160 <syna_tcm_switch_fw_mode+0xd8>
		0000000000020160:  R_AARCH64_CALL26	_printk
   20164: 12801e00     	mov	w0, #-0xf1              // =-241
   20168: 17fffff2     	b	0x20130 <syna_tcm_switch_fw_mode+0xa8>
   2016c: 350009b3     	cbnz	w19, 0x202a0 <syna_tcm_switch_fw_mode+0x218>
   20170: f9402408     	ldr	x8, [x0, #0x48]
   20174: 39405108     	ldrb	w8, [x8, #0x14]
   20178: 36000828     	tbz	w8, #0x0, 0x2027c <syna_tcm_switch_fw_mode+0x1f4>
   2017c: 2a1f03f3     	mov	w19, wzr
   20180: 14000048     	b	0x202a0 <syna_tcm_switch_fw_mode+0x218>
   20184: 90000008     	adrp	x8, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a3a
   20188: 91000108     	add	x8, x8, #0x0
		0000000000020188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a3a
   2018c: 90000009     	adrp	x9, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		000000000002018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f66
   20190: 91000129     	add	x9, x9, #0x0
		0000000000020190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f66
   20194: b941e813     	ldr	w19, [x0, #0x1e8]
   20198: aa0003f4     	mov	x20, x0
   2019c: aa0803e0     	mov	x0, x8
   201a0: 2a0103f5     	mov	w21, w1
   201a4: aa0903e1     	mov	x1, x9
   201a8: 94000000     	bl	0x201a8 <syna_tcm_switch_fw_mode+0x120>
		00000000000201a8:  R_AARCH64_CALL26	_printk
   201ac: 2a1503e1     	mov	w1, w21
   201b0: aa1403e0     	mov	x0, x20
   201b4: 17ffffc4     	b	0x200c4 <syna_tcm_switch_fw_mode+0x3c>
   201b8: 90000008     	adrp	x8, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		00000000000201b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   201bc: 91000108     	add	x8, x8, #0x0
		00000000000201bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   201c0: b941e813     	ldr	w19, [x0, #0x1e8]
   201c4: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		00000000000201c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbe8
   201c8: 91000021     	add	x1, x1, #0x0
		00000000000201c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbe8
   201cc: aa0003f4     	mov	x20, x0
   201d0: aa0803e0     	mov	x0, x8
   201d4: 94000000     	bl	0x201d4 <syna_tcm_switch_fw_mode+0x14c>
		00000000000201d4:  R_AARCH64_CALL26	_printk
   201d8: aa1403e0     	mov	x0, x20
   201dc: f941cc08     	ldr	x8, [x0, #0x398]
   201e0: 52800281     	mov	w1, #0x14               // =20
   201e4: aa1f03e2     	mov	x2, xzr
   201e8: 2a1f03e3     	mov	w3, wzr
   201ec: aa1f03e4     	mov	x4, xzr
   201f0: 2a1303e5     	mov	w5, w19
   201f4: aa0003f4     	mov	x20, x0
   201f8: b85fc110     	ldur	w16, [x8, #-0x4]
   201fc: 728751d1     	movk	w17, #0x3a8e
   20200: 72a48411     	movk	w17, #0x2420, lsl #16
   20204: 6b11021f     	cmp	w16, w17
   20208: 54000040     	b.eq	0x20210 <syna_tcm_switch_fw_mode+0x188>
   2020c: d4304500     	brk	#0x8228
   20210: d63f0100     	blr	x8
   20214: 36f80120     	tbz	w0, #0x1f, 0x20238 <syna_tcm_switch_fw_mode+0x1b0>
   20218: 2a0003f3     	mov	w19, w0
   2021c: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		000000000002021c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13732
   20220: 91000000     	add	x0, x0, #0x0
		0000000000020220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13732
   20224: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbe8
   20228: 91000021     	add	x1, x1, #0x0
		0000000000020228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbe8
   2022c: 52800282     	mov	w2, #0x14               // =20
   20230: 94000000     	bl	0x20230 <syna_tcm_switch_fw_mode+0x1a8>
		0000000000020230:  R_AARCH64_CALL26	_printk
   20234: 1400000f     	b	0x20270 <syna_tcm_switch_fw_mode+0x1e8>
   20238: 39402682     	ldrb	w2, [x20, #0x9]
   2023c: 7100045f     	cmp	w2, #0x1
   20240: 540000c1     	b.ne	0x20258 <syna_tcm_switch_fw_mode+0x1d0>
   20244: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a94
   20248: 91000000     	add	x0, x0, #0x0
		0000000000020248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a94
   2024c: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		000000000002024c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbe8
   20250: 91000021     	add	x1, x1, #0x0
		0000000000020250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbe8
   20254: 14000031     	b	0x20318 <syna_tcm_switch_fw_mode+0x290>
   20258: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe922
   2025c: 91000000     	add	x0, x0, #0x0
		000000000002025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe922
   20260: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdbe8
   20264: 91000021     	add	x1, x1, #0x0
		0000000000020264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdbe8
   20268: 94000000     	bl	0x20268 <syna_tcm_switch_fw_mode+0x1e0>
		0000000000020268:  R_AARCH64_CALL26	_printk
   2026c: 12801e33     	mov	w19, #-0xf2             // =-242
   20270: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15112
   20274: 91000000     	add	x0, x0, #0x0
		0000000000020274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15112
   20278: 14000035     	b	0x2034c <syna_tcm_switch_fw_mode+0x2c4>
   2027c: 90000008     	adrp	x8, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		000000000002027c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   20280: 91000108     	add	x8, x8, #0x0
		0000000000020280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   20284: b941e813     	ldr	w19, [x0, #0x1e8]
   20288: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20a
   2028c: 91000021     	add	x1, x1, #0x0
		000000000002028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20a
   20290: aa0003f4     	mov	x20, x0
   20294: aa0803e0     	mov	x0, x8
   20298: 94000000     	bl	0x20298 <syna_tcm_switch_fw_mode+0x210>
		0000000000020298:  R_AARCH64_CALL26	_printk
   2029c: aa1403e0     	mov	x0, x20
   202a0: f941cc08     	ldr	x8, [x0, #0x398]
   202a4: 528003e1     	mov	w1, #0x1f               // =31
   202a8: aa1f03e2     	mov	x2, xzr
   202ac: 2a1f03e3     	mov	w3, wzr
   202b0: aa1f03e4     	mov	x4, xzr
   202b4: 2a1303e5     	mov	w5, w19
   202b8: aa0003f4     	mov	x20, x0
   202bc: b85fc110     	ldur	w16, [x8, #-0x4]
   202c0: 728751d1     	movk	w17, #0x3a8e
   202c4: 72a48411     	movk	w17, #0x2420, lsl #16
   202c8: 6b11021f     	cmp	w16, w17
   202cc: 54000040     	b.eq	0x202d4 <syna_tcm_switch_fw_mode+0x24c>
   202d0: d4304500     	brk	#0x8228
   202d4: d63f0100     	blr	x8
   202d8: 36f80120     	tbz	w0, #0x1f, 0x202fc <syna_tcm_switch_fw_mode+0x274>
   202dc: 2a0003f3     	mov	w19, w0
   202e0: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		00000000000202e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13732
   202e4: 91000000     	add	x0, x0, #0x0
		00000000000202e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13732
   202e8: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		00000000000202e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20a
   202ec: 91000021     	add	x1, x1, #0x0
		00000000000202ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20a
   202f0: 528003e2     	mov	w2, #0x1f               // =31
   202f4: 94000000     	bl	0x202f4 <syna_tcm_switch_fw_mode+0x26c>
		00000000000202f4:  R_AARCH64_CALL26	_printk
   202f8: 14000013     	b	0x20344 <syna_tcm_switch_fw_mode+0x2bc>
   202fc: 39402682     	ldrb	w2, [x20, #0x9]
   20300: 71002c5f     	cmp	w2, #0xb
   20304: 54000141     	b.ne	0x2032c <syna_tcm_switch_fw_mode+0x2a4>
   20308: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165e6
   2030c: 91000000     	add	x0, x0, #0x0
		000000000002030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165e6
   20310: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20a
   20314: 91000021     	add	x1, x1, #0x0
		0000000000020314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20a
   20318: 94000000     	bl	0x20318 <syna_tcm_switch_fw_mode+0x290>
		0000000000020318:  R_AARCH64_CALL26	_printk
   2031c: aa1403e0     	mov	x0, x20
   20320: f941d808     	ldr	x8, [x0, #0x3b0]
   20324: b5ffef68     	cbnz	x8, 0x20110 <syna_tcm_switch_fw_mode+0x88>
   20328: 17ffff81     	b	0x2012c <syna_tcm_switch_fw_mode+0xa4>
   2032c: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		000000000002032c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12016
   20330: 91000000     	add	x0, x0, #0x0
		0000000000020330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12016
   20334: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc20a
   20338: 91000021     	add	x1, x1, #0x0
		0000000000020338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc20a
   2033c: 94000000     	bl	0x2033c <syna_tcm_switch_fw_mode+0x2b4>
		000000000002033c:  R_AARCH64_CALL26	_printk
   20340: 12801e33     	mov	w19, #-0xf2             // =-242
   20344: 90000000     	adrp	x0, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		0000000000020344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc88
   20348: 91000000     	add	x0, x0, #0x0
		0000000000020348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc88
   2034c: 90000001     	adrp	x1, 0x20000 <syna_tcm_wait_for_report+0x1d8>
		000000000002034c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f66
   20350: 91000021     	add	x1, x1, #0x0
		0000000000020350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f66
   20354: 94000000     	bl	0x20354 <syna_tcm_switch_fw_mode+0x2cc>
		0000000000020354:  R_AARCH64_CALL26	_printk
   20358: 2a1303e0     	mov	w0, w19
   2035c: 17ffff75     	b	0x20130 <syna_tcm_switch_fw_mode+0xa8>
