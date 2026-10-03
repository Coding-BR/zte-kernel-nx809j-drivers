
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000241b0 <ghost_check_area>:
   241b0: 90000008     	adrp	x8, 0x24000 <tpd_touch_release+0x48c>
		00000000000241b0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   241b4: 79403009     	ldrh	w9, [x0, #0x18]
   241b8: f9400108     	ldr	x8, [x8]
		00000000000241b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   241bc: b940110c     	ldr	w12, [x8, #0x10]
   241c0: 321f018a     	orr	w10, w12, #0x2
   241c4: 71000d5f     	cmp	w10, #0x3
   241c8: 54000201     	b.ne	0x24208 <ghost_check_area+0x58>
   241cc: 7940380a     	ldrh	w10, [x0, #0x1c]
   241d0: b9449d0d     	ldr	w13, [x8, #0x49c]
   241d4: 6b0a01bf     	cmp	w13, w10
   241d8: 540005ac     	b.gt	0x2428c <ghost_check_area+0xdc>
   241dc: 7948890b     	ldrh	w11, [x8, #0x444]
   241e0: 4b0d016b     	sub	w11, w11, w13
   241e4: 6b0a017f     	cmp	w11, w10
   241e8: 5400052b     	b.lt	0x2428c <ghost_check_area+0xdc>
   241ec: 6b0901bf     	cmp	w13, w9
   241f0: 540004ec     	b.gt	0x2428c <ghost_check_area+0xdc>
   241f4: 7948850b     	ldrh	w11, [x8, #0x442]
   241f8: 4b0d016d     	sub	w13, w11, w13
   241fc: 6b0901bf     	cmp	w13, w9
   24200: 5400014a     	b.ge	0x24228 <ghost_check_area+0x78>
   24204: 14000022     	b	0x2428c <ghost_check_area+0xdc>
   24208: b9449d0a     	ldr	w10, [x8, #0x49c]
   2420c: 6b09015f     	cmp	w10, w9
   24210: 540003ec     	b.gt	0x2428c <ghost_check_area+0xdc>
   24214: 7948850b     	ldrh	w11, [x8, #0x442]
   24218: 4b0a016a     	sub	w10, w11, w10
   2421c: 6b09015f     	cmp	w10, w9
   24220: 5400036b     	b.lt	0x2428c <ghost_check_area+0xdc>
   24224: 7940380a     	ldrh	w10, [x0, #0x1c]
   24228: 7100059f     	cmp	w12, #0x1
   2422c: 52800020     	mov	w0, #0x1                // =1
   24230: 540000ac     	b.gt	0x24244 <ghost_check_area+0x94>
   24234: 3400032c     	cbz	w12, 0x24298 <ghost_check_area+0xe8>
   24238: 7100059f     	cmp	w12, #0x1
   2423c: 540000c0     	b.eq	0x24254 <ghost_check_area+0xa4>
   24240: 14000025     	b	0x242d4 <ghost_check_area+0x124>
   24244: 7100099f     	cmp	w12, #0x2
   24248: 54000340     	b.eq	0x242b0 <ghost_check_area+0x100>
   2424c: 71000d9f     	cmp	w12, #0x3
   24250: 54000421     	b.ne	0x242d4 <ghost_check_area+0x124>
   24254: b944a50c     	ldr	w12, [x8, #0x4a4]
   24258: 6b09019f     	cmp	w12, w9
   2425c: 5400008c     	b.gt	0x2426c <ghost_check_area+0xbc>
   24260: 4b0c016b     	sub	w11, w11, w12
   24264: 6b09017f     	cmp	w11, w9
   24268: 5400036a     	b.ge	0x242d4 <ghost_check_area+0x124>
   2426c: b944a109     	ldr	w9, [x8, #0x4a0]
   24270: 6b0a013f     	cmp	w9, w10
   24274: 5400032c     	b.gt	0x242d8 <ghost_check_area+0x128>
   24278: 79488908     	ldrh	w8, [x8, #0x444]
   2427c: 4b090108     	sub	w8, w8, w9
   24280: 6b0a011f     	cmp	w8, w10
   24284: 5400028a     	b.ge	0x242d4 <ghost_check_area+0x124>
   24288: 14000014     	b	0x242d8 <ghost_check_area+0x128>
   2428c: 90000000     	adrp	x0, 0x24000 <tpd_touch_release+0x48c>
		000000000002428c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125f4
   24290: 91000000     	add	x0, x0, #0x0
		0000000000024290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125f4
   24294: 14000013     	b	0x242e0 <ghost_check_area+0x130>
   24298: 7948890c     	ldrh	w12, [x8, #0x444]
   2429c: b944a50d     	ldr	w13, [x8, #0x4a4]
   242a0: 4b0d018c     	sub	w12, w12, w13
   242a4: 6b0a019f     	cmp	w12, w10
   242a8: 5400016a     	b.ge	0x242d4 <ghost_check_area+0x124>
   242ac: 14000004     	b	0x242bc <ghost_check_area+0x10c>
   242b0: b944a50c     	ldr	w12, [x8, #0x4a4]
   242b4: 6b0a019f     	cmp	w12, w10
   242b8: 540000ed     	b.le	0x242d4 <ghost_check_area+0x124>
   242bc: b944a108     	ldr	w8, [x8, #0x4a0]
   242c0: 6b09011f     	cmp	w8, w9
   242c4: 540000ac     	b.gt	0x242d8 <ghost_check_area+0x128>
   242c8: 4b080168     	sub	w8, w11, w8
   242cc: 6b09011f     	cmp	w8, w9
   242d0: 5400004b     	b.lt	0x242d8 <ghost_check_area+0x128>
   242d4: d65f03c0     	ret
   242d8: 90000000     	adrp	x0, 0x24000 <tpd_touch_release+0x48c>
		00000000000242d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c820
   242dc: 91000000     	add	x0, x0, #0x0
		00000000000242dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c820
   242e0: d503233f     	paciasp
   242e4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   242e8: 910003fd     	mov	x29, sp
   242ec: 94000000     	bl	0x242ec <ghost_check_area+0x13c>
		00000000000242ec:  R_AARCH64_CALL26	_printk
   242f0: 2a1f03e0     	mov	w0, wzr
   242f4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   242f8: d50323bf     	autiasp
   242fc: d65f03c0     	ret
