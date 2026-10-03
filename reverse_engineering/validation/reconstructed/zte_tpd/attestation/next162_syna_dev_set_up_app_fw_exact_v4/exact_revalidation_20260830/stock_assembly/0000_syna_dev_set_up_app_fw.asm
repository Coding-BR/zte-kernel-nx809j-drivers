
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000c408 <syna_dev_set_up_app_fw>:
    c408: b4000420     	cbz	x0, 0xc48c <syna_dev_set_up_app_fw+0x84>
    c40c: d503233f     	paciasp
    c410: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    c414: a9014ff4     	stp	x20, x19, [sp, #0x10]
    c418: 910003fd     	mov	x29, sp
    c41c: f9413808     	ldr	x8, [x0, #0x270]
    c420: f9400013     	ldr	x19, [x0]
    c424: b102a11f     	cmn	x8, #0xa8
    c428: 540000e0     	b.eq	0xc444 <syna_dev_set_up_app_fw+0x3c>
    c42c: b940b909     	ldr	w9, [x8, #0xb8]
    c430: 340000a9     	cbz	w9, 0xc444 <syna_dev_set_up_app_fw+0x3c>
    c434: 3942f108     	ldrb	w8, [x8, #0xbc]
    c438: 36000068     	tbz	w8, #0x0, 0xc444 <syna_dev_set_up_app_fw+0x3c>
    c43c: 2a1f03f4     	mov	w20, wzr
    c440: 14000002     	b	0xc448 <syna_dev_set_up_app_fw+0x40>
    c444: b9420e74     	ldr	w20, [x19, #0x20c]
    c448: 39402662     	ldrb	w2, [x19, #0x9]
    c44c: 7100045f     	cmp	w2, #0x1
    c450: 54000221     	b.ne	0xc494 <syna_dev_set_up_app_fw+0x8c>
    c454: 9102c261     	add	x1, x19, #0xb0
    c458: aa1303e0     	mov	x0, x19
    c45c: 2a1403e2     	mov	w2, w20
    c460: 94000000     	bl	0xc460 <syna_dev_set_up_app_fw+0x58>
		000000000000c460:  R_AARCH64_CALL26	syna_tcm_get_app_info
    c464: 37f80260     	tbnz	w0, #0x1f, 0xc4b0 <syna_dev_set_up_app_fw+0xa8>
    c468: aa1303e0     	mov	x0, x19
    c46c: 2a1403e1     	mov	w1, w20
    c470: 94000000     	bl	0xc470 <syna_dev_set_up_app_fw+0x68>
		000000000000c470:  R_AARCH64_CALL26	syna_tcm_preserve_touch_report_config
    c474: 37f80240     	tbnz	w0, #0x1f, 0xc4bc <syna_dev_set_up_app_fw+0xb4>
    c478: 2a1f03e0     	mov	w0, wzr
    c47c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    c480: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    c484: d50323bf     	autiasp
    c488: d65f03c0     	ret
    c48c: 128002a0     	mov	w0, #-0x16              // =-22
    c490: d65f03c0     	ret
    c494: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000c494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d7
    c498: 91000000     	add	x0, x0, #0x0
		000000000000c498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d7
    c49c: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c49c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x771
    c4a0: 91000021     	add	x1, x1, #0x0
		000000000000c4a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x771
    c4a4: 94000000     	bl	0xc4a4 <syna_dev_set_up_app_fw+0x9c>
		000000000000c4a4:  R_AARCH64_CALL26	_printk
    c4a8: 128002a0     	mov	w0, #-0x16              // =-22
    c4ac: 17fffff4     	b	0xc47c <syna_dev_set_up_app_fw+0x74>
    c4b0: 90000008     	adrp	x8, 0xc000 <syna_dev_connect+0x174>
		000000000000c4b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c9
    c4b4: 91000108     	add	x8, x8, #0x0
		000000000000c4b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c9
    c4b8: 14000003     	b	0xc4c4 <syna_dev_set_up_app_fw+0xbc>
    c4bc: 90000008     	adrp	x8, 0xc000 <syna_dev_connect+0x174>
		000000000000c4bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c03
    c4c0: 91000108     	add	x8, x8, #0x0
		000000000000c4c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c03
    c4c4: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000c4c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x771
    c4c8: 91000021     	add	x1, x1, #0x0
		000000000000c4c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x771
    c4cc: 2a0003f3     	mov	w19, w0
    c4d0: aa0803e0     	mov	x0, x8
    c4d4: 94000000     	bl	0xc4d4 <syna_dev_set_up_app_fw+0xcc>
		000000000000c4d4:  R_AARCH64_CALL26	_printk
    c4d8: 2a1303e0     	mov	w0, w19
    c4dc: 17ffffe8     	b	0xc47c <syna_dev_set_up_app_fw+0x74>
