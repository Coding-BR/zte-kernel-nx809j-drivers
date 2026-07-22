
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010020 <syna_tcm_do_fw_update>:
   10020: d503233f     	paciasp
   10024: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   10028: f9000bfc     	str	x28, [sp, #0x10]
   1002c: a90267fa     	stp	x26, x25, [sp, #0x20]
   10030: a9035ff8     	stp	x24, x23, [sp, #0x30]
   10034: a90457f6     	stp	x22, x21, [sp, #0x40]
   10038: a9054ff4     	stp	x20, x19, [sp, #0x50]
   1003c: 910003fd     	mov	x29, sp
   10040: d10c83ff     	sub	sp, sp, #0x320
   10044: d5384108     	mrs	x8, SP_EL0
   10048: 2a0203f5     	mov	w21, w2
   1004c: aa0103f9     	mov	x25, x1
   10050: f9438908     	ldr	x8, [x8, #0x710]
   10054: aa0003f3     	mov	x19, x0
   10058: 2a0203f8     	mov	w24, w2
   1005c: 910003e0     	mov	x0, sp
   10060: 2a1f03e1     	mov	w1, wzr
   10064: 52806202     	mov	w2, #0x310              // =784
   10068: 2a0403f7     	mov	w23, w4
   1006c: 2a0303f4     	mov	w20, w3
   10070: f81f83a8     	stur	x8, [x29, #-0x8]
   10074: 94000000     	bl	0x10074 <syna_tcm_do_fw_update+0x54>
		0000000000010074:  R_AARCH64_CALL26	memset
   10078: d5384108     	mrs	x8, SP_EL0
   1007c: f9438908     	ldr	x8, [x8, #0x710]
   10080: f9018be8     	str	x8, [sp, #0x310]
   10084: b5000133     	cbnz	x19, 0x100a8 <syna_tcm_do_fw_update+0x88>
   10088: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x150>
		0000000000010088:  R_AARCH64_ADR_PREL_PG_HI21	unk_3365A
   1008c: 91000000     	add	x0, x0, #0x0
		000000000001008c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3365A
   10090: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x150>
		0000000000010090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dae
   10094: 91000021     	add	x1, x1, #0x0
		0000000000010094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dae
   10098: aa1803e2     	mov	x2, x24
   1009c: 94000000     	bl	0x1009c <syna_tcm_do_fw_update+0x7c>
		000000000001009c:  R_AARCH64_CALL26	_printk
   100a0: 12801e00     	mov	w0, #-0xf1              // =-241
   100a4: 14000023     	b	0x10130 <syna_tcm_do_fw_update+0x110>
   100a8: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x150>
		00000000000100a8:  R_AARCH64_ADR_PREL_PG_HI21	unk_37F8D
   100ac: 91000000     	add	x0, x0, #0x0
		00000000000100ac:  R_AARCH64_ADD_ABS_LO12_NC	unk_37F8D
   100b0: b4ffff19     	cbz	x25, 0x10090 <syna_tcm_do_fw_update+0x70>
   100b4: 34fffef5     	cbz	w21, 0x10090 <syna_tcm_do_fw_update+0x70>
   100b8: 35000094     	cbnz	w20, 0x100c8 <syna_tcm_do_fw_update+0xa8>
   100bc: 2a1f03f5     	mov	w21, wzr
   100c0: 2a1f03f6     	mov	w22, wzr
   100c4: 14000003     	b	0x100d0 <syna_tcm_do_fw_update+0xb0>
   100c8: b941ea75     	ldr	w21, [x19, #0x1e8]
   100cc: 12003e96     	and	w22, w20, #0xffff
   100d0: 910003e0     	mov	x0, sp
   100d4: 2a1f03e1     	mov	w1, wzr
   100d8: 52806202     	mov	w2, #0x310              // =784
   100dc: 94000000     	bl	0x100dc <syna_tcm_do_fw_update+0xbc>
		00000000000100dc:  R_AARCH64_CALL26	memset
   100e0: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x150>
		00000000000100e0:  R_AARCH64_ADR_PREL_PG_HI21	unk_34450
   100e4: 91000000     	add	x0, x0, #0x0
		00000000000100e4:  R_AARCH64_ADD_ABS_LO12_NC	unk_34450
   100e8: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x150>
		00000000000100e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dae
   100ec: 91000021     	add	x1, x1, #0x0
		00000000000100ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dae
   100f0: aa1f03e2     	mov	x2, xzr
   100f4: 94000000     	bl	0x100f4 <syna_tcm_do_fw_update+0xd4>
		00000000000100f4:  R_AARCH64_CALL26	_printk
   100f8: 910003e2     	mov	x2, sp
   100fc: aa1903e0     	mov	x0, x25
   10100: aa1803e1     	mov	x1, x24
   10104: 94000000     	bl	0x10104 <syna_tcm_do_fw_update+0xe4>
		0000000000010104:  R_AARCH64_CALL26	syna_tcm_parse_fw_image
   10108: 37f80320     	tbnz	w0, #0x1f, 0x1016c <syna_tcm_do_fw_update+0x14c>
   1010c: 36000457     	tbz	w23, #0x0, 0x10194 <syna_tcm_do_fw_update+0x174>
   10110: 52800122     	mov	w2, #0x9                // =9
   10114: 53107e83     	lsr	w3, w20, #16
   10118: 910003e1     	mov	x1, sp
   1011c: aa1303e0     	mov	x0, x19
   10120: 2a1603e4     	mov	w4, w22
   10124: 2a1503e5     	mov	w5, w21
   10128: 52800026     	mov	w6, #0x1                // =1
   1012c: 94000000     	bl	0x1012c <syna_tcm_do_fw_update+0x10c>
		000000000001012c:  R_AARCH64_CALL26	syna_tcm_do_fw_update_ex
   10130: d5384108     	mrs	x8, SP_EL0
   10134: f9438908     	ldr	x8, [x8, #0x710]
   10138: d5384109     	mrs	x9, SP_EL0
   1013c: f85f83a9     	ldur	x9, [x29, #-0x8]
   10140: eb09011f     	cmp	x8, x9
   10144: 540011a1     	b.ne	0x10378 <syna_tcm_do_fw_update+0x358>
   10148: 910c83ff     	add	sp, sp, #0x320
   1014c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   10150: f9400bfc     	ldr	x28, [sp, #0x10]
   10154: a94457f6     	ldp	x22, x21, [sp, #0x40]
   10158: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   1015c: a94267fa     	ldp	x26, x25, [sp, #0x20]
   10160: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   10164: d50323bf     	autiasp
   10168: d65f03c0     	ret
   1016c: 90000008     	adrp	x8, 0x10000 <syna_tcm_detect_device+0x150>
		000000000001016c:  R_AARCH64_ADR_PREL_PG_HI21	unk_331C0
   10170: 91000108     	add	x8, x8, #0x0
		0000000000010170:  R_AARCH64_ADD_ABS_LO12_NC	unk_331C0
   10174: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x150>
		0000000000010174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dae
   10178: 91000021     	add	x1, x1, #0x0
		0000000000010178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dae
   1017c: aa0003f3     	mov	x19, x0
   10180: aa0803e0     	mov	x0, x8
   10184: aa1f03e2     	mov	x2, xzr
   10188: 94000000     	bl	0x10188 <syna_tcm_do_fw_update+0x168>
		0000000000010188:  R_AARCH64_CALL26	_printk
   1018c: aa1303e0     	mov	x0, x19
   10190: 17ffffe8     	b	0x10130 <syna_tcm_do_fw_update+0x110>
   10194: b94083e8     	ldr	w8, [sp, #0x80]
   10198: 7100851f     	cmp	w8, #0x21
   1019c: 54000128     	b.hi	0x101c0 <syna_tcm_do_fw_update+0x1a0>
   101a0: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x150>
		00000000000101a0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3858A
   101a4: 91000000     	add	x0, x0, #0x0
		00000000000101a4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3858A
   101a8: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x150>
		00000000000101a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xead
   101ac: 91000021     	add	x1, x1, #0x0
		00000000000101ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xead
   101b0: aa1f03e2     	mov	x2, xzr
   101b4: 94000000     	bl	0x101b4 <syna_tcm_do_fw_update+0x194>
		00000000000101b4:  R_AARCH64_CALL26	_printk
   101b8: 2a1f03e0     	mov	w0, wzr
   101bc: 17ffffdd     	b	0x10130 <syna_tcm_do_fw_update+0x110>
   101c0: 39402279     	ldrb	w25, [x19, #0x8]
   101c4: f9403ff8     	ldr	x24, [sp, #0x78]
   101c8: 528001c8     	mov	w8, #0xe                // =14
   101cc: 52800209     	mov	w9, #0x10               // =16
   101d0: b9400e77     	ldr	w23, [x19, #0xc]
   101d4: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x150>
		00000000000101d4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BB70
   101d8: 91000000     	add	x0, x0, #0x0
		00000000000101d8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BB70
   101dc: 71000b3f     	cmp	w25, #0x2
   101e0: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x150>
		00000000000101e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xead
   101e4: 91000021     	add	x1, x1, #0x0
		00000000000101e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xead
   101e8: 9a880128     	csel	x8, x9, x8, eq
   101ec: 2a1703e2     	mov	w2, w23
   101f0: b878691a     	ldr	w26, [x8, x24]
   101f4: 94000000     	bl	0x101f4 <syna_tcm_do_fw_update+0x1d4>
		00000000000101f4:  R_AARCH64_CALL26	_printk
   101f8: 6b17035f     	cmp	w26, w23
   101fc: 54000921     	b.ne	0x10320 <syna_tcm_do_fw_update+0x300>
   10200: 71000b3f     	cmp	w25, #0x2
   10204: 52800248     	mov	w8, #0x12               // =18
   10208: 52800289     	mov	w9, #0x14               // =20
   1020c: 9a880128     	csel	x8, x9, x8, eq
   10210: 3943026a     	ldrb	w10, [x19, #0xc0]
   10214: 8b180108     	add	x8, x8, x24
   10218: 39400109     	ldrb	w9, [x8]
   1021c: 6b0a013f     	cmp	w9, w10
   10220: 540008c1     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10224: 39400509     	ldrb	w9, [x8, #0x1]
   10228: 3943066a     	ldrb	w10, [x19, #0xc1]
   1022c: 6b0a013f     	cmp	w9, w10
   10230: 54000841     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10234: 39400909     	ldrb	w9, [x8, #0x2]
   10238: 39430a6a     	ldrb	w10, [x19, #0xc2]
   1023c: 6b0a013f     	cmp	w9, w10
   10240: 540007c1     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10244: 39400d09     	ldrb	w9, [x8, #0x3]
   10248: 39430e6a     	ldrb	w10, [x19, #0xc3]
   1024c: 6b0a013f     	cmp	w9, w10
   10250: 54000741     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10254: 39401109     	ldrb	w9, [x8, #0x4]
   10258: 3943126a     	ldrb	w10, [x19, #0xc4]
   1025c: 6b0a013f     	cmp	w9, w10
   10260: 540006c1     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10264: 39401509     	ldrb	w9, [x8, #0x5]
   10268: 3943166a     	ldrb	w10, [x19, #0xc5]
   1026c: 6b0a013f     	cmp	w9, w10
   10270: 54000641     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10274: 39401909     	ldrb	w9, [x8, #0x6]
   10278: 39431a6a     	ldrb	w10, [x19, #0xc6]
   1027c: 6b0a013f     	cmp	w9, w10
   10280: 540005c1     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10284: 39401d09     	ldrb	w9, [x8, #0x7]
   10288: 39431e6a     	ldrb	w10, [x19, #0xc7]
   1028c: 6b0a013f     	cmp	w9, w10
   10290: 54000541     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10294: 39402109     	ldrb	w9, [x8, #0x8]
   10298: 3943226a     	ldrb	w10, [x19, #0xc8]
   1029c: 6b0a013f     	cmp	w9, w10
   102a0: 540004c1     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   102a4: 39402509     	ldrb	w9, [x8, #0x9]
   102a8: 3943266a     	ldrb	w10, [x19, #0xc9]
   102ac: 6b0a013f     	cmp	w9, w10
   102b0: 54000441     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   102b4: 39402909     	ldrb	w9, [x8, #0xa]
   102b8: 39432a6a     	ldrb	w10, [x19, #0xca]
   102bc: 6b0a013f     	cmp	w9, w10
   102c0: 540003c1     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   102c4: 39402d09     	ldrb	w9, [x8, #0xb]
   102c8: 39432e6a     	ldrb	w10, [x19, #0xcb]
   102cc: 6b0a013f     	cmp	w9, w10
   102d0: 54000341     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   102d4: 39403109     	ldrb	w9, [x8, #0xc]
   102d8: 3943326a     	ldrb	w10, [x19, #0xcc]
   102dc: 6b0a013f     	cmp	w9, w10
   102e0: 540002c1     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   102e4: 39403509     	ldrb	w9, [x8, #0xd]
   102e8: 3943366a     	ldrb	w10, [x19, #0xcd]
   102ec: 6b0a013f     	cmp	w9, w10
   102f0: 54000241     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   102f4: 39403909     	ldrb	w9, [x8, #0xe]
   102f8: 39433a6a     	ldrb	w10, [x19, #0xce]
   102fc: 6b0a013f     	cmp	w9, w10
   10300: 540001c1     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10304: 39403d08     	ldrb	w8, [x8, #0xf]
   10308: 39433e69     	ldrb	w9, [x19, #0xcf]
   1030c: 6b09011f     	cmp	w8, w9
   10310: 54000141     	b.ne	0x10338 <syna_tcm_do_fw_update+0x318>
   10314: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x150>
		0000000000010314:  R_AARCH64_ADR_PREL_PG_HI21	unk_321A7
   10318: 91000000     	add	x0, x0, #0x0
		0000000000010318:  R_AARCH64_ADD_ABS_LO12_NC	unk_321A7
   1031c: 17ffffa3     	b	0x101a8 <syna_tcm_do_fw_update+0x188>
   10320: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x150>
		0000000000010320:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BBAA
   10324: 91000000     	add	x0, x0, #0x0
		0000000000010324:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BBAA
   10328: 90000017     	adrp	x23, 0x10000 <syna_tcm_detect_device+0x150>
		0000000000010328:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C83E
   1032c: 910002f7     	add	x23, x23, #0x0
		000000000001032c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C83E
   10330: 52800139     	mov	w25, #0x9               // =9
   10334: 14000006     	b	0x1034c <syna_tcm_do_fw_update+0x32c>
   10338: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x150>
		0000000000010338:  R_AARCH64_ADR_PREL_PG_HI21	unk_385C2
   1033c: 91000000     	add	x0, x0, #0x0
		000000000001033c:  R_AARCH64_ADD_ABS_LO12_NC	unk_385C2
   10340: 90000017     	adrp	x23, 0x10000 <syna_tcm_detect_device+0x150>
		0000000000010340:  R_AARCH64_ADR_PREL_PG_HI21	unk_3688D
   10344: 910002f7     	add	x23, x23, #0x0
		0000000000010344:  R_AARCH64_ADD_ABS_LO12_NC	unk_3688D
   10348: 52800039     	mov	w25, #0x1               // =1
   1034c: 90000018     	adrp	x24, 0x10000 <syna_tcm_detect_device+0x150>
		000000000001034c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xead
   10350: 91000318     	add	x24, x24, #0x0
		0000000000010350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xead
   10354: aa1f03e2     	mov	x2, xzr
   10358: aa1803e1     	mov	x1, x24
   1035c: 94000000     	bl	0x1035c <syna_tcm_do_fw_update+0x33c>
		000000000001035c:  R_AARCH64_CALL26	_printk
   10360: aa1703e0     	mov	x0, x23
   10364: aa1803e1     	mov	x1, x24
   10368: aa1f03e2     	mov	x2, xzr
   1036c: 94000000     	bl	0x1036c <syna_tcm_do_fw_update+0x34c>
		000000000001036c:  R_AARCH64_CALL26	_printk
   10370: aa1903e2     	mov	x2, x25
   10374: 17ffff68     	b	0x10114 <syna_tcm_do_fw_update+0xf4>
   10378: 94000000     	bl	0x10378 <syna_tcm_do_fw_update+0x358>
		0000000000010378:  R_AARCH64_CALL26	__stack_chk_fail
