
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e764 <syna_dev_set_up_app_fw>:
    e764: b4000420     	cbz	x0, 0xe7e8 <syna_dev_set_up_app_fw+0x84>
    e768: d503233f     	paciasp
    e76c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e770: a9014ff4     	stp	x20, x19, [sp, #0x10]
    e774: 910003fd     	mov	x29, sp
    e778: f9413808     	ldr	x8, [x0, #0x270]
    e77c: f9400013     	ldr	x19, [x0]
    e780: b102a11f     	cmn	x8, #0xa8
    e784: 540000e0     	b.eq	0xe7a0 <syna_dev_set_up_app_fw+0x3c>
    e788: b940b909     	ldr	w9, [x8, #0xb8]
    e78c: 340000a9     	cbz	w9, 0xe7a0 <syna_dev_set_up_app_fw+0x3c>
    e790: 3942f108     	ldrb	w8, [x8, #0xbc]
    e794: 36000068     	tbz	w8, #0x0, 0xe7a0 <syna_dev_set_up_app_fw+0x3c>
    e798: 2a1f03f4     	mov	w20, wzr
    e79c: 14000002     	b	0xe7a4 <syna_dev_set_up_app_fw+0x40>
    e7a0: b9420e74     	ldr	w20, [x19, #0x20c]
    e7a4: 39402662     	ldrb	w2, [x19, #0x9]
    e7a8: 7100045f     	cmp	w2, #0x1
    e7ac: 54000221     	b.ne	0xe7f0 <syna_dev_set_up_app_fw+0x8c>
    e7b0: 9102c261     	add	x1, x19, #0xb0
    e7b4: aa1303e0     	mov	x0, x19
    e7b8: 2a1403e2     	mov	w2, w20
    e7bc: 94000000     	bl	0xe7bc <syna_dev_set_up_app_fw+0x58>
		000000000000e7bc:  R_AARCH64_CALL26	syna_tcm_get_app_info
    e7c0: 37f80260     	tbnz	w0, #0x1f, 0xe80c <syna_dev_set_up_app_fw+0xa8>
    e7c4: aa1303e0     	mov	x0, x19
    e7c8: 2a1403e1     	mov	w1, w20
    e7cc: 94000000     	bl	0xe7cc <syna_dev_set_up_app_fw+0x68>
		000000000000e7cc:  R_AARCH64_CALL26	syna_tcm_preserve_touch_report_config
    e7d0: 37f80240     	tbnz	w0, #0x1f, 0xe818 <syna_dev_set_up_app_fw+0xb4>
    e7d4: 2a1f03e0     	mov	w0, wzr
    e7d8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    e7dc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e7e0: d50323bf     	autiasp
    e7e4: d65f03c0     	ret
    e7e8: 128002a0     	mov	w0, #-0x16              // =-22
    e7ec: d65f03c0     	ret
    e7f0: 90000000     	adrp	x0, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e7f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1930
    e7f4: 91000000     	add	x0, x0, #0x0
		000000000000e7f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1930
    e7f8: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e7f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78c
    e7fc: 91000021     	add	x1, x1, #0x0
		000000000000e7fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78c
    e800: 94000000     	bl	0xe800 <syna_dev_set_up_app_fw+0x9c>
		000000000000e800:  R_AARCH64_CALL26	_printk
    e804: 128002a0     	mov	w0, #-0x16              // =-22
    e808: 17fffff4     	b	0xe7d8 <syna_dev_set_up_app_fw+0x74>
    e80c: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e80c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1310
    e810: 91000108     	add	x8, x8, #0x0
		000000000000e810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1310
    e814: 14000003     	b	0xe820 <syna_dev_set_up_app_fw+0xbc>
    e818: 90000008     	adrp	x8, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d1a
    e81c: 91000108     	add	x8, x8, #0x0
		000000000000e81c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d1a
    e820: 90000001     	adrp	x1, 0xe000 <tpd_zlog_record_notify+0xab0>
		000000000000e820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78c
    e824: 91000021     	add	x1, x1, #0x0
		000000000000e824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78c
    e828: 2a0003f3     	mov	w19, w0
    e82c: aa0803e0     	mov	x0, x8
    e830: 94000000     	bl	0xe830 <syna_dev_set_up_app_fw+0xcc>
		000000000000e830:  R_AARCH64_CALL26	_printk
    e834: 2a1303e0     	mov	w0, w19
    e838: 17ffffe8     	b	0xe7d8 <syna_dev_set_up_app_fw+0x74>
