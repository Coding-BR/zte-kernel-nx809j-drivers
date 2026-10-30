
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001108 <get_tp_noise_show>:
    1108: d503233f     	paciasp
    110c: d101c3ff     	sub	sp, sp, #0x70
    1110: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1114: f90023f7     	str	x23, [sp, #0x40]
    1118: a90557f6     	stp	x22, x21, [sp, #0x50]
    111c: a9064ff4     	stp	x20, x19, [sp, #0x60]
    1120: 9100c3fd     	add	x29, sp, #0x30
    1124: d5384108     	mrs	x8, SP_EL0
    1128: aa1f03e0     	mov	x0, xzr
    112c: f9438908     	ldr	x8, [x8, #0x710]
    1130: f81f83a8     	stur	x8, [x29, #-0x8]
    1134: f9400068     	ldr	x8, [x3]
    1138: f801e3ff     	stur	xzr, [sp, #0x1e]
    113c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    1140: f90007ff     	str	xzr, [sp, #0x8]
    1144: b50003a8     	cbnz	x8, 0x11b8 <get_tp_noise_show+0xb0>
    1148: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xec>
		0000000000001148:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    114c: aa0303f3     	mov	x19, x3
    1150: aa0203f4     	mov	x20, x2
    1154: f9400116     	ldr	x22, [x8]
		0000000000001154:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1158: aa0103f5     	mov	x21, x1
    115c: 913182c0     	add	x0, x22, #0xc60
    1160: 94000000     	bl	0x1160 <get_tp_noise_show+0x58>
		0000000000001160:  R_AARCH64_CALL26	mutex_lock
    1164: f94776c8     	ldr	x8, [x22, #0xee8]
    1168: b4000128     	cbz	x8, 0x118c <get_tp_noise_show+0x84>
    116c: aa1603e0     	mov	x0, x22
    1170: b85fc110     	ldur	w16, [x8, #-0x4]
    1174: 7281af31     	movk	w17, #0xd79
    1178: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    117c: 6b11021f     	cmp	w16, w17
    1180: 54000040     	b.eq	0x1188 <get_tp_noise_show+0x80>
    1184: d4304500     	brk	#0x8228
    1188: d63f0100     	blr	x8
    118c: f9462ec8     	ldr	x8, [x22, #0xc58]
    1190: b50002c8     	cbnz	x8, 0x11e8 <get_tp_noise_show+0xe0>
    1194: aa1f03f7     	mov	x23, xzr
    1198: 913182c0     	add	x0, x22, #0xc60
    119c: 94000000     	bl	0x119c <get_tp_noise_show+0x94>
		000000000000119c:  R_AARCH64_CALL26	mutex_unlock
    11a0: 910023e3     	add	x3, sp, #0x8
    11a4: aa1503e0     	mov	x0, x21
    11a8: aa1403e1     	mov	x1, x20
    11ac: aa1303e2     	mov	x2, x19
    11b0: aa1703e4     	mov	x4, x23
    11b4: 94000000     	bl	0x11b4 <get_tp_noise_show+0xac>
		00000000000011b4:  R_AARCH64_CALL26	simple_read_from_buffer
    11b8: d5384108     	mrs	x8, SP_EL0
    11bc: f9438908     	ldr	x8, [x8, #0x710]
    11c0: f85f83a9     	ldur	x9, [x29, #-0x8]
    11c4: eb09011f     	cmp	x8, x9
    11c8: 540002a1     	b.ne	0x121c <get_tp_noise_show+0x114>
    11cc: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    11d0: f94023f7     	ldr	x23, [sp, #0x40]
    11d4: a94557f6     	ldp	x22, x21, [sp, #0x50]
    11d8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    11dc: 9101c3ff     	add	sp, sp, #0x70
    11e0: d50323bf     	autiasp
    11e4: d65f03c0     	ret
    11e8: f9400103     	ldr	x3, [x8]
    11ec: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xec>
		00000000000011ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x425b
    11f0: 91000042     	add	x2, x2, #0x0
		00000000000011f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x425b
    11f4: 910023e0     	add	x0, sp, #0x8
    11f8: 528003c1     	mov	w1, #0x1e               // =30
    11fc: 94000000     	bl	0x11fc <get_tp_noise_show+0xf4>
		00000000000011fc:  R_AARCH64_CALL26	snprintf
    1200: f9462ec8     	ldr	x8, [x22, #0xc58]
    1204: 93407c17     	sxtw	x23, w0
    1208: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xec>
		0000000000001208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222b
    120c: 91000000     	add	x0, x0, #0x0
		000000000000120c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222b
    1210: f9400101     	ldr	x1, [x8]
    1214: 94000000     	bl	0x1214 <get_tp_noise_show+0x10c>
		0000000000001214:  R_AARCH64_CALL26	_printk
    1218: 17ffffe0     	b	0x1198 <get_tp_noise_show+0x90>
    121c: 94000000     	bl	0x121c <get_tp_noise_show+0x114>
		000000000000121c:  R_AARCH64_CALL26	__stack_chk_fail
