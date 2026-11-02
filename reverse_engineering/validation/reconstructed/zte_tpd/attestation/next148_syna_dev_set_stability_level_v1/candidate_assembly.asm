
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a220 <syna_dev_set_stability_level>:
    a220: d503233f     	paciasp
    a224: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a228: f9000bf5     	str	x21, [sp, #0x10]
    a22c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a230: 910003fd     	mov	x29, sp
    a234: 2a0103f5     	mov	w21, w1
    a238: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bc1
    a23c: 91000021     	add	x1, x1, #0x0
		000000000000a23c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bc1
    a240: 2a0203f3     	mov	w19, w2
    a244: aa0003f4     	mov	x20, x0
    a248: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a248:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A85B
    a24c: 91000000     	add	x0, x0, #0x0
		000000000000a24c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A85B
    a250: aa0103e2     	mov	x2, x1
    a254: 94000000     	bl	0xa254 <syna_dev_set_stability_level+0x34>
		000000000000a254:  R_AARCH64_CALL26	_printk
    a258: b4000254     	cbz	x20, 0xa2a0 <syna_dev_set_stability_level+0x80>
    a25c: 710006bf     	cmp	w21, #0x1
    a260: 5400024c     	b.gt	0xa2a8 <syna_dev_set_stability_level+0x88>
    a264: 34000475     	cbz	w21, 0xa2f0 <syna_dev_set_stability_level+0xd0>
    a268: 710006bf     	cmp	w21, #0x1
    a26c: 54000881     	b.ne	0xa37c <syna_dev_set_stability_level+0x15c>
    a270: b945fe88     	ldr	w8, [x20, #0x5fc]
    a274: b9460289     	ldr	w9, [x20, #0x600]
    a278: 52801f21     	mov	w1, #0xf9               // =249
    a27c: f9400280     	ldr	x0, [x20]
    a280: 2a1303e3     	mov	w3, w19
    a284: 2a091108     	orr	w8, w8, w9, lsl #4
    a288: 32180102     	orr	w2, w8, #0x100
    a28c: 94000000     	bl	0xa28c <syna_dev_set_stability_level+0x6c>
		000000000000a28c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a290: 37f80840     	tbnz	w0, #0x1f, 0xa398 <syna_dev_set_stability_level+0x178>
    a294: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a294:  R_AARCH64_ADR_PREL_PG_HI21	unk_36F87
    a298: 91000000     	add	x0, x0, #0x0
		000000000000a298:  R_AARCH64_ADD_ABS_LO12_NC	unk_36F87
    a29c: 1400003a     	b	0xa384 <syna_dev_set_stability_level+0x164>
    a2a0: 128002a0     	mov	w0, #-0x16              // =-22
    a2a4: 1400003d     	b	0xa398 <syna_dev_set_stability_level+0x178>
    a2a8: 710012bf     	cmp	w21, #0x4
    a2ac: 54000380     	b.eq	0xa31c <syna_dev_set_stability_level+0xfc>
    a2b0: 71000ebf     	cmp	w21, #0x3
    a2b4: 540004c0     	b.eq	0xa34c <syna_dev_set_stability_level+0x12c>
    a2b8: 71000abf     	cmp	w21, #0x2
    a2bc: 54000601     	b.ne	0xa37c <syna_dev_set_stability_level+0x15c>
    a2c0: b945fe88     	ldr	w8, [x20, #0x5fc]
    a2c4: b9460289     	ldr	w9, [x20, #0x600]
    a2c8: 52801f21     	mov	w1, #0xf9               // =249
    a2cc: f9400280     	ldr	x0, [x20]
    a2d0: 2a1303e3     	mov	w3, w19
    a2d4: 2a091108     	orr	w8, w8, w9, lsl #4
    a2d8: 32170102     	orr	w2, w8, #0x200
    a2dc: 94000000     	bl	0xa2dc <syna_dev_set_stability_level+0xbc>
		000000000000a2dc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a2e0: 37f805c0     	tbnz	w0, #0x1f, 0xa398 <syna_dev_set_stability_level+0x178>
    a2e4: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a2e4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A1F3
    a2e8: 91000000     	add	x0, x0, #0x0
		000000000000a2e8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A1F3
    a2ec: 14000026     	b	0xa384 <syna_dev_set_stability_level+0x164>
    a2f0: b945fe88     	ldr	w8, [x20, #0x5fc]
    a2f4: b9460289     	ldr	w9, [x20, #0x600]
    a2f8: 52801f21     	mov	w1, #0xf9               // =249
    a2fc: f9400280     	ldr	x0, [x20]
    a300: 2a1303e3     	mov	w3, w19
    a304: 2a091102     	orr	w2, w8, w9, lsl #4
    a308: 94000000     	bl	0xa308 <syna_dev_set_stability_level+0xe8>
		000000000000a308:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a30c: 37f80460     	tbnz	w0, #0x1f, 0xa398 <syna_dev_set_stability_level+0x178>
    a310: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a310:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B0D9
    a314: 91000000     	add	x0, x0, #0x0
		000000000000a314:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B0D9
    a318: 1400001b     	b	0xa384 <syna_dev_set_stability_level+0x164>
    a31c: b945fe88     	ldr	w8, [x20, #0x5fc]
    a320: b9460289     	ldr	w9, [x20, #0x600]
    a324: 52801f21     	mov	w1, #0xf9               // =249
    a328: f9400280     	ldr	x0, [x20]
    a32c: 2a1303e3     	mov	w3, w19
    a330: 2a091108     	orr	w8, w8, w9, lsl #4
    a334: 32160102     	orr	w2, w8, #0x400
    a338: 94000000     	bl	0xa338 <syna_dev_set_stability_level+0x118>
		000000000000a338:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a33c: 37f802e0     	tbnz	w0, #0x1f, 0xa398 <syna_dev_set_stability_level+0x178>
    a340: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a340:  R_AARCH64_ADR_PREL_PG_HI21	unk_35465
    a344: 91000000     	add	x0, x0, #0x0
		000000000000a344:  R_AARCH64_ADD_ABS_LO12_NC	unk_35465
    a348: 1400000f     	b	0xa384 <syna_dev_set_stability_level+0x164>
    a34c: b945fe88     	ldr	w8, [x20, #0x5fc]
    a350: b9460289     	ldr	w9, [x20, #0x600]
    a354: 52801f21     	mov	w1, #0xf9               // =249
    a358: f9400280     	ldr	x0, [x20]
    a35c: 2a1303e3     	mov	w3, w19
    a360: 2a091108     	orr	w8, w8, w9, lsl #4
    a364: 32180502     	orr	w2, w8, #0x300
    a368: 94000000     	bl	0xa368 <syna_dev_set_stability_level+0x148>
		000000000000a368:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    a36c: 37f80160     	tbnz	w0, #0x1f, 0xa398 <syna_dev_set_stability_level+0x178>
    a370: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a370:  R_AARCH64_ADR_PREL_PG_HI21	unk_3984B
    a374: 91000000     	add	x0, x0, #0x0
		000000000000a374:  R_AARCH64_ADD_ABS_LO12_NC	unk_3984B
    a378: 14000003     	b	0xa384 <syna_dev_set_stability_level+0x164>
    a37c: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a37c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BDBF
    a380: 91000000     	add	x0, x0, #0x0
		000000000000a380:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BDBF
    a384: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5bc1
    a388: 91000021     	add	x1, x1, #0x0
		000000000000a388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5bc1
    a38c: aa0103e2     	mov	x2, x1
    a390: 94000000     	bl	0xa390 <syna_dev_set_stability_level+0x170>
		000000000000a390:  R_AARCH64_CALL26	_printk
    a394: 2a1f03e0     	mov	w0, wzr
    a398: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a39c: f9400bf5     	ldr	x21, [sp, #0x10]
    a3a0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a3a4: d50323bf     	autiasp
    a3a8: d65f03c0     	ret
