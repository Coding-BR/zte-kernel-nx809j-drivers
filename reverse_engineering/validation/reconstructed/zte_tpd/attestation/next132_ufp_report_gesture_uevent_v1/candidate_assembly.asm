
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023f7c <ufp_report_gesture_uevent>:
   23f7c: d503233f     	paciasp
   23f80: d10103ff     	sub	sp, sp, #0x40
   23f84: a9027bfd     	stp	x29, x30, [sp, #0x20]
   23f88: f9001bf3     	str	x19, [sp, #0x30]
   23f8c: 910083fd     	add	x29, sp, #0x20
   23f90: d5384108     	mrs	x8, SP_EL0
   23f94: aa0003f3     	mov	x19, x0
   23f98: 910023e2     	add	x2, sp, #0x8
   23f9c: f9438908     	ldr	x8, [x8, #0x710]
   23fa0: 52800041     	mov	w1, #0x2                // =2
   23fa4: f81f83a8     	stur	x8, [x29, #-0x8]
   23fa8: 90000008     	adrp	x8, 0x23000 <tpd_zlog_record_notify+0x40c>
		0000000000023fa8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   23fac: f9400108     	ldr	x8, [x8]
		0000000000023fac:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   23fb0: a900ffe0     	stp	x0, xzr, [sp, #0x8]
   23fb4: 91004100     	add	x0, x8, #0x10
   23fb8: 94000000     	bl	0x23fb8 <ufp_report_gesture_uevent+0x3c>
		0000000000023fb8:  R_AARCH64_CALL26	kobject_uevent_env
   23fbc: 90000000     	adrp	x0, 0x23000 <tpd_zlog_record_notify+0x40c>
		0000000000023fbc:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
   23fc0: 91000000     	add	x0, x0, #0x0
		0000000000023fc0:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
   23fc4: 5280fa01     	mov	w1, #0x7d0              // =2000
   23fc8: 2a1f03e2     	mov	w2, wzr
   23fcc: 94000000     	bl	0x23fcc <ufp_report_gesture_uevent+0x50>
		0000000000023fcc:  R_AARCH64_CALL26	pm_wakeup_ws_event
   23fd0: 90000001     	adrp	x1, 0x23000 <tpd_zlog_record_notify+0x40c>
		0000000000023fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2683
   23fd4: 91000021     	add	x1, x1, #0x0
		0000000000023fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2683
   23fd8: aa1303e0     	mov	x0, x19
   23fdc: 94000000     	bl	0x23fdc <ufp_report_gesture_uevent+0x60>
		0000000000023fdc:  R_AARCH64_CALL26	strcmp
   23fe0: 350000c0     	cbnz	w0, 0x23ff8 <ufp_report_gesture_uevent+0x7c>
   23fe4: 90000008     	adrp	x8, 0x23000 <tpd_zlog_record_notify+0x40c>
		0000000000023fe4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   23fe8: 52800029     	mov	w9, #0x1                // =1
   23fec: 528012c3     	mov	w3, #0x96               // =150
   23ff0: b9000109     	str	w9, [x8]
		0000000000023ff0:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   23ff4: 14000007     	b	0x24010 <ufp_report_gesture_uevent+0x94>
   23ff8: 90000001     	adrp	x1, 0x23000 <tpd_zlog_record_notify+0x40c>
		0000000000023ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a62
   23ffc: 91000021     	add	x1, x1, #0x0
		0000000000023ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a62
   24000: aa1303e0     	mov	x0, x19
   24004: 94000000     	bl	0x24004 <ufp_report_gesture_uevent+0x88>
		0000000000024004:  R_AARCH64_CALL26	strcmp
   24008: 350000e0     	cbnz	w0, 0x24024 <ufp_report_gesture_uevent+0xa8>
   2400c: aa1f03e3     	mov	x3, xzr
   24010: 90000002     	adrp	x2, 0x24000 <ufp_report_gesture_uevent+0x84>
		0000000000024010:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x10
   24014: 91000042     	add	x2, x2, #0x0
		0000000000024014:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x10
   24018: 52800400     	mov	w0, #0x20               // =32
   2401c: f9403441     	ldr	x1, [x2, #0x68]
   24020: 94000000     	bl	0x24020 <ufp_report_gesture_uevent+0xa4>
		0000000000024020:  R_AARCH64_CALL26	mod_delayed_work_on
   24024: 90000000     	adrp	x0, 0x24000 <ufp_report_gesture_uevent+0x84>
		0000000000024024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6319
   24028: 91000000     	add	x0, x0, #0x0
		0000000000024028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6319
   2402c: aa1303e1     	mov	x1, x19
   24030: 94000000     	bl	0x24030 <ufp_report_gesture_uevent+0xb4>
		0000000000024030:  R_AARCH64_CALL26	_printk
   24034: d5384108     	mrs	x8, SP_EL0
   24038: f9438908     	ldr	x8, [x8, #0x710]
   2403c: f85f83a9     	ldur	x9, [x29, #-0x8]
   24040: eb09011f     	cmp	x8, x9
   24044: 540000c1     	b.ne	0x2405c <ufp_report_gesture_uevent+0xe0>
   24048: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2404c: f9401bf3     	ldr	x19, [sp, #0x30]
   24050: 910103ff     	add	sp, sp, #0x40
   24054: d50323bf     	autiasp
   24058: d65f03c0     	ret
   2405c: 94000000     	bl	0x2405c <ufp_report_gesture_uevent+0xe0>
		000000000002405c:  R_AARCH64_CALL26	__stack_chk_fail
