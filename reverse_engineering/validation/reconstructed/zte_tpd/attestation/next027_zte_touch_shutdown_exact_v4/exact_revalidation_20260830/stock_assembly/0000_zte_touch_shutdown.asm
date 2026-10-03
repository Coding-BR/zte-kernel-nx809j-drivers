
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002e18 <zte_touch_shutdown>:
    2e18: d503233f     	paciasp
    2e1c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2e20: a90157f6     	stp	x22, x21, [sp, #0x10]
    2e24: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2e28: 910003fd     	mov	x29, sp
    2e2c: 90000014     	adrp	x20, 0x2000 <zte_touch_probe+0xa4>
		0000000000002e2c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    2e30: 90000000     	adrp	x0, 0x2000 <zte_touch_probe+0xa4>
		0000000000002e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7392
    2e34: 91000000     	add	x0, x0, #0x0
		0000000000002e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7392
    2e38: f9400293     	ldr	x19, [x20]
		0000000000002e38:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2e3c: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8f24
    2e40: 91000021     	add	x1, x1, #0x0
		0000000000002e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8f24
    2e44: 52816c02     	mov	w2, #0xb60              // =2912
    2e48: 94000000     	bl	0x2e48 <zte_touch_shutdown+0x30>
		0000000000002e48:  R_AARCH64_CALL26	_printk
    2e4c: f947ca68     	ldr	x8, [x19, #0xf90]
    2e50: b4000128     	cbz	x8, 0x2e74 <zte_touch_shutdown+0x5c>
    2e54: aa1303e0     	mov	x0, x19
    2e58: b85fc110     	ldur	w16, [x8, #-0x4]
    2e5c: 7281af31     	movk	w17, #0xd79
    2e60: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    2e64: 6b11021f     	cmp	w16, w17
    2e68: 54000040     	b.eq	0x2e70 <zte_touch_shutdown+0x58>
    2e6c: d4304500     	brk	#0x8228
    2e70: d63f0100     	blr	x8
    2e74: 90000013     	adrp	x19, 0x2000 <zte_touch_probe+0xa4>
		0000000000002e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    2e78: 91000273     	add	x19, x19, #0x0
		0000000000002e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    2e7c: f9400295     	ldr	x21, [x20]
		0000000000002e7c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2e80: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43d9
    2e84: 91000021     	add	x1, x1, #0x0
		0000000000002e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43d9
    2e88: aa1303e0     	mov	x0, x19
    2e8c: 94000000     	bl	0x2e8c <zte_touch_shutdown+0x74>
		0000000000002e8c:  R_AARCH64_CALL26	_printk
    2e90: 94000000     	bl	0x2e90 <zte_touch_shutdown+0x78>
		0000000000002e90:  R_AARCH64_CALL26	tpd_report_work_deinit
    2e94: 94000000     	bl	0x2e94 <zte_touch_shutdown+0x7c>
		0000000000002e94:  R_AARCH64_CALL26	tpd_resume_work_deinit
    2e98: f9400296     	ldr	x22, [x20]
		0000000000002e98:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2e9c: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba1
    2ea0: 91000021     	add	x1, x1, #0x0
		0000000000002ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba1
    2ea4: aa1303e0     	mov	x0, x19
    2ea8: 94000000     	bl	0x2ea8 <zte_touch_shutdown+0x90>
		0000000000002ea8:  R_AARCH64_CALL26	_printk
    2eac: 912342c0     	add	x0, x22, #0x8d0
    2eb0: 94000000     	bl	0x2eb0 <zte_touch_shutdown+0x98>
		0000000000002eb0:  R_AARCH64_CALL26	cancel_delayed_work_sync
    2eb4: f9400294     	ldr	x20, [x20]
		0000000000002eb4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2eb8: 90000001     	adrp	x1, 0x2000 <zte_touch_probe+0xa4>
		0000000000002eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a5a
    2ebc: 91000021     	add	x1, x1, #0x0
		0000000000002ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a5a
    2ec0: aa1303e0     	mov	x0, x19
    2ec4: 94000000     	bl	0x2ec4 <zte_touch_shutdown+0xac>
		0000000000002ec4:  R_AARCH64_CALL26	_printk
    2ec8: 91294280     	add	x0, x20, #0xa50
    2ecc: 94000000     	bl	0x2ecc <zte_touch_shutdown+0xb4>
		0000000000002ecc:  R_AARCH64_CALL26	cancel_delayed_work_sync
    2ed0: f945f680     	ldr	x0, [x20, #0xbe8]
    2ed4: 94000000     	bl	0x2ed4 <zte_touch_shutdown+0xbc>
		0000000000002ed4:  R_AARCH64_CALL26	vfree
    2ed8: 9124e2a0     	add	x0, x21, #0x938
    2edc: f905f69f     	str	xzr, [x20, #0xbe8]
    2ee0: 94000000     	bl	0x2ee0 <zte_touch_shutdown+0xc8>
		0000000000002ee0:  R_AARCH64_CALL26	cancel_delayed_work_sync
    2ee4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2ee8: a94157f6     	ldp	x22, x21, [sp, #0x10]
    2eec: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2ef0: d50323bf     	autiasp
    2ef4: d65f03c0     	ret
