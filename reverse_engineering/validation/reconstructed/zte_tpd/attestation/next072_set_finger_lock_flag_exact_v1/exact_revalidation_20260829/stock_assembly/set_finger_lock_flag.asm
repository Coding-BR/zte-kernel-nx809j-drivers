
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006178 <set_finger_lock_flag>:
    6178: d503233f     	paciasp
    617c: d100c3ff     	sub	sp, sp, #0x30
    6180: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6184: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6188: 910043fd     	add	x29, sp, #0x10
    618c: d5384108     	mrs	x8, SP_EL0
    6190: aa0203f3     	mov	x19, x2
    6194: aa0103e0     	mov	x0, x1
    6198: f9438908     	ldr	x8, [x8, #0x710]
    619c: 910013e3     	add	x3, sp, #0x4
    61a0: aa0203e1     	mov	x1, x2
    61a4: 52800142     	mov	w2, #0xa                // =10
    61a8: f90007e8     	str	x8, [sp, #0x8]
    61ac: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		00000000000061ac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    61b0: f9400114     	ldr	x20, [x8]
		00000000000061b0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    61b4: b90007ff     	str	wzr, [sp, #0x4]
    61b8: 94000000     	bl	0x61b8 <set_finger_lock_flag+0x40>
		00000000000061b8:  R_AARCH64_CALL26	kstrtouint_from_user
    61bc: 340001a0     	cbz	w0, 0x61f0 <set_finger_lock_flag+0x78>
    61c0: 928002b3     	mov	x19, #-0x16             // =-22
    61c4: d5384108     	mrs	x8, SP_EL0
    61c8: f9438908     	ldr	x8, [x8, #0x710]
    61cc: f94007e9     	ldr	x9, [sp, #0x8]
    61d0: eb09011f     	cmp	x8, x9
    61d4: 54000421     	b.ne	0x6258 <set_finger_lock_flag+0xe0>
    61d8: aa1303e0     	mov	x0, x19
    61dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    61e0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    61e4: 9100c3ff     	add	sp, sp, #0x30
    61e8: d50323bf     	autiasp
    61ec: d65f03c0     	ret
    61f0: b94007e8     	ldr	w8, [sp, #0x4]
    61f4: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		00000000000061f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    61f8: 91000000     	add	x0, x0, #0x0
		00000000000061f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    61fc: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		00000000000061fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e2b
    6200: 91000021     	add	x1, x1, #0x0
		0000000000006200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e2b
    6204: 7100011f     	cmp	w8, #0x0
    6208: 1a9f07e2     	cset	w2, ne
    620c: b90007e2     	str	w2, [sp, #0x4]
    6210: 94000000     	bl	0x6210 <set_finger_lock_flag+0x98>
		0000000000006210:  R_AARCH64_CALL26	_printk
    6214: b94007e8     	ldr	w8, [sp, #0x4]
    6218: b9047688     	str	w8, [x20, #0x474]
    621c: 34fffd48     	cbz	w8, 0x61c4 <set_finger_lock_flag+0x4c>
    6220: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006220:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    6224: 39400108     	ldrb	w8, [x8]
		0000000000006224:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    6228: 7100051f     	cmp	w8, #0x1
    622c: 54000081     	b.ne	0x623c <set_finger_lock_flag+0xc4>
    6230: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006230:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    6234: 91000000     	add	x0, x0, #0x0
		0000000000006234:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    6238: 94000000     	bl	0x6238 <set_finger_lock_flag+0xc0>
		0000000000006238:  R_AARCH64_CALL26	complete
    623c: b9445a88     	ldr	w8, [x20, #0x458]
    6240: 35fffc28     	cbnz	w8, 0x61c4 <set_finger_lock_flag+0x4c>
    6244: 52800c80     	mov	w0, #0x64               // =100
    6248: 94000000     	bl	0x6248 <set_finger_lock_flag+0xd0>
		0000000000006248:  R_AARCH64_CALL26	msleep
    624c: 2a1f03e0     	mov	w0, wzr
    6250: 94000000     	bl	0x6250 <set_finger_lock_flag+0xd8>
		0000000000006250:  R_AARCH64_CALL26	report_ufp_uevent
    6254: 17ffffdc     	b	0x61c4 <set_finger_lock_flag+0x4c>
    6258: 94000000     	bl	0x6258 <set_finger_lock_flag+0xe0>
		0000000000006258:  R_AARCH64_CALL26	__stack_chk_fail
