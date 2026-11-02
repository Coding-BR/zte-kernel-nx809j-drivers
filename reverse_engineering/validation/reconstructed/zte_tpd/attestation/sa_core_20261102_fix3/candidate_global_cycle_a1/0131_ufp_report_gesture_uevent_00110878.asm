
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001be38 <ufp_report_gesture_uevent>:
   1be38: d503233f     	paciasp
   1be3c: d10103ff     	sub	sp, sp, #0x40
   1be40: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1be44: f9001bf3     	str	x19, [sp, #0x30]
   1be48: 910083fd     	add	x29, sp, #0x20
   1be4c: d5384108     	mrs	x8, SP_EL0
   1be50: aa0003f3     	mov	x19, x0
   1be54: 910023e2     	add	x2, sp, #0x8
   1be58: f9438908     	ldr	x8, [x8, #0x710]
   1be5c: 52800041     	mov	w1, #0x2                // =2
   1be60: f81f83a8     	stur	x8, [x29, #-0x8]
   1be64: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001be64:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1be68: f9400108     	ldr	x8, [x8]
		000000000001be68:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1be6c: a900ffe0     	stp	x0, xzr, [sp, #0x8]
   1be70: 91004100     	add	x0, x8, #0x10
   1be74: 94000000     	bl	0x1be74 <ufp_report_gesture_uevent+0x3c>
		000000000001be74:  R_AARCH64_CALL26	kobject_uevent_env
   1be78: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001be78:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
   1be7c: 91000000     	add	x0, x0, #0x0
		000000000001be7c:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
   1be80: 5280fa01     	mov	w1, #0x7d0              // =2000
   1be84: 2a1f03e2     	mov	w2, wzr
   1be88: 94000000     	bl	0x1be88 <ufp_report_gesture_uevent+0x50>
		000000000001be88:  R_AARCH64_CALL26	pm_wakeup_ws_event
   1be8c: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001be8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ece
   1be90: 91000021     	add	x1, x1, #0x0
		000000000001be90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ece
   1be94: aa1303e0     	mov	x0, x19
   1be98: 94000000     	bl	0x1be98 <ufp_report_gesture_uevent+0x60>
		000000000001be98:  R_AARCH64_CALL26	strcmp
   1be9c: 350000c0     	cbnz	w0, 0x1beb4 <ufp_report_gesture_uevent+0x7c>
   1bea0: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001bea0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
   1bea4: 52800029     	mov	w9, #0x1                // =1
   1bea8: 528012c3     	mov	w3, #0x96               // =150
   1beac: b9000109     	str	w9, [x8]
		000000000001beac:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
   1beb0: 14000007     	b	0x1becc <ufp_report_gesture_uevent+0x94>
   1beb4: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001beb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44e8
   1beb8: 91000021     	add	x1, x1, #0x0
		000000000001beb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44e8
   1bebc: aa1303e0     	mov	x0, x19
   1bec0: 94000000     	bl	0x1bec0 <ufp_report_gesture_uevent+0x88>
		000000000001bec0:  R_AARCH64_CALL26	strcmp
   1bec4: 350000e0     	cbnz	w0, 0x1bee0 <ufp_report_gesture_uevent+0xa8>
   1bec8: aa1f03e3     	mov	x3, xzr
   1becc: 90000002     	adrp	x2, 0x1b000 <string_change+0x3a8>
		000000000001becc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x10
   1bed0: 91000042     	add	x2, x2, #0x0
		000000000001bed0:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x10
   1bed4: 52800400     	mov	w0, #0x20               // =32
   1bed8: f9403441     	ldr	x1, [x2, #0x68]
   1bedc: 94000000     	bl	0x1bedc <ufp_report_gesture_uevent+0xa4>
		000000000001bedc:  R_AARCH64_CALL26	mod_delayed_work_on
   1bee0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa854
   1bee4: 91000000     	add	x0, x0, #0x0
		000000000001bee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa854
   1bee8: aa1303e1     	mov	x1, x19
   1beec: 94000000     	bl	0x1beec <ufp_report_gesture_uevent+0xb4>
		000000000001beec:  R_AARCH64_CALL26	_printk
   1bef0: d5384108     	mrs	x8, SP_EL0
   1bef4: f9438908     	ldr	x8, [x8, #0x710]
   1bef8: f85f83a9     	ldur	x9, [x29, #-0x8]
   1befc: eb09011f     	cmp	x8, x9
   1bf00: 540000c1     	b.ne	0x1bf18 <ufp_report_gesture_uevent+0xe0>
   1bf04: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1bf08: f9401bf3     	ldr	x19, [sp, #0x30]
   1bf0c: 910103ff     	add	sp, sp, #0x40
   1bf10: d50323bf     	autiasp
   1bf14: d65f03c0     	ret
   1bf18: 94000000     	bl	0x1bf18 <ufp_report_gesture_uevent+0xe0>
		000000000001bf18:  R_AARCH64_CALL26	__stack_chk_fail
