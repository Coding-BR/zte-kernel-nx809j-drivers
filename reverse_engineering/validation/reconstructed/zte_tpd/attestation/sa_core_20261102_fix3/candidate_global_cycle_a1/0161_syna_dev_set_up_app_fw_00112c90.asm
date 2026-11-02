
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e7c0 <syna_dev_set_up_app_fw>:
    e7c0: b4000420     	cbz	x0, 0xe844 <syna_dev_set_up_app_fw+0x84>
    e7c4: d503233f     	paciasp
    e7c8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e7cc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    e7d0: 910003fd     	mov	x29, sp
    e7d4: f9413808     	ldr	x8, [x0, #0x270]
    e7d8: f9400013     	ldr	x19, [x0]
    e7dc: b102a11f     	cmn	x8, #0xa8
    e7e0: 540000e0     	b.eq	0xe7fc <syna_dev_set_up_app_fw+0x3c>
    e7e4: b940b909     	ldr	w9, [x8, #0xb8]
    e7e8: 340000a9     	cbz	w9, 0xe7fc <syna_dev_set_up_app_fw+0x3c>
    e7ec: 3942f108     	ldrb	w8, [x8, #0xbc]
    e7f0: 36000068     	tbz	w8, #0x0, 0xe7fc <syna_dev_set_up_app_fw+0x3c>
    e7f4: 2a1f03f4     	mov	w20, wzr
    e7f8: 14000002     	b	0xe800 <syna_dev_set_up_app_fw+0x40>
    e7fc: b9420e74     	ldr	w20, [x19, #0x20c]
    e800: 39402662     	ldrb	w2, [x19, #0x9]
    e804: 7100045f     	cmp	w2, #0x1
    e808: 54000221     	b.ne	0xe84c <syna_dev_set_up_app_fw+0x8c>
    e80c: 9102c261     	add	x1, x19, #0xb0
    e810: aa1303e0     	mov	x0, x19
    e814: 2a1403e2     	mov	w2, w20
    e818: 94000000     	bl	0xe818 <syna_dev_set_up_app_fw+0x58>
		000000000000e818:  R_AARCH64_CALL26	syna_tcm_get_app_info
    e81c: 37f80260     	tbnz	w0, #0x1f, 0xe868 <syna_dev_set_up_app_fw+0xa8>
    e820: aa1303e0     	mov	x0, x19
    e824: 2a1403e1     	mov	w1, w20
    e828: 94000000     	bl	0xe828 <syna_dev_set_up_app_fw+0x68>
		000000000000e828:  R_AARCH64_CALL26	syna_tcm_preserve_touch_report_config
    e82c: 37f80240     	tbnz	w0, #0x1f, 0xe874 <syna_dev_set_up_app_fw+0xb4>
    e830: 2a1f03e0     	mov	w0, wzr
    e834: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    e838: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e83c: d50323bf     	autiasp
    e840: d65f03c0     	ret
    e844: 128002a0     	mov	w0, #-0x16              // =-22
    e848: d65f03c0     	ret
    e84c: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e84c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1930
    e850: 91000000     	add	x0, x0, #0x0
		000000000000e850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1930
    e854: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78c
    e858: 91000021     	add	x1, x1, #0x0
		000000000000e858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78c
    e85c: 94000000     	bl	0xe85c <syna_dev_set_up_app_fw+0x9c>
		000000000000e85c:  R_AARCH64_CALL26	_printk
    e860: 128002a0     	mov	w0, #-0x16              // =-22
    e864: 17fffff4     	b	0xe834 <syna_dev_set_up_app_fw+0x74>
    e868: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1310
    e86c: 91000108     	add	x8, x8, #0x0
		000000000000e86c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1310
    e870: 14000003     	b	0xe87c <syna_dev_set_up_app_fw+0xbc>
    e874: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d1a
    e878: 91000108     	add	x8, x8, #0x0
		000000000000e878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d1a
    e87c: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xa54>
		000000000000e87c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78c
    e880: 91000021     	add	x1, x1, #0x0
		000000000000e880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78c
    e884: 2a0003f3     	mov	w19, w0
    e888: aa0803e0     	mov	x0, x8
    e88c: 94000000     	bl	0xe88c <syna_dev_set_up_app_fw+0xcc>
		000000000000e88c:  R_AARCH64_CALL26	_printk
    e890: 2a1303e0     	mov	w0, w19
    e894: 17ffffe8     	b	0xe834 <syna_dev_set_up_app_fw+0x74>
