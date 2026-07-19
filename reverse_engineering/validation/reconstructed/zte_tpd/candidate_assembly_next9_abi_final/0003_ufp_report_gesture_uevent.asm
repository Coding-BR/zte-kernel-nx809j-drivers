
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024b10 <ufp_report_gesture_uevent>:
   24b10: d503233f     	paciasp
   24b14: d10103ff     	sub	sp, sp, #0x40
   24b18: a9027bfd     	stp	x29, x30, [sp, #0x20]
   24b1c: f9001bf3     	str	x19, [sp, #0x30]
   24b20: 910083fd     	add	x29, sp, #0x20
   24b24: d5384108     	mrs	x8, SP_EL0
   24b28: aa0003f3     	mov	x19, x0
   24b2c: 910023e2     	add	x2, sp, #0x8
   24b30: f9438908     	ldr	x8, [x8, #0x710]
   24b34: 52800041     	mov	w1, #0x2                // =2
   24b38: f81f83a8     	stur	x8, [x29, #-0x8]
   24b3c: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024b3c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   24b40: f9400108     	ldr	x8, [x8]
		0000000000024b40:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   24b44: a900ffe0     	stp	x0, xzr, [sp, #0x8]
   24b48: 91004100     	add	x0, x8, #0x10
   24b4c: 94000000     	bl	0x24b4c <ufp_report_gesture_uevent+0x3c>
		0000000000024b4c:  R_AARCH64_CALL26	kobject_uevent_env
   24b50: 90000000     	adrp	x0, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024b50:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
   24b54: 91000000     	add	x0, x0, #0x0
		0000000000024b54:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
   24b58: 5280fa01     	mov	w1, #0x7d0              // =2000
   24b5c: 2a1f03e2     	mov	w2, wzr
   24b60: 94000000     	bl	0x24b60 <ufp_report_gesture_uevent+0x50>
		0000000000024b60:  R_AARCH64_CALL26	pm_wakeup_ws_event
   24b64: 90000001     	adrp	x1, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d29
   24b68: 91000021     	add	x1, x1, #0x0
		0000000000024b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d29
   24b6c: aa1303e0     	mov	x0, x19
   24b70: 94000000     	bl	0x24b70 <ufp_report_gesture_uevent+0x60>
		0000000000024b70:  R_AARCH64_CALL26	strcmp
   24b74: 350000c0     	cbnz	w0, 0x24b8c <ufp_report_gesture_uevent+0x7c>
   24b78: 90000008     	adrp	x8, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024b78:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   24b7c: 52800029     	mov	w9, #0x1                // =1
   24b80: 528012c3     	mov	w3, #0x96               // =150
   24b84: b9000109     	str	w9, [x8]
		0000000000024b84:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   24b88: 14000007     	b	0x24ba4 <ufp_report_gesture_uevent+0x94>
   24b8c: 90000001     	adrp	x1, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f5f
   24b90: 91000021     	add	x1, x1, #0x0
		0000000000024b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f5f
   24b94: aa1303e0     	mov	x0, x19
   24b98: 94000000     	bl	0x24b98 <ufp_report_gesture_uevent+0x88>
		0000000000024b98:  R_AARCH64_CALL26	strcmp
   24b9c: 350000e0     	cbnz	w0, 0x24bb8 <ufp_report_gesture_uevent+0xa8>
   24ba0: aa1f03e3     	mov	x3, xzr
   24ba4: 90000002     	adrp	x2, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024ba4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x10
   24ba8: 91000042     	add	x2, x2, #0x0
		0000000000024ba8:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x10
   24bac: 52800400     	mov	w0, #0x20               // =32
   24bb0: f9403441     	ldr	x1, [x2, #0x68]
   24bb4: 94000000     	bl	0x24bb4 <ufp_report_gesture_uevent+0xa4>
		0000000000024bb4:  R_AARCH64_CALL26	mod_delayed_work_on
   24bb8: 90000000     	adrp	x0, 0x24000 <tpd_zlog_record_notify+0x3c4>
		0000000000024bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b92
   24bbc: 91000000     	add	x0, x0, #0x0
		0000000000024bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b92
   24bc0: aa1303e1     	mov	x1, x19
   24bc4: 94000000     	bl	0x24bc4 <ufp_report_gesture_uevent+0xb4>
		0000000000024bc4:  R_AARCH64_CALL26	_printk
   24bc8: d5384108     	mrs	x8, SP_EL0
   24bcc: f9438908     	ldr	x8, [x8, #0x710]
   24bd0: f85f83a9     	ldur	x9, [x29, #-0x8]
   24bd4: eb09011f     	cmp	x8, x9
   24bd8: 540000c1     	b.ne	0x24bf0 <ufp_report_gesture_uevent+0xe0>
   24bdc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   24be0: f9401bf3     	ldr	x19, [sp, #0x30]
   24be4: 910103ff     	add	sp, sp, #0x40
   24be8: d50323bf     	autiasp
   24bec: d65f03c0     	ret
   24bf0: 94000000     	bl	0x24bf0 <ufp_report_gesture_uevent+0xe0>
		0000000000024bf0:  R_AARCH64_CALL26	__stack_chk_fail
