
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001302c <syna_tcm_switch_fw_mode>:
   1302c: d503233f     	paciasp
   13030: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   13034: f9000bf5     	str	x21, [sp, #0x10]
   13038: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1303c: 910003fd     	mov	x29, sp
   13040: b4000540     	cbz	x0, 0x130e8 <syna_tcm_switch_fw_mode+0xbc>
   13044: 340000a2     	cbz	w2, 0x13058 <syna_tcm_switch_fw_mode+0x2c>
   13048: b941e808     	ldr	w8, [x0, #0x1e8]
   1304c: 6b02011f     	cmp	w8, w2
   13050: 1a828113     	csel	w19, w8, w2, hi
   13054: 14000005     	b	0x13068 <syna_tcm_switch_fw_mode+0x3c>
   13058: f9402408     	ldr	x8, [x0, #0x48]
   1305c: 39405108     	ldrb	w8, [x8, #0x14]
   13060: 36000648     	tbz	w8, #0x0, 0x13128 <syna_tcm_switch_fw_mode+0xfc>
   13064: 2a1f03f3     	mov	w19, wzr
   13068: 12001c28     	and	w8, w1, #0xff
   1306c: 71002d1f     	cmp	w8, #0xb
   13070: 54000180     	b.eq	0x130a0 <syna_tcm_switch_fw_mode+0x74>
   13074: 7100051f     	cmp	w8, #0x1
   13078: 540003e1     	b.ne	0x130f4 <syna_tcm_switch_fw_mode+0xc8>
   1307c: 39402408     	ldrb	w8, [x0, #0x9]
   13080: 7100051f     	cmp	w8, #0x1
   13084: 54000140     	b.eq	0x130ac <syna_tcm_switch_fw_mode+0x80>
   13088: 350007d3     	cbnz	w19, 0x13180 <syna_tcm_switch_fw_mode+0x154>
   1308c: f9402408     	ldr	x8, [x0, #0x48]
   13090: 39405108     	ldrb	w8, [x8, #0x14]
   13094: 36000648     	tbz	w8, #0x0, 0x1315c <syna_tcm_switch_fw_mode+0x130>
   13098: 2a1f03f3     	mov	w19, wzr
   1309c: 14000039     	b	0x13180 <syna_tcm_switch_fw_mode+0x154>
   130a0: 39402408     	ldrb	w8, [x0, #0x9]
   130a4: 71002d1f     	cmp	w8, #0xb
   130a8: 54000341     	b.ne	0x13110 <syna_tcm_switch_fw_mode+0xe4>
   130ac: f941d808     	ldr	x8, [x0, #0x3b0]
   130b0: b4000108     	cbz	x8, 0x130d0 <syna_tcm_switch_fw_mode+0xa4>
   130b4: b85fc110     	ldur	w16, [x8, #-0x4]
   130b8: 728ca131     	movk	w17, #0x6509
   130bc: 72baaf51     	movk	w17, #0xd57a, lsl #16
   130c0: 6b11021f     	cmp	w16, w17
   130c4: 54000040     	b.eq	0x130cc <syna_tcm_switch_fw_mode+0xa0>
   130c8: d4304500     	brk	#0x8228
   130cc: d63f0100     	blr	x8
   130d0: 2a1f03e0     	mov	w0, wzr
   130d4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   130d8: f9400bf5     	ldr	x21, [sp, #0x10]
   130dc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   130e0: d50323bf     	autiasp
   130e4: d65f03c0     	ret
   130e8: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000130e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   130ec: 91000000     	add	x0, x0, #0x0
		00000000000130ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   130f0: 14000003     	b	0x130fc <syna_tcm_switch_fw_mode+0xd0>
   130f4: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000130f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x599a
   130f8: 91000000     	add	x0, x0, #0x0
		00000000000130f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x599a
   130fc: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000130fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2ba
   13100: 91000021     	add	x1, x1, #0x0
		0000000000013100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2ba
   13104: 94000000     	bl	0x13104 <syna_tcm_switch_fw_mode+0xd8>
		0000000000013104:  R_AARCH64_CALL26	_printk
   13108: 12801e00     	mov	w0, #-0xf1              // =-241
   1310c: 17fffff2     	b	0x130d4 <syna_tcm_switch_fw_mode+0xa8>
   13110: 350009b3     	cbnz	w19, 0x13244 <syna_tcm_switch_fw_mode+0x218>
   13114: f9402408     	ldr	x8, [x0, #0x48]
   13118: 39405108     	ldrb	w8, [x8, #0x14]
   1311c: 36000828     	tbz	w8, #0x0, 0x13220 <syna_tcm_switch_fw_mode+0x1f4>
   13120: 2a1f03f3     	mov	w19, wzr
   13124: 14000048     	b	0x13244 <syna_tcm_switch_fw_mode+0x218>
   13128: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d8e
   1312c: 91000108     	add	x8, x8, #0x0
		000000000001312c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d8e
   13130: 90000009     	adrp	x9, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2ba
   13134: 91000129     	add	x9, x9, #0x0
		0000000000013134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2ba
   13138: b941e813     	ldr	w19, [x0, #0x1e8]
   1313c: aa0003f4     	mov	x20, x0
   13140: aa0803e0     	mov	x0, x8
   13144: 2a0103f5     	mov	w21, w1
   13148: aa0903e1     	mov	x1, x9
   1314c: 94000000     	bl	0x1314c <syna_tcm_switch_fw_mode+0x120>
		000000000001314c:  R_AARCH64_CALL26	_printk
   13150: 2a1503e1     	mov	w1, w21
   13154: aa1403e0     	mov	x0, x20
   13158: 17ffffc4     	b	0x13068 <syna_tcm_switch_fw_mode+0x3c>
   1315c: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001315c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13160: 91000108     	add	x8, x8, #0x0
		0000000000013160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13164: b941e813     	ldr	w19, [x0, #0x1e8]
   13168: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f14
   1316c: 91000021     	add	x1, x1, #0x0
		000000000001316c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f14
   13170: aa0003f4     	mov	x20, x0
   13174: aa0803e0     	mov	x0, x8
   13178: 94000000     	bl	0x13178 <syna_tcm_switch_fw_mode+0x14c>
		0000000000013178:  R_AARCH64_CALL26	_printk
   1317c: aa1403e0     	mov	x0, x20
   13180: f941cc08     	ldr	x8, [x0, #0x398]
   13184: 52800281     	mov	w1, #0x14               // =20
   13188: aa1f03e2     	mov	x2, xzr
   1318c: 2a1f03e3     	mov	w3, wzr
   13190: aa1f03e4     	mov	x4, xzr
   13194: 2a1303e5     	mov	w5, w19
   13198: aa0003f4     	mov	x20, x0
   1319c: b85fc110     	ldur	w16, [x8, #-0x4]
   131a0: 728751d1     	movk	w17, #0x3a8e
   131a4: 72a48411     	movk	w17, #0x2420, lsl #16
   131a8: 6b11021f     	cmp	w16, w17
   131ac: 54000040     	b.eq	0x131b4 <syna_tcm_switch_fw_mode+0x188>
   131b0: d4304500     	brk	#0x8228
   131b4: d63f0100     	blr	x8
   131b8: 36f80120     	tbz	w0, #0x1f, 0x131dc <syna_tcm_switch_fw_mode+0x1b0>
   131bc: 2a0003f3     	mov	w19, w0
   131c0: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000131c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   131c4: 91000000     	add	x0, x0, #0x0
		00000000000131c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   131c8: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000131c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f14
   131cc: 91000021     	add	x1, x1, #0x0
		00000000000131cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f14
   131d0: 52800282     	mov	w2, #0x14               // =20
   131d4: 94000000     	bl	0x131d4 <syna_tcm_switch_fw_mode+0x1a8>
		00000000000131d4:  R_AARCH64_CALL26	_printk
   131d8: 1400000f     	b	0x13214 <syna_tcm_switch_fw_mode+0x1e8>
   131dc: 39402682     	ldrb	w2, [x20, #0x9]
   131e0: 7100045f     	cmp	w2, #0x1
   131e4: 540000c1     	b.ne	0x131fc <syna_tcm_switch_fw_mode+0x1d0>
   131e8: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000131e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9de8
   131ec: 91000000     	add	x0, x0, #0x0
		00000000000131ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9de8
   131f0: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000131f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f14
   131f4: 91000021     	add	x1, x1, #0x0
		00000000000131f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f14
   131f8: 14000031     	b	0x132bc <syna_tcm_switch_fw_mode+0x290>
   131fc: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000131fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c50
   13200: 91000000     	add	x0, x0, #0x0
		0000000000013200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c50
   13204: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f14
   13208: 91000021     	add	x1, x1, #0x0
		0000000000013208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f14
   1320c: 94000000     	bl	0x1320c <syna_tcm_switch_fw_mode+0x1e0>
		000000000001320c:  R_AARCH64_CALL26	_printk
   13210: 12801e33     	mov	w19, #-0xf2             // =-242
   13214: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa466
   13218: 91000000     	add	x0, x0, #0x0
		0000000000013218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa466
   1321c: 14000035     	b	0x132f0 <syna_tcm_switch_fw_mode+0x2c4>
   13220: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13224: 91000108     	add	x8, x8, #0x0
		0000000000013224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13228: b941e813     	ldr	w19, [x0, #0x1e8]
   1322c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001322c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1536
   13230: 91000021     	add	x1, x1, #0x0
		0000000000013230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1536
   13234: aa0003f4     	mov	x20, x0
   13238: aa0803e0     	mov	x0, x8
   1323c: 94000000     	bl	0x1323c <syna_tcm_switch_fw_mode+0x210>
		000000000001323c:  R_AARCH64_CALL26	_printk
   13240: aa1403e0     	mov	x0, x20
   13244: f941cc08     	ldr	x8, [x0, #0x398]
   13248: 528003e1     	mov	w1, #0x1f               // =31
   1324c: aa1f03e2     	mov	x2, xzr
   13250: 2a1f03e3     	mov	w3, wzr
   13254: aa1f03e4     	mov	x4, xzr
   13258: 2a1303e5     	mov	w5, w19
   1325c: aa0003f4     	mov	x20, x0
   13260: b85fc110     	ldur	w16, [x8, #-0x4]
   13264: 728751d1     	movk	w17, #0x3a8e
   13268: 72a48411     	movk	w17, #0x2420, lsl #16
   1326c: 6b11021f     	cmp	w16, w17
   13270: 54000040     	b.eq	0x13278 <syna_tcm_switch_fw_mode+0x24c>
   13274: d4304500     	brk	#0x8228
   13278: d63f0100     	blr	x8
   1327c: 36f80120     	tbz	w0, #0x1f, 0x132a0 <syna_tcm_switch_fw_mode+0x274>
   13280: 2a0003f3     	mov	w19, w0
   13284: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   13288: 91000000     	add	x0, x0, #0x0
		0000000000013288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   1328c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001328c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1536
   13290: 91000021     	add	x1, x1, #0x0
		0000000000013290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1536
   13294: 528003e2     	mov	w2, #0x1f               // =31
   13298: 94000000     	bl	0x13298 <syna_tcm_switch_fw_mode+0x26c>
		0000000000013298:  R_AARCH64_CALL26	_printk
   1329c: 14000013     	b	0x132e8 <syna_tcm_switch_fw_mode+0x2bc>
   132a0: 39402682     	ldrb	w2, [x20, #0x9]
   132a4: 71002c5f     	cmp	w2, #0xb
   132a8: 54000141     	b.ne	0x132d0 <syna_tcm_switch_fw_mode+0x2a4>
   132ac: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000132ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb93a
   132b0: 91000000     	add	x0, x0, #0x0
		00000000000132b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb93a
   132b4: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000132b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1536
   132b8: 91000021     	add	x1, x1, #0x0
		00000000000132b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1536
   132bc: 94000000     	bl	0x132bc <syna_tcm_switch_fw_mode+0x290>
		00000000000132bc:  R_AARCH64_CALL26	_printk
   132c0: aa1403e0     	mov	x0, x20
   132c4: f941d808     	ldr	x8, [x0, #0x3b0]
   132c8: b5ffef68     	cbnz	x8, 0x130b4 <syna_tcm_switch_fw_mode+0x88>
   132cc: 17ffff81     	b	0x130d0 <syna_tcm_switch_fw_mode+0xa4>
   132d0: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000132d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x736a
   132d4: 91000000     	add	x0, x0, #0x0
		00000000000132d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x736a
   132d8: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000132d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1536
   132dc: 91000021     	add	x1, x1, #0x0
		00000000000132dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1536
   132e0: 94000000     	bl	0x132e0 <syna_tcm_switch_fw_mode+0x2b4>
		00000000000132e0:  R_AARCH64_CALL26	_printk
   132e4: 12801e33     	mov	w19, #-0xf2             // =-242
   132e8: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000132e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fb6
   132ec: 91000000     	add	x0, x0, #0x0
		00000000000132ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fb6
   132f0: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000132f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2ba
   132f4: 91000021     	add	x1, x1, #0x0
		00000000000132f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2ba
   132f8: 94000000     	bl	0x132f8 <syna_tcm_switch_fw_mode+0x2cc>
		00000000000132f8:  R_AARCH64_CALL26	_printk
   132fc: 2a1303e0     	mov	w0, w19
   13300: 17ffff75     	b	0x130d4 <syna_tcm_switch_fw_mode+0xa8>
