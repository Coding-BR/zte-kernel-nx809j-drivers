
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ff28 <syna_tcm_do_fw_update>:
   1ff28: d503233f     	paciasp
   1ff2c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
   1ff30: f9000bfc     	str	x28, [sp, #0x10]
   1ff34: a90267fa     	stp	x26, x25, [sp, #0x20]
   1ff38: a9035ff8     	stp	x24, x23, [sp, #0x30]
   1ff3c: a90457f6     	stp	x22, x21, [sp, #0x40]
   1ff40: a9054ff4     	stp	x20, x19, [sp, #0x50]
   1ff44: 910003fd     	mov	x29, sp
   1ff48: d10c83ff     	sub	sp, sp, #0x320
   1ff4c: d5384108     	mrs	x8, SP_EL0
   1ff50: f9438908     	ldr	x8, [x8, #0x710]
   1ff54: f81f83a8     	stur	x8, [x29, #-0x8]
   1ff58: b5000080     	cbnz	x0, 0x1ff68 <syna_tcm_do_fw_update+0x40>
   1ff5c: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001ff5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1ff60: 91000000     	add	x0, x0, #0x0
		000000000001ff60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1ff64: 1400000e     	b	0x1ff9c <syna_tcm_do_fw_update+0x74>
   1ff68: b4000161     	cbz	x1, 0x1ff94 <syna_tcm_do_fw_update+0x6c>
   1ff6c: 34000142     	cbz	w2, 0x1ff94 <syna_tcm_do_fw_update+0x6c>
   1ff70: aa0103f7     	mov	x23, x1
   1ff74: 2a0203f6     	mov	w22, w2
   1ff78: 2a0403f9     	mov	w25, w4
   1ff7c: 350001a3     	cbnz	w3, 0x1ffb0 <syna_tcm_do_fw_update+0x88>
   1ff80: aa0003f8     	mov	x24, x0
   1ff84: 2a1f03f5     	mov	w21, wzr
   1ff88: 2a1f03f4     	mov	w20, wzr
   1ff8c: 2a1f03f3     	mov	w19, wzr
   1ff90: 1400000c     	b	0x1ffc0 <syna_tcm_do_fw_update+0x98>
   1ff94: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001ff94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bed
   1ff98: 91000000     	add	x0, x0, #0x0
		000000000001ff98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bed
   1ff9c: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001ff9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa93b
   1ffa0: 91000021     	add	x1, x1, #0x0
		000000000001ffa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa93b
   1ffa4: 94000000     	bl	0x1ffa4 <syna_tcm_do_fw_update+0x7c>
		000000000001ffa4:  R_AARCH64_CALL26	_printk
   1ffa8: 12801e00     	mov	w0, #-0xf1              // =-241
   1ffac: 1400001c     	b	0x2001c <syna_tcm_do_fw_update+0xf4>
   1ffb0: 53107c73     	lsr	w19, w3, #16
   1ffb4: b941e814     	ldr	w20, [x0, #0x1e8]
   1ffb8: aa0003f8     	mov	x24, x0
   1ffbc: 12003c75     	and	w21, w3, #0xffff
   1ffc0: 910023e0     	add	x0, sp, #0x8
   1ffc4: 2a1f03e1     	mov	w1, wzr
   1ffc8: 52806202     	mov	w2, #0x310              // =784
   1ffcc: 94000000     	bl	0x1ffcc <syna_tcm_do_fw_update+0xa4>
		000000000001ffcc:  R_AARCH64_CALL26	memset
   1ffd0: 90000000     	adrp	x0, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001ffd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e87
   1ffd4: 91000000     	add	x0, x0, #0x0
		000000000001ffd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e87
   1ffd8: 90000001     	adrp	x1, 0x1f000 <syna_tcm_read_flash_boot_cs_config+0x3cc>
		000000000001ffd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa93b
   1ffdc: 91000021     	add	x1, x1, #0x0
		000000000001ffdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa93b
   1ffe0: 94000000     	bl	0x1ffe0 <syna_tcm_do_fw_update+0xb8>
		000000000001ffe0:  R_AARCH64_CALL26	_printk
   1ffe4: 910023e2     	add	x2, sp, #0x8
   1ffe8: aa1703e0     	mov	x0, x23
   1ffec: 2a1603e1     	mov	w1, w22
   1fff0: 94000000     	bl	0x1fff0 <syna_tcm_do_fw_update+0xc8>
		000000000001fff0:  R_AARCH64_CALL26	syna_tcm_parse_fw_image
   1fff4: 37f80300     	tbnz	w0, #0x1f, 0x20054 <syna_tcm_do_fw_update+0x12c>
   1fff8: 36000419     	tbz	w25, #0x0, 0x20078 <syna_tcm_do_fw_update+0x150>
   1fffc: 52800122     	mov	w2, #0x9                // =9
   20000: aa1803e0     	mov	x0, x24
   20004: 910023e1     	add	x1, sp, #0x8
   20008: 2a1303e3     	mov	w3, w19
   2000c: 2a1503e4     	mov	w4, w21
   20010: 2a1403e5     	mov	w5, w20
   20014: 52800026     	mov	w6, #0x1                // =1
   20018: 94000000     	bl	0x20018 <syna_tcm_do_fw_update+0xf0>
		0000000000020018:  R_AARCH64_CALL26	syna_tcm_do_fw_update_ex
   2001c: d5384108     	mrs	x8, SP_EL0
   20020: f9438908     	ldr	x8, [x8, #0x710]
   20024: f85f83a9     	ldur	x9, [x29, #-0x8]
   20028: eb09011f     	cmp	x8, x9
   2002c: 54001181     	b.ne	0x2025c <syna_tcm_do_fw_update+0x334>
   20030: 910c83ff     	add	sp, sp, #0x320
   20034: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   20038: f9400bfc     	ldr	x28, [sp, #0x10]
   2003c: a94457f6     	ldp	x22, x21, [sp, #0x40]
   20040: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   20044: a94267fa     	ldp	x26, x25, [sp, #0x20]
   20048: a8c67bfd     	ldp	x29, x30, [sp], #0x60
   2004c: d50323bf     	autiasp
   20050: d65f03c0     	ret
   20054: 90000008     	adrp	x8, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbb
   20058: 91000108     	add	x8, x8, #0x0
		0000000000020058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbb
   2005c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002005c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa93b
   20060: 91000021     	add	x1, x1, #0x0
		0000000000020060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa93b
   20064: 2a0003f3     	mov	w19, w0
   20068: aa0803e0     	mov	x0, x8
   2006c: 94000000     	bl	0x2006c <syna_tcm_do_fw_update+0x144>
		000000000002006c:  R_AARCH64_CALL26	_printk
   20070: 2a1303e0     	mov	w0, w19
   20074: 17ffffea     	b	0x2001c <syna_tcm_do_fw_update+0xf4>
   20078: b9408be8     	ldr	w8, [sp, #0x88]
   2007c: 7100891f     	cmp	w8, #0x22
   20080: 54000102     	b.hs	0x200a0 <syna_tcm_do_fw_update+0x178>
   20084: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x721b
   20088: 91000000     	add	x0, x0, #0x0
		0000000000020088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x721b
   2008c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2379
   20090: 91000021     	add	x1, x1, #0x0
		0000000000020090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2379
   20094: 94000000     	bl	0x20094 <syna_tcm_do_fw_update+0x16c>
		0000000000020094:  R_AARCH64_CALL26	_printk
   20098: 2a1f03e0     	mov	w0, wzr
   2009c: 17ffffe0     	b	0x2001c <syna_tcm_do_fw_update+0xf4>
   200a0: 3940231a     	ldrb	w26, [x24, #0x8]
   200a4: f94043f9     	ldr	x25, [sp, #0x80]
   200a8: 528001c9     	mov	w9, #0xe                // =14
   200ac: 5280020a     	mov	w10, #0x10              // =16
   200b0: b9400f17     	ldr	w23, [x24, #0xc]
   200b4: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000200b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa01
   200b8: 91000000     	add	x0, x0, #0x0
		00000000000200b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa01
   200bc: 71000b5f     	cmp	w26, #0x2
   200c0: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000200c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2379
   200c4: 91000021     	add	x1, x1, #0x0
		00000000000200c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2379
   200c8: 9a890149     	csel	x9, x10, x9, eq
   200cc: 2a1703e2     	mov	w2, w23
   200d0: b8696b36     	ldr	w22, [x25, x9]
   200d4: 2a1603e3     	mov	w3, w22
   200d8: 94000000     	bl	0x200d8 <syna_tcm_do_fw_update+0x1b0>
		00000000000200d8:  R_AARCH64_CALL26	_printk
   200dc: 6b1702df     	cmp	w22, w23
   200e0: 54000941     	b.ne	0x20208 <syna_tcm_do_fw_update+0x2e0>
   200e4: 71000b5f     	cmp	w26, #0x2
   200e8: 52800248     	mov	w8, #0x12               // =18
   200ec: 52800289     	mov	w9, #0x14               // =20
   200f0: 9a880128     	csel	x8, x9, x8, eq
   200f4: 3943030b     	ldrb	w11, [x24, #0xc0]
   200f8: 8b080328     	add	x8, x25, x8
   200fc: 3940010a     	ldrb	w10, [x8]
   20100: 6b0b015f     	cmp	w10, w11
   20104: 540008e1     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   20108: 3940050a     	ldrb	w10, [x8, #0x1]
   2010c: 3943070b     	ldrb	w11, [x24, #0xc1]
   20110: aa1803e9     	mov	x9, x24
   20114: 6b0b015f     	cmp	w10, w11
   20118: 54000841     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2011c: 3940090a     	ldrb	w10, [x8, #0x2]
   20120: 3943092b     	ldrb	w11, [x9, #0xc2]
   20124: 6b0b015f     	cmp	w10, w11
   20128: 540007c1     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2012c: 39400d0a     	ldrb	w10, [x8, #0x3]
   20130: 39430d2b     	ldrb	w11, [x9, #0xc3]
   20134: 6b0b015f     	cmp	w10, w11
   20138: 54000741     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2013c: 3940110a     	ldrb	w10, [x8, #0x4]
   20140: 3943112b     	ldrb	w11, [x9, #0xc4]
   20144: 6b0b015f     	cmp	w10, w11
   20148: 540006c1     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2014c: 3940150a     	ldrb	w10, [x8, #0x5]
   20150: 39431529     	ldrb	w9, [x9, #0xc5]
   20154: 6b09015f     	cmp	w10, w9
   20158: 54000641     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2015c: 39401909     	ldrb	w9, [x8, #0x6]
   20160: 39431b0a     	ldrb	w10, [x24, #0xc6]
   20164: 6b0a013f     	cmp	w9, w10
   20168: 540005c1     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2016c: 39401d09     	ldrb	w9, [x8, #0x7]
   20170: 39431f0a     	ldrb	w10, [x24, #0xc7]
   20174: 6b0a013f     	cmp	w9, w10
   20178: 54000541     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2017c: 39402109     	ldrb	w9, [x8, #0x8]
   20180: 3943230a     	ldrb	w10, [x24, #0xc8]
   20184: 6b0a013f     	cmp	w9, w10
   20188: 540004c1     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2018c: 39402509     	ldrb	w9, [x8, #0x9]
   20190: 3943270a     	ldrb	w10, [x24, #0xc9]
   20194: 6b0a013f     	cmp	w9, w10
   20198: 54000441     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   2019c: 39402909     	ldrb	w9, [x8, #0xa]
   201a0: 39432b0a     	ldrb	w10, [x24, #0xca]
   201a4: 6b0a013f     	cmp	w9, w10
   201a8: 540003c1     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   201ac: 39402d09     	ldrb	w9, [x8, #0xb]
   201b0: 39432f0a     	ldrb	w10, [x24, #0xcb]
   201b4: 6b0a013f     	cmp	w9, w10
   201b8: 54000341     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   201bc: 39403109     	ldrb	w9, [x8, #0xc]
   201c0: 3943330a     	ldrb	w10, [x24, #0xcc]
   201c4: 6b0a013f     	cmp	w9, w10
   201c8: 540002c1     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   201cc: 39403509     	ldrb	w9, [x8, #0xd]
   201d0: 3943370a     	ldrb	w10, [x24, #0xcd]
   201d4: 6b0a013f     	cmp	w9, w10
   201d8: 54000241     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   201dc: 39403909     	ldrb	w9, [x8, #0xe]
   201e0: 39433b0a     	ldrb	w10, [x24, #0xce]
   201e4: 6b0a013f     	cmp	w9, w10
   201e8: 540001c1     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   201ec: 39403d08     	ldrb	w8, [x8, #0xf]
   201f0: 39433f09     	ldrb	w9, [x24, #0xcf]
   201f4: 6b09011f     	cmp	w8, w9
   201f8: 54000141     	b.ne	0x20220 <syna_tcm_do_fw_update+0x2f8>
   201fc: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		00000000000201fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa45
   20200: 91000000     	add	x0, x0, #0x0
		0000000000020200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa45
   20204: 17ffffa2     	b	0x2008c <syna_tcm_do_fw_update+0x164>
   20208: 90000016     	adrp	x22, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb72d
   2020c: 910002d6     	add	x22, x22, #0x0
		000000000002020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb72d
   20210: 52800139     	mov	w25, #0x9               // =9
   20214: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa3b
   20218: 91000000     	add	x0, x0, #0x0
		0000000000020218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa3b
   2021c: 14000006     	b	0x20234 <syna_tcm_do_fw_update+0x30c>
   20220: 90000016     	adrp	x22, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542b
   20224: 910002d6     	add	x22, x22, #0x0
		0000000000020224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542b
   20228: 52800039     	mov	w25, #0x1               // =1
   2022c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		000000000002022c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7253
   20230: 91000000     	add	x0, x0, #0x0
		0000000000020230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7253
   20234: 90000017     	adrp	x23, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2379
   20238: 910002f7     	add	x23, x23, #0x0
		0000000000020238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2379
   2023c: aa1703e1     	mov	x1, x23
   20240: 94000000     	bl	0x20240 <syna_tcm_do_fw_update+0x318>
		0000000000020240:  R_AARCH64_CALL26	_printk
   20244: aa1603e0     	mov	x0, x22
   20248: aa1703e1     	mov	x1, x23
   2024c: 94000000     	bl	0x2024c <syna_tcm_do_fw_update+0x324>
		000000000002024c:  R_AARCH64_CALL26	_printk
   20250: aa1803e0     	mov	x0, x24
   20254: 2a1903e2     	mov	w2, w25
   20258: 17ffff6b     	b	0x20004 <syna_tcm_do_fw_update+0xdc>
   2025c: 94000000     	bl	0x2025c <syna_tcm_do_fw_update+0x334>
		000000000002025c:  R_AARCH64_CALL26	__stack_chk_fail
