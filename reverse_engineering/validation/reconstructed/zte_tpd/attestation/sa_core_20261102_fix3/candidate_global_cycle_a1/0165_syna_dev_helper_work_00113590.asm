
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a134 <syna_dev_helper_work>:
    a134: d503233f     	paciasp
    a138: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a13c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a140: 910003fd     	mov	x29, sp
    a144: b85f8008     	ldur	w8, [x0, #-0x8]
    a148: aa0003f3     	mov	x19, x0
    a14c: 12001d08     	and	w8, w8, #0xff
    a150: 7100051f     	cmp	w8, #0x1
    a154: 540002e1     	b.ne	0xa1b0 <syna_dev_helper_work+0x7c>
    a158: d114a274     	sub	x20, x19, #0x528
    a15c: f9400280     	ldr	x0, [x20]
    a160: 39402408     	ldrb	w8, [x0, #0x9]
    a164: 71002d1f     	cmp	w8, #0xb
    a168: 54000201     	b.ne	0xa1a8 <syna_dev_helper_work+0x74>
    a16c: aa1f03e1     	mov	x1, xzr
    a170: 52800282     	mov	w2, #0x14               // =20
    a174: 94000000     	bl	0xa174 <syna_dev_helper_work+0x40>
		000000000000a174:  R_AARCH64_CALL26	syna_tcm_get_boot_info
    a178: 36f80480     	tbz	w0, #0x1f, 0xa208 <syna_dev_helper_work+0xd4>
    a17c: f9400280     	ldr	x0, [x20]
    a180: 39402408     	ldrb	w8, [x0, #0x9]
    a184: 71002d1f     	cmp	w8, #0xb
    a188: 54000101     	b.ne	0xa1a8 <syna_dev_helper_work+0x74>
    a18c: f8508261     	ldur	x1, [x19, #-0xf8]
    a190: d1058262     	sub	x2, x19, #0x160
    a194: 52800400     	mov	w0, #0x20               // =32
    a198: 52800323     	mov	w3, #0x19               // =25
    a19c: 94000000     	bl	0xa19c <syna_dev_helper_work+0x68>
		000000000000a19c:  R_AARCH64_CALL26	queue_delayed_work_on
    a1a0: f9400280     	ldr	x0, [x20]
    a1a4: 39402408     	ldrb	w8, [x0, #0x9]
    a1a8: 7100051f     	cmp	w8, #0x1
    a1ac: 540000c0     	b.eq	0xa1c4 <syna_dev_helper_work+0x90>
    a1b0: b81f827f     	stur	wzr, [x19, #-0x8]
    a1b4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a1b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a1bc: d50323bf     	autiasp
    a1c0: d65f03c0     	ret
    a1c4: 79416402     	ldrh	w2, [x0, #0xb2]
    a1c8: 35000322     	cbnz	w2, 0xa22c <syna_dev_helper_work+0xf8>
    a1cc: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a1cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18928
    a1d0: 91000000     	add	x0, x0, #0x0
		000000000000a1d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18928
    a1d4: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a1d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6de
    a1d8: 91000021     	add	x1, x1, #0x0
		000000000000a1d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6de
    a1dc: 94000000     	bl	0xa1dc <syna_dev_helper_work+0xa8>
		000000000000a1dc:  R_AARCH64_CALL26	_printk
    a1e0: f940ca68     	ldr	x8, [x19, #0x190]
    a1e4: aa1403e0     	mov	x0, x20
    a1e8: b85fc110     	ldur	w16, [x8, #-0x4]
    a1ec: 7288e391     	movk	w17, #0x471c
    a1f0: 72b5c411     	movk	w17, #0xae20, lsl #16
    a1f4: 6b11021f     	cmp	w16, w17
    a1f8: 54000040     	b.eq	0xa200 <syna_dev_helper_work+0xcc>
    a1fc: d4304500     	brk	#0x8228
    a200: d63f0100     	blr	x8
    a204: 17ffffeb     	b	0xa1b0 <syna_dev_helper_work+0x7c>
    a208: f9400288     	ldr	x8, [x20]
    a20c: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a20c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19154
    a210: 91000000     	add	x0, x0, #0x0
		000000000000a210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19154
    a214: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6de
    a218: 91000021     	add	x1, x1, #0x0
		000000000000a218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6de
    a21c: 39438502     	ldrb	w2, [x8, #0xe1]
    a220: 3943a503     	ldrb	w3, [x8, #0xe9]
    a224: 94000000     	bl	0xa224 <syna_dev_helper_work+0xf0>
		000000000000a224:  R_AARCH64_CALL26	_printk
    a228: 17ffffd5     	b	0xa17c <syna_dev_helper_work+0x48>
    a22c: 90000000     	adrp	x0, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a22c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17d54
    a230: 91000000     	add	x0, x0, #0x0
		000000000000a230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17d54
    a234: 90000001     	adrp	x1, 0xa000 <syna_dev_free_input_events+0x64>
		000000000000a234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6de
    a238: 91000021     	add	x1, x1, #0x0
		000000000000a238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6de
    a23c: 94000000     	bl	0xa23c <syna_dev_helper_work+0x108>
		000000000000a23c:  R_AARCH64_CALL26	_printk
    a240: f9400288     	ldr	x8, [x20]
    a244: 39402508     	ldrb	w8, [x8, #0x9]
    a248: 71002d1f     	cmp	w8, #0xb
    a24c: 54fffb21     	b.ne	0xa1b0 <syna_dev_helper_work+0x7c>
    a250: f8508261     	ldur	x1, [x19, #-0xf8]
    a254: d1058262     	sub	x2, x19, #0x160
    a258: 52800400     	mov	w0, #0x20               // =32
    a25c: 52800323     	mov	w3, #0x19               // =25
    a260: 94000000     	bl	0xa260 <syna_dev_helper_work+0x12c>
		000000000000a260:  R_AARCH64_CALL26	queue_delayed_work_on
    a264: 17ffffd3     	b	0xa1b0 <syna_dev_helper_work+0x7c>
