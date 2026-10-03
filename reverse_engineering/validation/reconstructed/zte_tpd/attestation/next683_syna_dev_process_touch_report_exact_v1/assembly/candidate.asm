
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002972c <syna_dev_process_touch_report>:
   2972c: d503233f     	paciasp
   29730: d10243ff     	sub	sp, sp, #0x90
   29734: a9037bfd     	stp	x29, x30, [sp, #0x30]
   29738: a9046ffc     	stp	x28, x27, [sp, #0x40]
   2973c: a90567fa     	stp	x26, x25, [sp, #0x50]
   29740: a9065ff8     	stp	x24, x23, [sp, #0x60]
   29744: a90757f6     	stp	x22, x21, [sp, #0x70]
   29748: a9084ff4     	stp	x20, x19, [sp, #0x80]
   2974c: 9100c3fd     	add	x29, sp, #0x30
   29750: d5384108     	mrs	x8, SP_EL0
   29754: f9438908     	ldr	x8, [x8, #0x710]
   29758: f81f83a8     	stur	x8, [x29, #-0x8]
   2975c: b40020c3     	cbz	x3, 0x29b74 <syna_dev_process_touch_report+0x448>
   29760: 12001c08     	and	w8, w0, #0xff
   29764: 7100451f     	cmp	w8, #0x11
   29768: 54002141     	b.ne	0x29b90 <syna_dev_process_touch_report+0x464>
   2976c: b9438468     	ldr	w8, [x3, #0x384]
   29770: aa0303f3     	mov	x19, x3
   29774: 7100051f     	cmp	w8, #0x1
   29778: 5400008b     	b.lt	0x29788 <syna_dev_process_touch_report+0x5c>
   2977c: 39561268     	ldrb	w8, [x19, #0x584]
   29780: 7100051f     	cmp	w8, #0x1
   29784: 54001da1     	b.ne	0x29b38 <syna_dev_process_touch_report+0x40c>
   29788: b945e268     	ldr	w8, [x19, #0x5e0]
   2978c: 34000288     	cbz	w8, 0x297dc <syna_dev_process_touch_report+0xb0>
   29790: 52840008     	mov	w8, #0x2000             // =8192
   29794: 7140c85f     	cmp	w2, #0x32, lsl #12      // =0x32000
   29798: f9423260     	ldr	x0, [x19, #0x460]
   2979c: 72a00068     	movk	w8, #0x3, lsl #16
   297a0: 2a0203f6     	mov	w22, w2
   297a4: aa0103f4     	mov	x20, x1
   297a8: 1a883055     	csel	w21, w2, w8, lo
   297ac: aa1503e2     	mov	x2, x21
   297b0: 94000000     	bl	0x297b0 <syna_dev_process_touch_report+0x84>
		00000000000297b0:  R_AARCH64_CALL26	memcpy
   297b4: 52800028     	mov	w8, #0x1                // =1
   297b8: 91112260     	add	x0, x19, #0x448
   297bc: 52800021     	mov	w1, #0x1                // =1
   297c0: 52800022     	mov	w2, #0x1                // =1
   297c4: aa1f03e3     	mov	x3, xzr
   297c8: b9043a75     	str	w21, [x19, #0x438]
   297cc: b9046a68     	str	w8, [x19, #0x468]
   297d0: 94000000     	bl	0x297d0 <syna_dev_process_touch_report+0xa4>
		00000000000297d0:  R_AARCH64_CALL26	__wake_up
   297d4: aa1403e1     	mov	x1, x20
   297d8: 2a1603e2     	mov	w2, w22
   297dc: aa1303e3     	mov	x3, x19
   297e0: f8410460     	ldr	x0, [x3], #0x10
   297e4: 94000000     	bl	0x297e4 <syna_dev_process_touch_report+0xb8>
		00000000000297e4:  R_AARCH64_CALL26	syna_tcm_parse_touch_report
   297e8: 37f81e40     	tbnz	w0, #0x1f, 0x29bb0 <syna_dev_process_touch_report+0x484>
   297ec: f941da74     	ldr	x20, [x19, #0x3b0]
   297f0: b4001a54     	cbz	x20, 0x29b38 <syna_dev_process_touch_report+0x40c>
   297f4: f9400268     	ldr	x8, [x19]
   297f8: 90000009     	adrp	x9, 0x29000 <syna_dev_disconnect+0x17c>
		00000000000297f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   297fc: 9109e260     	add	x0, x19, #0x278
   29800: b9401919     	ldr	w25, [x8, #0x18]
   29804: f9400128     	ldr	x8, [x9]
		0000000000029804:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   29808: f9000be8     	str	x8, [sp, #0x10]
   2980c: 94000000     	bl	0x2980c <syna_dev_process_touch_report+0xe0>
		000000000002980c:  R_AARCH64_CALL26	mutex_lock
   29810: b9457e68     	ldr	w8, [x19, #0x57c]
   29814: 7100091f     	cmp	w8, #0x2
   29818: 54000081     	b.ne	0x29828 <syna_dev_process_touch_report+0xfc>
   2981c: 394bd268     	ldrb	w8, [x19, #0x2f4]
   29820: 7100051f     	cmp	w8, #0x1
   29824: 54001d80     	b.eq	0x29bd4 <syna_dev_process_touch_report+0x4a8>
   29828: b9422268     	ldr	w8, [x19, #0x220]
   2982c: 7102011f     	cmp	w8, #0x80
   29830: 540000a0     	b.eq	0x29844 <syna_dev_process_touch_report+0x118>
   29834: 7102051f     	cmp	w8, #0x81
   29838: 540000a1     	b.ne	0x2984c <syna_dev_process_touch_report+0x120>
   2983c: 2a1f03e0     	mov	w0, wzr
   29840: 14000002     	b	0x29848 <syna_dev_process_touch_report+0x11c>
   29844: 52800020     	mov	w0, #0x1                // =1
   29848: 94000000     	bl	0x29848 <syna_dev_process_touch_report+0x11c>
		0000000000029848:  R_AARCH64_CALL26	report_ufp_uevent
   2984c: b9457e68     	ldr	w8, [x19, #0x57c]
   29850: 7100091f     	cmp	w8, #0x2
   29854: 540016e0     	b.eq	0x29b30 <syna_dev_process_touch_report+0x404>
   29858: 340014f9     	cbz	w25, 0x29af4 <syna_dev_process_touch_report+0x3c8>
   2985c: aa1f03f5     	mov	x21, xzr
   29860: 2a1f03fb     	mov	w27, wzr
   29864: 91099277     	add	x23, x19, #0x264
   29868: 9100a276     	add	x22, x19, #0x28
   2986c: f90007f9     	str	x25, [sp, #0x8]
   29870: 14000010     	b	0x298b0 <syna_dev_process_touch_report+0x184>
   29874: aa1403e0     	mov	x0, x20
   29878: 52800061     	mov	w1, #0x3                // =3
   2987c: 528005e2     	mov	w2, #0x2f               // =47
   29880: 2a1503e3     	mov	w3, w21
   29884: 94000000     	bl	0x29884 <syna_dev_process_touch_report+0x158>
		0000000000029884:  R_AARCH64_CALL26	input_event
   29888: aa1403e0     	mov	x0, x20
   2988c: 2a1f03e1     	mov	w1, wzr
   29890: 2a1f03e2     	mov	w2, wzr
   29894: 94000000     	bl	0x29894 <syna_dev_process_touch_report+0x168>
		0000000000029894:  R_AARCH64_CALL26	input_mt_report_slot_state
   29898: 385f02c8     	ldurb	w8, [x22, #-0x10]
   2989c: 9100d2d6     	add	x22, x22, #0x34
   298a0: 38356ae8     	strb	w8, [x23, x21]
   298a4: 910006b5     	add	x21, x21, #0x1
   298a8: eb15033f     	cmp	x25, x21
   298ac: 54001220     	b.eq	0x29af0 <syna_dev_process_touch_report+0x3c4>
   298b0: 385f02c8     	ldurb	w8, [x22, #-0x10]
   298b4: 7100191f     	cmp	w8, #0x6
   298b8: 540001a1     	b.ne	0x298ec <syna_dev_process_touch_report+0x1c0>
   298bc: b945e668     	ldr	w8, [x19, #0x5e4]
   298c0: 34000168     	cbz	w8, 0x298ec <syna_dev_process_touch_report+0x1c0>
   298c4: 90000008     	adrp	x8, 0x29000 <syna_dev_disconnect+0x17c>
		00000000000298c4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   298c8: f9400108     	ldr	x8, [x8]
		00000000000298c8:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   298cc: b4000de8     	cbz	x8, 0x29a88 <syna_dev_process_touch_report+0x35c>
   298d0: 90000009     	adrp	x9, 0x29000 <syna_dev_disconnect+0x17c>
		00000000000298d0:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
   298d4: b9400129     	ldr	w9, [x9]
		00000000000298d4:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
   298d8: 36f80e09     	tbz	w9, #0x1f, 0x29a98 <syna_dev_process_touch_report+0x36c>
   298dc: 90000009     	adrp	x9, 0x29000 <syna_dev_disconnect+0x17c>
		00000000000298dc:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
   298e0: b9400129     	ldr	w9, [x9]
		00000000000298e0:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   298e4: 7100093f     	cmp	w9, #0x2
   298e8: 54000e6d     	b.le	0x29ab4 <syna_dev_process_touch_report+0x388>
   298ec: f1002abf     	cmp	x21, #0xa
   298f0: 54001b80     	b.eq	0x29c60 <syna_dev_process_touch_report+0x534>
   298f4: 38756ae9     	ldrb	w9, [x23, x21]
   298f8: 385f02c8     	ldurb	w8, [x22, #-0x10]
   298fc: 35000049     	cbnz	w9, 0x29904 <syna_dev_process_touch_report+0x1d8>
   29900: 34fffcc8     	cbz	w8, 0x29898 <syna_dev_process_touch_report+0x16c>
   29904: 51000509     	sub	w9, w8, #0x1
   29908: 7100093f     	cmp	w9, #0x2
   2990c: 540001c2     	b.hs	0x29944 <syna_dev_process_touch_report+0x218>
   29910: b9461a68     	ldr	w8, [x19, #0x618]
   29914: b85f42d9     	ldur	w25, [x22, #-0xc]
   29918: 7100111f     	cmp	w8, #0x4
   2991c: 54000361     	b.ne	0x29988 <syna_dev_process_touch_report+0x25c>
   29920: 297f72c8     	ldp	w8, w28, [x22, #-0x8]
   29924: 529999aa     	mov	w10, #0xcccd            // =52429
   29928: b94002d8     	ldr	w24, [x22]
   2992c: 72b9998a     	movk	w10, #0xcccc, lsl #16
   29930: 9baa7f29     	umull	x9, w25, w10
   29934: 9baa7d08     	umull	x8, w8, w10
   29938: d363fd39     	lsr	x25, x9, #35
   2993c: d363fd1a     	lsr	x26, x8, #35
   29940: 14000026     	b	0x299d8 <syna_dev_process_touch_report+0x2ac>
   29944: 35fffaa8     	cbnz	w8, 0x29898 <syna_dev_process_touch_report+0x16c>
   29948: f9400be8     	ldr	x8, [sp, #0x10]
   2994c: 39406d08     	ldrb	w8, [x8, #0x1b]
   29950: 7100051f     	cmp	w8, #0x1
   29954: 54fff901     	b.ne	0x29874 <syna_dev_process_touch_report+0x148>
   29958: b9461a68     	ldr	w8, [x19, #0x618]
   2995c: 7100111f     	cmp	w8, #0x4
   29960: 54fff8a0     	b.eq	0x29874 <syna_dev_process_touch_report+0x148>
   29964: aa1403e0     	mov	x0, x20
   29968: 2a1503e1     	mov	w1, w21
   2996c: 94000000     	bl	0x2996c <syna_dev_process_touch_report+0x240>
		000000000002996c:  R_AARCH64_CALL26	tpd_touch_release
   29970: 2a1f03e0     	mov	w0, wzr
   29974: 12800001     	mov	w1, #-0x1               // =-1
   29978: 12800002     	mov	w2, #-0x1               // =-1
   2997c: 2a1503e3     	mov	w3, w21
   29980: 94000000     	bl	0x29980 <syna_dev_process_touch_report+0x254>
		0000000000029980:  R_AARCH64_CALL26	one_key_report
   29984: 17ffffc5     	b	0x29898 <syna_dev_process_touch_report+0x16c>
   29988: f9400be8     	ldr	x8, [sp, #0x10]
   2998c: b94002d8     	ldr	w24, [x22]
   29990: 297f72da     	ldp	w26, w28, [x22, #-0x8]
   29994: 39406d08     	ldrb	w8, [x8, #0x1b]
   29998: 7100051f     	cmp	w8, #0x1
   2999c: 540001e1     	b.ne	0x299d8 <syna_dev_process_touch_report+0x2ac>
   299a0: 6b18039f     	cmp	w28, w24
   299a4: aa1403e0     	mov	x0, x20
   299a8: 2a1903e1     	mov	w1, w25
   299ac: 1a98c384     	csel	w4, w28, w24, gt
   299b0: 2a1a03e2     	mov	w2, w26
   299b4: 2a1503e3     	mov	w3, w21
   299b8: 2a1f03e5     	mov	w5, wzr
   299bc: 94000000     	bl	0x299bc <syna_dev_process_touch_report+0x290>
		00000000000299bc:  R_AARCH64_CALL26	tpd_touch_press
   299c0: 52800020     	mov	w0, #0x1                // =1
   299c4: 2a1903e1     	mov	w1, w25
   299c8: 2a1a03e2     	mov	w2, w26
   299cc: 2a1503e3     	mov	w3, w21
   299d0: 94000000     	bl	0x299d0 <syna_dev_process_touch_report+0x2a4>
		00000000000299d0:  R_AARCH64_CALL26	one_key_report
   299d4: 1400002a     	b	0x29a7c <syna_dev_process_touch_report+0x350>
   299d8: aa1403e0     	mov	x0, x20
   299dc: 52800061     	mov	w1, #0x3                // =3
   299e0: 528005e2     	mov	w2, #0x2f               // =47
   299e4: 2a1503e3     	mov	w3, w21
   299e8: 94000000     	bl	0x299e8 <syna_dev_process_touch_report+0x2bc>
		00000000000299e8:  R_AARCH64_CALL26	input_event
   299ec: aa1403e0     	mov	x0, x20
   299f0: 2a1f03e1     	mov	w1, wzr
   299f4: 52800022     	mov	w2, #0x1                // =1
   299f8: 94000000     	bl	0x299f8 <syna_dev_process_touch_report+0x2cc>
		00000000000299f8:  R_AARCH64_CALL26	input_mt_report_slot_state
   299fc: aa1403e0     	mov	x0, x20
   29a00: 52800021     	mov	w1, #0x1                // =1
   29a04: 52802942     	mov	w2, #0x14a              // =330
   29a08: 52800023     	mov	w3, #0x1                // =1
   29a0c: 94000000     	bl	0x29a0c <syna_dev_process_touch_report+0x2e0>
		0000000000029a0c:  R_AARCH64_CALL26	input_event
   29a10: aa1403e0     	mov	x0, x20
   29a14: 52800021     	mov	w1, #0x1                // =1
   29a18: 528028a2     	mov	w2, #0x145              // =325
   29a1c: 52800023     	mov	w3, #0x1                // =1
   29a20: 94000000     	bl	0x29a20 <syna_dev_process_touch_report+0x2f4>
		0000000000029a20:  R_AARCH64_CALL26	input_event
   29a24: aa1403e0     	mov	x0, x20
   29a28: 52800061     	mov	w1, #0x3                // =3
   29a2c: 528006a2     	mov	w2, #0x35               // =53
   29a30: 2a1903e3     	mov	w3, w25
   29a34: 94000000     	bl	0x29a34 <syna_dev_process_touch_report+0x308>
		0000000000029a34:  R_AARCH64_CALL26	input_event
   29a38: aa1403e0     	mov	x0, x20
   29a3c: 52800061     	mov	w1, #0x3                // =3
   29a40: 528006c2     	mov	w2, #0x36               // =54
   29a44: 2a1a03e3     	mov	w3, w26
   29a48: 94000000     	bl	0x29a48 <syna_dev_process_touch_report+0x31c>
		0000000000029a48:  R_AARCH64_CALL26	input_event
   29a4c: 6b18039f     	cmp	w28, w24
   29a50: aa1403e0     	mov	x0, x20
   29a54: 52800061     	mov	w1, #0x3                // =3
   29a58: 1a98c383     	csel	w3, w28, w24, gt
   29a5c: 52800602     	mov	w2, #0x30               // =48
   29a60: 1a98b399     	csel	w25, w28, w24, lt
   29a64: 94000000     	bl	0x29a64 <syna_dev_process_touch_report+0x338>
		0000000000029a64:  R_AARCH64_CALL26	input_event
   29a68: aa1403e0     	mov	x0, x20
   29a6c: 52800061     	mov	w1, #0x3                // =3
   29a70: 52800622     	mov	w2, #0x31               // =49
   29a74: 2a1903e3     	mov	w3, w25
   29a78: 94000000     	bl	0x29a78 <syna_dev_process_touch_report+0x34c>
		0000000000029a78:  R_AARCH64_CALL26	input_event
   29a7c: f94007f9     	ldr	x25, [sp, #0x8]
   29a80: 1100077b     	add	w27, w27, #0x1
   29a84: 17ffff85     	b	0x29898 <syna_dev_process_touch_report+0x16c>
   29a88: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187c8
   29a8c: 91000000     	add	x0, x0, #0x0
		0000000000029a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187c8
   29a90: 94000000     	bl	0x29a90 <syna_dev_process_touch_report+0x364>
		0000000000029a90:  R_AARCH64_CALL26	_printk
   29a94: 17ffff96     	b	0x298ec <syna_dev_process_touch_report+0x1c0>
   29a98: 51000521     	sub	w1, w9, #0x1
   29a9c: 90000008     	adrp	x8, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029a9c:  R_AARCH64_ADR_PREL_PG_HI21	large_area_ignore_count
   29aa0: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d67
   29aa4: 91000000     	add	x0, x0, #0x0
		0000000000029aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d67
   29aa8: b9000101     	str	w1, [x8]
		0000000000029aa8:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_ignore_count
   29aac: 94000000     	bl	0x29aac <syna_dev_process_touch_report+0x380>
		0000000000029aac:  R_AARCH64_CALL26	_printk
   29ab0: 17ffff8f     	b	0x298ec <syna_dev_process_touch_report+0x1c0>
   29ab4: 90000009     	adrp	x9, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c68e
   29ab8: 91000129     	add	x9, x9, #0x0
		0000000000029ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c68e
   29abc: 91004100     	add	x0, x8, #0x10
   29ac0: 910063e2     	add	x2, sp, #0x18
   29ac4: 52800041     	mov	w1, #0x2                // =2
   29ac8: a901ffe9     	stp	x9, xzr, [sp, #0x18]
   29acc: 94000000     	bl	0x29acc <syna_dev_process_touch_report+0x3a0>
		0000000000029acc:  R_AARCH64_CALL26	kobject_uevent_env
   29ad0: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18218
   29ad4: 91000000     	add	x0, x0, #0x0
		0000000000029ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18218
   29ad8: 94000000     	bl	0x29ad8 <syna_dev_process_touch_report+0x3ac>
		0000000000029ad8:  R_AARCH64_CALL26	_printk
   29adc: 90000009     	adrp	x9, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029adc:  R_AARCH64_ADR_PREL_PG_HI21	large_area_uevent_count
   29ae0: b9400128     	ldr	w8, [x9]
		0000000000029ae0:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   29ae4: 11000508     	add	w8, w8, #0x1
   29ae8: b9000128     	str	w8, [x9]
		0000000000029ae8:  R_AARCH64_LDST32_ABS_LO12_NC	large_area_uevent_count
   29aec: 17ffff80     	b	0x298ec <syna_dev_process_touch_report+0x1c0>
   29af0: 3500017b     	cbnz	w27, 0x29b1c <syna_dev_process_touch_report+0x3f0>
   29af4: aa1403e0     	mov	x0, x20
   29af8: 52800021     	mov	w1, #0x1                // =1
   29afc: 52802942     	mov	w2, #0x14a              // =330
   29b00: 2a1f03e3     	mov	w3, wzr
   29b04: 94000000     	bl	0x29b04 <syna_dev_process_touch_report+0x3d8>
		0000000000029b04:  R_AARCH64_CALL26	input_event
   29b08: aa1403e0     	mov	x0, x20
   29b0c: 52800021     	mov	w1, #0x1                // =1
   29b10: 528028a2     	mov	w2, #0x145              // =325
   29b14: 2a1f03e3     	mov	w3, wzr
   29b18: 94000000     	bl	0x29b18 <syna_dev_process_touch_report+0x3ec>
		0000000000029b18:  R_AARCH64_CALL26	input_event
   29b1c: aa1403e0     	mov	x0, x20
   29b20: 2a1f03e1     	mov	w1, wzr
   29b24: 2a1f03e2     	mov	w2, wzr
   29b28: 2a1f03e3     	mov	w3, wzr
   29b2c: 94000000     	bl	0x29b2c <syna_dev_process_touch_report+0x400>
		0000000000029b2c:  R_AARCH64_CALL26	input_event
   29b30: 9109e260     	add	x0, x19, #0x278
   29b34: 94000000     	bl	0x29b34 <syna_dev_process_touch_report+0x408>
		0000000000029b34:  R_AARCH64_CALL26	mutex_unlock
   29b38: 2a1f03e0     	mov	w0, wzr
   29b3c: d5384108     	mrs	x8, SP_EL0
   29b40: f9438908     	ldr	x8, [x8, #0x710]
   29b44: f85f83a9     	ldur	x9, [x29, #-0x8]
   29b48: eb09011f     	cmp	x8, x9
   29b4c: 540008c1     	b.ne	0x29c64 <syna_dev_process_touch_report+0x538>
   29b50: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   29b54: a94757f6     	ldp	x22, x21, [sp, #0x70]
   29b58: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   29b5c: a94567fa     	ldp	x26, x25, [sp, #0x50]
   29b60: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   29b64: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   29b68: 910243ff     	add	sp, sp, #0x90
   29b6c: d50323bf     	autiasp
   29b70: d65f03c0     	ret
   29b74: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189de
   29b78: 91000000     	add	x0, x0, #0x0
		0000000000029b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189de
   29b7c: 90000001     	adrp	x1, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1762e
   29b80: 91000021     	add	x1, x1, #0x0
		0000000000029b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1762e
   29b84: 94000000     	bl	0x29b84 <syna_dev_process_touch_report+0x458>
		0000000000029b84:  R_AARCH64_CALL26	_printk
   29b88: 128002a0     	mov	w0, #-0x16              // =-22
   29b8c: 17ffffec     	b	0x29b3c <syna_dev_process_touch_report+0x410>
   29b90: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1989c
   29b94: 91000000     	add	x0, x0, #0x0
		0000000000029b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1989c
   29b98: 90000001     	adrp	x1, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1762e
   29b9c: 91000021     	add	x1, x1, #0x0
		0000000000029b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1762e
   29ba0: 2a0803e2     	mov	w2, w8
   29ba4: 94000000     	bl	0x29ba4 <syna_dev_process_touch_report+0x478>
		0000000000029ba4:  R_AARCH64_CALL26	_printk
   29ba8: 128002a0     	mov	w0, #-0x16              // =-22
   29bac: 17ffffe4     	b	0x29b3c <syna_dev_process_touch_report+0x410>
   29bb0: 90000008     	adrp	x8, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b683
   29bb4: 91000108     	add	x8, x8, #0x0
		0000000000029bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b683
   29bb8: 90000001     	adrp	x1, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1762e
   29bbc: 91000021     	add	x1, x1, #0x0
		0000000000029bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1762e
   29bc0: 2a0003f3     	mov	w19, w0
   29bc4: aa0803e0     	mov	x0, x8
   29bc8: 94000000     	bl	0x29bc8 <syna_dev_process_touch_report+0x49c>
		0000000000029bc8:  R_AARCH64_CALL26	_printk
   29bcc: 2a1303e0     	mov	w0, w19
   29bd0: 17ffffdb     	b	0x29b3c <syna_dev_process_touch_report+0x410>
   29bd4: b9422262     	ldr	w2, [x19, #0x220]
   29bd8: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19666
   29bdc: 91000000     	add	x0, x0, #0x0
		0000000000029bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19666
   29be0: 90000001     	adrp	x1, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1919b
   29be4: 91000021     	add	x1, x1, #0x0
		0000000000029be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1919b
   29be8: 94000000     	bl	0x29be8 <syna_dev_process_touch_report+0x4bc>
		0000000000029be8:  R_AARCH64_CALL26	_printk
   29bec: b9422262     	ldr	w2, [x19, #0x220]
   29bf0: 7100045f     	cmp	w2, #0x1
   29bf4: 54000180     	b.eq	0x29c24 <syna_dev_process_touch_report+0x4f8>
   29bf8: 7100405f     	cmp	w2, #0x10
   29bfc: 54000261     	b.ne	0x29c48 <syna_dev_process_touch_report+0x51c>
   29c00: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184fc
   29c04: 91000000     	add	x0, x0, #0x0
		0000000000029c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184fc
   29c08: 90000001     	adrp	x1, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1919b
   29c0c: 91000021     	add	x1, x1, #0x0
		0000000000029c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1919b
   29c10: 94000000     	bl	0x29c10 <syna_dev_process_touch_report+0x4e4>
		0000000000029c10:  R_AARCH64_CALL26	_printk
   29c14: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190e1
   29c18: 91000000     	add	x0, x0, #0x0
		0000000000029c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190e1
   29c1c: 94000000     	bl	0x29c1c <syna_dev_process_touch_report+0x4f0>
		0000000000029c1c:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   29c20: 17ffff02     	b	0x29828 <syna_dev_process_touch_report+0xfc>
   29c24: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1968d
   29c28: 91000000     	add	x0, x0, #0x0
		0000000000029c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1968d
   29c2c: 90000001     	adrp	x1, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1919b
   29c30: 91000021     	add	x1, x1, #0x0
		0000000000029c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1919b
   29c34: 94000000     	bl	0x29c34 <syna_dev_process_touch_report+0x508>
		0000000000029c34:  R_AARCH64_CALL26	_printk
   29c38: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1936c
   29c3c: 91000000     	add	x0, x0, #0x0
		0000000000029c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1936c
   29c40: 94000000     	bl	0x29c40 <syna_dev_process_touch_report+0x514>
		0000000000029c40:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   29c44: 17fffef9     	b	0x29828 <syna_dev_process_touch_report+0xfc>
   29c48: 90000000     	adrp	x0, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a01d
   29c4c: 91000000     	add	x0, x0, #0x0
		0000000000029c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a01d
   29c50: 90000001     	adrp	x1, 0x29000 <syna_dev_disconnect+0x17c>
		0000000000029c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1919b
   29c54: 91000021     	add	x1, x1, #0x0
		0000000000029c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1919b
   29c58: 94000000     	bl	0x29c58 <syna_dev_process_touch_report+0x52c>
		0000000000029c58:  R_AARCH64_CALL26	_printk
   29c5c: 17fffef3     	b	0x29828 <syna_dev_process_touch_report+0xfc>
   29c60: d42aa240     	brk	#0x5512
   29c64: 94000000     	bl	0x29c64 <syna_dev_process_touch_report+0x538>
		0000000000029c64:  R_AARCH64_CALL26	__stack_chk_fail
