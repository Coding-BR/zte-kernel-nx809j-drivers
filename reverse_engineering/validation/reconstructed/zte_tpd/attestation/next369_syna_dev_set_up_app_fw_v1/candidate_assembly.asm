
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a514 <syna_dev_set_up_app_fw>:
    a514: b40003e0     	cbz	x0, 0xa590 <syna_dev_set_up_app_fw+0x7c>
    a518: d503233f     	paciasp
    a51c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a520: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a524: 910003fd     	mov	x29, sp
    a528: f9413808     	ldr	x8, [x0, #0x270]
    a52c: f9400013     	ldr	x19, [x0]
    a530: b102a11f     	cmn	x8, #0xa8
    a534: 540000a0     	b.eq	0xa548 <syna_dev_set_up_app_fw+0x34>
    a538: b940b909     	ldr	w9, [x8, #0xb8]
    a53c: 34000069     	cbz	w9, 0xa548 <syna_dev_set_up_app_fw+0x34>
    a540: 3942f108     	ldrb	w8, [x8, #0xbc]
    a544: 370002a8     	tbnz	w8, #0x0, 0xa598 <syna_dev_set_up_app_fw+0x84>
    a548: b9420e74     	ldr	w20, [x19, #0x20c]
    a54c: 39402662     	ldrb	w2, [x19, #0x9]
    a550: f100045f     	cmp	x2, #0x1
    a554: 54000261     	b.ne	0xa5a0 <syna_dev_set_up_app_fw+0x8c>
    a558: 9102c261     	add	x1, x19, #0xb0
    a55c: aa1303e0     	mov	x0, x19
    a560: 2a1403e2     	mov	w2, w20
    a564: 94000000     	bl	0xa564 <syna_dev_set_up_app_fw+0x50>
		000000000000a564:  R_AARCH64_CALL26	syna_tcm_get_app_info
    a568: 37f802a0     	tbnz	w0, #0x1f, 0xa5bc <syna_dev_set_up_app_fw+0xa8>
    a56c: aa1303e0     	mov	x0, x19
    a570: 2a1403e1     	mov	w1, w20
    a574: 94000000     	bl	0xa574 <syna_dev_set_up_app_fw+0x60>
		000000000000a574:  R_AARCH64_CALL26	syna_tcm_preserve_touch_report_config
    a578: 37f802a0     	tbnz	w0, #0x1f, 0xa5cc <syna_dev_set_up_app_fw+0xb8>
    a57c: 2a1f03e0     	mov	w0, wzr
    a580: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a584: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a588: d50323bf     	autiasp
    a58c: d65f03c0     	ret
    a590: 128002a0     	mov	w0, #-0x16              // =-22
    a594: d65f03c0     	ret
    a598: 2a1f03f4     	mov	w20, wzr
    a59c: 17ffffec     	b	0xa54c <syna_dev_set_up_app_fw+0x38>
    a5a0: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a5a0:  R_AARCH64_ADR_PREL_PG_HI21	unk_32EDC
    a5a4: 91000000     	add	x0, x0, #0x0
		000000000000a5a4:  R_AARCH64_ADD_ABS_LO12_NC	unk_32EDC
    a5a8: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a5a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48d
    a5ac: 91000021     	add	x1, x1, #0x0
		000000000000a5ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48d
    a5b0: 94000000     	bl	0xa5b0 <syna_dev_set_up_app_fw+0x9c>
		000000000000a5b0:  R_AARCH64_CALL26	_printk
    a5b4: 128002a0     	mov	w0, #-0x16              // =-22
    a5b8: 17fffff2     	b	0xa580 <syna_dev_set_up_app_fw+0x6c>
    a5bc: 2a0003f3     	mov	w19, w0
    a5c0: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a5c0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3298B
    a5c4: 91000000     	add	x0, x0, #0x0
		000000000000a5c4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3298B
    a5c8: 14000004     	b	0xa5d8 <syna_dev_set_up_app_fw+0xc4>
    a5cc: 2a0003f3     	mov	w19, w0
    a5d0: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a5d0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3609B
    a5d4: 91000000     	add	x0, x0, #0x0
		000000000000a5d4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3609B
    a5d8: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x10>
		000000000000a5d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48d
    a5dc: 91000021     	add	x1, x1, #0x0
		000000000000a5dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48d
    a5e0: aa1f03e2     	mov	x2, xzr
    a5e4: 94000000     	bl	0xa5e4 <syna_dev_set_up_app_fw+0xd0>
		000000000000a5e4:  R_AARCH64_CALL26	_printk
    a5e8: 2a1303e0     	mov	w0, w19
    a5ec: 17ffffe5     	b	0xa580 <syna_dev_set_up_app_fw+0x6c>
