
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000114 <aw22xxx_play>:
     114: d503233f     	paciasp
     118: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     11c: a9016ffc     	stp	x28, x27, [sp, #0x10]
     120: a90267fa     	stp	x26, x25, [sp, #0x20]
     124: a9035ff8     	stp	x24, x23, [sp, #0x30]
     128: a90457f6     	stp	x22, x21, [sp, #0x40]
     12c: a9054ff4     	stp	x20, x19, [sp, #0x50]
     130: 910003fd     	mov	x29, sp
     134: aa0003f3     	mov	x19, x0
     138: 94000048     	bl	0x258 <aw22xxx_init_cfg_update_array>
     13c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5
     140: 91000294     	add	x20, x20, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x5
     144: aa1303e0     	mov	x0, x19
     148: aa1403e1     	mov	x1, x20
     14c: 94000000     	bl	0x14c <aw22xxx_play+0x38>
		000000000000014c:  R_AARCH64_CALL26	aw22xxx_set_breath_data
     150: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     154: 52801139     	mov	w25, #0x89              // =137
     158: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b0
     15c: 9000001b     	adrp	x27, 0x0 <.text>
		000000000000015c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b4
     160: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b8
     164: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x896
     168: 910002d6     	add	x22, x22, #0x0
		0000000000000168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x896
     16c: 52800335     	mov	w21, #0x19              // =25
     170: 528c3517     	mov	w23, #0x61a8            // =25000
     174: 39400308     	ldrb	w8, [x24]
		0000000000000174:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x4
     178: 1b197d08     	mul	w8, w8, w25
     17c: 530c7d00     	lsr	w0, w8, #12
     180: 94000000     	bl	0x180 <aw22xxx_play+0x6c>
		0000000000000180:  R_AARCH64_CALL26	msleep
     184: b9400348     	ldr	w8, [x26]
		0000000000000184:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b0
     188: b9400369     	ldr	w9, [x27]
		0000000000000188:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b4
     18c: 6b09011f     	cmp	w8, w9
     190: 540001c0     	b.eq	0x1c8 <aw22xxx_play+0xb4>
     194: 39400388     	ldrb	w8, [x28]
		0000000000000194:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x61b8
     198: 36000348     	tbz	w8, #0x0, 0x200 <aw22xxx_play+0xec>
     19c: b9400348     	ldr	w8, [x26]
		000000000000019c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b0
     1a0: 1b157d08     	mul	w8, w8, w21
     1a4: 6b17011f     	cmp	w8, w23
     1a8: 54000568     	b.hi	0x254 <aw22xxx_play+0x140>
     1ac: 8b284281     	add	x1, x20, w8, uxtw
     1b0: aa1303e0     	mov	x0, x19
     1b4: 94000000     	bl	0x1b4 <aw22xxx_play+0xa0>
		00000000000001b4:  R_AARCH64_CALL26	aw22xxx_set_breath_data
     1b8: b9400348     	ldr	w8, [x26]
		00000000000001b8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b0
     1bc: 11000508     	add	w8, w8, #0x1
     1c0: b9000348     	str	w8, [x26]
		00000000000001c0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b0
     1c4: 17ffffec     	b	0x174 <aw22xxx_play+0x60>
     1c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001c8:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     1cc: 9108c262     	add	x2, x19, #0x230
     1d0: 52800400     	mov	w0, #0x20               // =32
     1d4: f9400101     	ldr	x1, [x8]
		00000000000001d4:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     1d8: 3900039f     	strb	wzr, [x28]
		00000000000001d8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x61b8
     1dc: b900035f     	str	wzr, [x26]
		00000000000001dc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b0
     1e0: b900037f     	str	wzr, [x27]
		00000000000001e0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b4
     1e4: 94000000     	bl	0x1e4 <aw22xxx_play+0xd0>
		00000000000001e4:  R_AARCH64_CALL26	queue_work_on
     1e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe9e
     1ec: 91000000     	add	x0, x0, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe9e
     1f0: aa1603e1     	mov	x1, x22
     1f4: 94000000     	bl	0x1f4 <aw22xxx_play+0xe0>
		00000000000001f4:  R_AARCH64_CALL26	_printk
     1f8: 39400388     	ldrb	w8, [x28]
		00000000000001f8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x61b8
     1fc: 3707fd08     	tbnz	w8, #0x0, 0x19c <aw22xxx_play+0x88>
     200: aa1303e0     	mov	x0, x19
     204: 52801fe1     	mov	w1, #0xff               // =255
     208: 2a1f03e2     	mov	w2, wzr
     20c: 94000084     	bl	0x41c <aw22xxx_i2c_write>
     210: aa1303e0     	mov	x0, x19
     214: 528000a1     	mov	w1, #0x5                // =5
     218: 2a1f03e2     	mov	w2, wzr
     21c: 94000080     	bl	0x41c <aw22xxx_i2c_write>
     220: aa1303e0     	mov	x0, x19
     224: 52800081     	mov	w1, #0x4                // =4
     228: 52800022     	mov	w2, #0x1                // =1
     22c: 9400007c     	bl	0x41c <aw22xxx_i2c_write>
     230: aa1303e0     	mov	x0, x19
     234: 52800041     	mov	w1, #0x2                // =2
     238: 2a1f03e2     	mov	w2, wzr
     23c: 94000078     	bl	0x41c <aw22xxx_i2c_write>
     240: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf3
     244: 91000000     	add	x0, x0, #0x0
		0000000000000244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf3
     248: aa1603e1     	mov	x1, x22
     24c: 94000000     	bl	0x24c <aw22xxx_play+0x138>
		000000000000024c:  R_AARCH64_CALL26	_printk
     250: 17ffffd3     	b	0x19c <aw22xxx_play+0x88>
     254: d42aa240     	brk	#0x5512
