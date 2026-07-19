
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001164 <get_tp_noise_show>:
    1164: d503233f     	paciasp
    1168: d101c3ff     	sub	sp, sp, #0x70
    116c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1170: f90023f7     	str	x23, [sp, #0x40]
    1174: a90557f6     	stp	x22, x21, [sp, #0x50]
    1178: a9064ff4     	stp	x20, x19, [sp, #0x60]
    117c: 9100c3fd     	add	x29, sp, #0x30
    1180: d5384108     	mrs	x8, SP_EL0
    1184: aa1f03e0     	mov	x0, xzr
    1188: f9438908     	ldr	x8, [x8, #0x710]
    118c: f81f83a8     	stur	x8, [x29, #-0x8]
    1190: f9400068     	ldr	x8, [x3]
    1194: f801e3ff     	stur	xzr, [sp, #0x1e]
    1198: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    119c: f90007ff     	str	xzr, [sp, #0x8]
    11a0: b50003a8     	cbnz	x8, 0x1214 <get_tp_noise_show+0xb0>
    11a4: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xe4>
		00000000000011a4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    11a8: aa0303f3     	mov	x19, x3
    11ac: aa0203f4     	mov	x20, x2
    11b0: f9400116     	ldr	x22, [x8]
		00000000000011b0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    11b4: aa0103f5     	mov	x21, x1
    11b8: 913182c0     	add	x0, x22, #0xc60
    11bc: 94000000     	bl	0x11bc <get_tp_noise_show+0x58>
		00000000000011bc:  R_AARCH64_CALL26	mutex_lock
    11c0: f94776c8     	ldr	x8, [x22, #0xee8]
    11c4: b4000128     	cbz	x8, 0x11e8 <get_tp_noise_show+0x84>
    11c8: aa1603e0     	mov	x0, x22
    11cc: b85fc110     	ldur	w16, [x8, #-0x4]
    11d0: 7281af31     	movk	w17, #0xd79
    11d4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    11d8: 6b11021f     	cmp	w16, w17
    11dc: 54000040     	b.eq	0x11e4 <get_tp_noise_show+0x80>
    11e0: d4304500     	brk	#0x8228
    11e4: d63f0100     	blr	x8
    11e8: f9462ec8     	ldr	x8, [x22, #0xc58]
    11ec: b50002c8     	cbnz	x8, 0x1244 <get_tp_noise_show+0xe0>
    11f0: aa1f03f7     	mov	x23, xzr
    11f4: 913182c0     	add	x0, x22, #0xc60
    11f8: 94000000     	bl	0x11f8 <get_tp_noise_show+0x94>
		00000000000011f8:  R_AARCH64_CALL26	mutex_unlock
    11fc: 910023e3     	add	x3, sp, #0x8
    1200: aa1503e0     	mov	x0, x21
    1204: aa1403e1     	mov	x1, x20
    1208: aa1303e2     	mov	x2, x19
    120c: aa1703e4     	mov	x4, x23
    1210: 94000000     	bl	0x1210 <get_tp_noise_show+0xac>
		0000000000001210:  R_AARCH64_CALL26	simple_read_from_buffer
    1214: d5384108     	mrs	x8, SP_EL0
    1218: f9438908     	ldr	x8, [x8, #0x710]
    121c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1220: eb09011f     	cmp	x8, x9
    1224: 540002a1     	b.ne	0x1278 <get_tp_noise_show+0x114>
    1228: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    122c: f94023f7     	ldr	x23, [sp, #0x40]
    1230: a94557f6     	ldp	x22, x21, [sp, #0x50]
    1234: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1238: 9101c3ff     	add	sp, sp, #0x70
    123c: d50323bf     	autiasp
    1240: d65f03c0     	ret
    1244: f9400103     	ldr	x3, [x8]
    1248: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xe4>
		0000000000001248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35c8
    124c: 91000042     	add	x2, x2, #0x0
		000000000000124c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35c8
    1250: 910023e0     	add	x0, sp, #0x8
    1254: 528003c1     	mov	w1, #0x1e               // =30
    1258: 94000000     	bl	0x1258 <get_tp_noise_show+0xf4>
		0000000000001258:  R_AARCH64_CALL26	snprintf
    125c: f9462ec8     	ldr	x8, [x22, #0xc58]
    1260: 93407c17     	sxtw	x23, w0
    1264: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xe4>
		0000000000001264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5e
    1268: 91000000     	add	x0, x0, #0x0
		0000000000001268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5e
    126c: f9400101     	ldr	x1, [x8]
    1270: 94000000     	bl	0x1270 <get_tp_noise_show+0x10c>
		0000000000001270:  R_AARCH64_CALL26	_printk
    1274: 17ffffe0     	b	0x11f4 <get_tp_noise_show+0x90>
    1278: 94000000     	bl	0x1278 <get_tp_noise_show+0x114>
		0000000000001278:  R_AARCH64_CALL26	__stack_chk_fail
