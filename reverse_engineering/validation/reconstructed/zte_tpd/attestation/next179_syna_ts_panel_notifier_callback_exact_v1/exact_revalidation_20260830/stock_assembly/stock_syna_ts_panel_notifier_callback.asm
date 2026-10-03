
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e08c <syna_ts_panel_notifier_callback>:
    e08c: d503233f     	paciasp
    e090: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e094: f9000bf3     	str	x19, [sp, #0x10]
    e098: 910003fd     	mov	x29, sp
    e09c: b4000621     	cbz	x1, 0xe160 <syna_ts_panel_notifier_callback+0xd4>
    e0a0: b9400028     	ldr	w8, [x1]
    e0a4: 7100091f     	cmp	w8, #0x2
    e0a8: 5400028c     	b.gt	0xe0f8 <syna_ts_panel_notifier_callback+0x6c>
    e0ac: 7100051f     	cmp	w8, #0x1
    e0b0: 54000360     	b.eq	0xe11c <syna_ts_panel_notifier_callback+0x90>
    e0b4: 7100091f     	cmp	w8, #0x2
    e0b8: 54000281     	b.ne	0xe108 <syna_ts_panel_notifier_callback+0x7c>
    e0bc: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e0bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7b0
    e0c0: 39400109     	ldrb	w9, [x8]
		000000000000e0c0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x7b0
    e0c4: 7100053f     	cmp	w9, #0x1
    e0c8: 540000c1     	b.ne	0xe0e0 <syna_ts_panel_notifier_callback+0x54>
    e0cc: 2a1f03e0     	mov	w0, wzr
    e0d0: 3900011f     	strb	wzr, [x8]
		000000000000e0d0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x7b0
    e0d4: aa0103f3     	mov	x19, x1
    e0d8: 94000000     	bl	0xe0d8 <syna_ts_panel_notifier_callback+0x4c>
		000000000000e0d8:  R_AARCH64_CALL26	ufp_notifier_cb
    e0dc: aa1303e1     	mov	x1, x19
    e0e0: 39403028     	ldrb	w8, [x1, #0xc]
    e0e4: 7100051f     	cmp	w8, #0x1
    e0e8: 540004a0     	b.eq	0xe17c <syna_ts_panel_notifier_callback+0xf0>
    e0ec: 52800040     	mov	w0, #0x2                // =2
    e0f0: 94000000     	bl	0xe0f0 <syna_ts_panel_notifier_callback+0x64>
		000000000000e0f0:  R_AARCH64_CALL26	change_tp_state
    e0f4: 1400001e     	b	0xe16c <syna_ts_panel_notifier_callback+0xe0>
    e0f8: 71000d1f     	cmp	w8, #0x3
    e0fc: 54000240     	b.eq	0xe144 <syna_ts_panel_notifier_callback+0xb8>
    e100: 7100111f     	cmp	w8, #0x4
    e104: 54000340     	b.eq	0xe16c <syna_ts_panel_notifier_callback+0xe0>
    e108: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3bf
    e10c: 91000000     	add	x0, x0, #0x0
		000000000000e10c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3bf
    e110: 2a0803e1     	mov	w1, w8
    e114: 94000000     	bl	0xe114 <syna_ts_panel_notifier_callback+0x88>
		000000000000e114:  R_AARCH64_CALL26	_printk
    e118: 14000015     	b	0xe16c <syna_ts_panel_notifier_callback+0xe0>
    e11c: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e11c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7b0
    e120: 39400109     	ldrb	w9, [x8]
		000000000000e120:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x7b0
    e124: 7100053f     	cmp	w9, #0x1
    e128: 54000300     	b.eq	0xe188 <syna_ts_panel_notifier_callback+0xfc>
    e12c: 39403028     	ldrb	w8, [x1, #0xc]
    e130: 7100051f     	cmp	w8, #0x1
    e134: 540003c1     	b.ne	0xe1ac <syna_ts_panel_notifier_callback+0x120>
    e138: 52800060     	mov	w0, #0x3                // =3
    e13c: 94000000     	bl	0xe13c <syna_ts_panel_notifier_callback+0xb0>
		000000000000e13c:  R_AARCH64_CALL26	change_tp_state
    e140: 1400000b     	b	0xe16c <syna_ts_panel_notifier_callback+0xe0>
    e144: 90000008     	adrp	x8, 0xe000 <syna_mmap+0x9c>
		000000000000e144:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7b0
    e148: 52800029     	mov	w9, #0x1                // =1
    e14c: 52800020     	mov	w0, #0x1                // =1
    e150: 39000109     	strb	w9, [x8]
		000000000000e150:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x7b0
    e154: 94000000     	bl	0xe154 <syna_ts_panel_notifier_callback+0xc8>
		000000000000e154:  R_AARCH64_CALL26	ufp_notifier_cb
    e158: 94000000     	bl	0xe158 <syna_ts_panel_notifier_callback+0xcc>
		000000000000e158:  R_AARCH64_CALL26	ufp_report_lcd_state
    e15c: 14000004     	b	0xe16c <syna_ts_panel_notifier_callback+0xe0>
    e160: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cb
    e164: 91000000     	add	x0, x0, #0x0
		000000000000e164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cb
    e168: 94000000     	bl	0xe168 <syna_ts_panel_notifier_callback+0xdc>
		000000000000e168:  R_AARCH64_CALL26	_printk
    e16c: f9400bf3     	ldr	x19, [sp, #0x10]
    e170: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e174: d50323bf     	autiasp
    e178: d65f03c0     	ret
    e17c: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e17c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32af
    e180: 91000000     	add	x0, x0, #0x0
		000000000000e180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32af
    e184: 17fffff9     	b	0xe168 <syna_ts_panel_notifier_callback+0xdc>
    e188: 2a1f03e0     	mov	w0, wzr
    e18c: 3900011f     	strb	wzr, [x8]
		000000000000e18c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x7b0
    e190: aa0103f3     	mov	x19, x1
    e194: 94000000     	bl	0xe194 <syna_ts_panel_notifier_callback+0x108>
		000000000000e194:  R_AARCH64_CALL26	ufp_notifier_cb
    e198: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45b8
    e19c: 91000000     	add	x0, x0, #0x0
		000000000000e19c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45b8
    e1a0: 94000000     	bl	0xe1a0 <syna_ts_panel_notifier_callback+0x114>
		000000000000e1a0:  R_AARCH64_CALL26	_printk
    e1a4: aa1303e1     	mov	x1, x19
    e1a8: 17ffffe1     	b	0xe12c <syna_ts_panel_notifier_callback+0xa0>
    e1ac: 90000000     	adrp	x0, 0xe000 <syna_mmap+0x9c>
		000000000000e1ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a
    e1b0: 91000000     	add	x0, x0, #0x0
		000000000000e1b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a
    e1b4: 17ffffed     	b	0xe168 <syna_ts_panel_notifier_callback+0xdc>
