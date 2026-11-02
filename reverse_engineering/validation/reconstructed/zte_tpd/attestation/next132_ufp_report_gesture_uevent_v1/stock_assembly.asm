
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009ff0 <ufp_report_gesture_uevent>:
    9ff0: d503233f     	paciasp
    9ff4: d10103ff     	sub	sp, sp, #0x40
    9ff8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    9ffc: f9001bf3     	str	x19, [sp, #0x30]
    a000: 910083fd     	add	x29, sp, #0x20
    a004: d5384108     	mrs	x8, SP_EL0
    a008: aa0003f3     	mov	x19, x0
    a00c: 910023e2     	add	x2, sp, #0x8
    a010: f9438908     	ldr	x8, [x8, #0x710]
    a014: 52800041     	mov	w1, #0x2                // =2
    a018: f81f83a8     	stur	x8, [x29, #-0x8]
    a01c: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a01c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a020: f9400108     	ldr	x8, [x8]
		000000000000a020:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a024: a900ffe0     	stp	x0, xzr, [sp, #0x8]
    a028: 91004100     	add	x0, x8, #0x10
    a02c: 94000000     	bl	0xa02c <ufp_report_gesture_uevent+0x3c>
		000000000000a02c:  R_AARCH64_CALL26	kobject_uevent_env
    a030: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a030:  R_AARCH64_ADR_PREL_PG_HI21	tp_wakeup
    a034: 91000000     	add	x0, x0, #0x0
		000000000000a034:  R_AARCH64_ADD_ABS_LO12_NC	tp_wakeup
    a038: 5280fa01     	mov	w1, #0x7d0              // =2000
    a03c: 2a1f03e2     	mov	w2, wzr
    a040: 94000000     	bl	0xa040 <ufp_report_gesture_uevent+0x50>
		000000000000a040:  R_AARCH64_CALL26	pm_wakeup_ws_event
    a044: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dec
    a048: 91000021     	add	x1, x1, #0x0
		000000000000a048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dec
    a04c: aa1303e0     	mov	x0, x19
    a050: 94000000     	bl	0xa050 <ufp_report_gesture_uevent+0x60>
		000000000000a050:  R_AARCH64_CALL26	strcmp
    a054: 350000c0     	cbnz	w0, 0xa06c <ufp_report_gesture_uevent+0x7c>
    a058: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a058:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
    a05c: 52800029     	mov	w9, #0x1                // =1
    a060: 528012c3     	mov	w3, #0x96               // =150
    a064: b9000109     	str	w9, [x8]
		000000000000a064:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
    a068: 14000007     	b	0xa084 <ufp_report_gesture_uevent+0x94>
    a06c: 90000001     	adrp	x1, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a06c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43ee
    a070: 91000021     	add	x1, x1, #0x0
		000000000000a070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43ee
    a074: aa1303e0     	mov	x0, x19
    a078: 94000000     	bl	0xa078 <ufp_report_gesture_uevent+0x88>
		000000000000a078:  R_AARCH64_CALL26	strcmp
    a07c: 350000e0     	cbnz	w0, 0xa098 <ufp_report_gesture_uevent+0xa8>
    a080: aa1f03e3     	mov	x3, xzr
    a084: 90000002     	adrp	x2, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a084:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x10
    a088: 91000042     	add	x2, x2, #0x0
		000000000000a088:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x10
    a08c: 52800400     	mov	w0, #0x20               // =32
    a090: f9403441     	ldr	x1, [x2, #0x68]
    a094: 94000000     	bl	0xa094 <ufp_report_gesture_uevent+0xa4>
		000000000000a094:  R_AARCH64_CALL26	mod_delayed_work_on
    a098: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5c5
    a09c: 91000000     	add	x0, x0, #0x0
		000000000000a09c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5c5
    a0a0: aa1303e1     	mov	x1, x19
    a0a4: 94000000     	bl	0xa0a4 <ufp_report_gesture_uevent+0xb4>
		000000000000a0a4:  R_AARCH64_CALL26	_printk
    a0a8: d5384108     	mrs	x8, SP_EL0
    a0ac: f9438908     	ldr	x8, [x8, #0x710]
    a0b0: f85f83a9     	ldur	x9, [x29, #-0x8]
    a0b4: eb09011f     	cmp	x8, x9
    a0b8: 540000c1     	b.ne	0xa0d0 <ufp_report_gesture_uevent+0xe0>
    a0bc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    a0c0: f9401bf3     	ldr	x19, [sp, #0x30]
    a0c4: 910103ff     	add	sp, sp, #0x40
    a0c8: d50323bf     	autiasp
    a0cc: d65f03c0     	ret
    a0d0: 94000000     	bl	0xa0d0 <ufp_report_gesture_uevent+0xe0>
		000000000000a0d0:  R_AARCH64_CALL26	__stack_chk_fail
