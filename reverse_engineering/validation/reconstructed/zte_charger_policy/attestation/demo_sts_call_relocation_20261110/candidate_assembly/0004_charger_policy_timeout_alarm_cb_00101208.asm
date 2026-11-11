
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004a84 <charger_policy_timeout_alarm_cb>:
    4a84: d503233f     	paciasp
    4a88: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    4a8c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    4a90: 910003fd     	mov	x29, sp
    4a94: aa0003f3     	mov	x19, x0
    4a98: 9107b014     	add	x20, x0, #0x1ec
    4a9c: 14000006     	b	0x4ab4 <charger_policy_timeout_alarm_cb+0x30>
    4aa0: 2a1f03e8     	mov	w8, wzr
    4aa4: 88e8fe88     	casal	w8, w8, [x20]
    4aa8: 340001a8     	cbz	w8, 0x4adc <charger_policy_timeout_alarm_cb+0x58>
    4aac: 2a1f03e0     	mov	w0, wzr
    4ab0: 14000021     	b	0x4b34 <charger_policy_timeout_alarm_cb+0xb0>
    4ab4: aa1f03e9     	mov	x9, xzr
    4ab8: 2a1f03ea     	mov	w10, wzr
    4abc: f9800291     	prfm	pstl1strm, [x20]
    4ac0: 885f7e88     	ldxr	w8, [x20]
    4ac4: 4a09010b     	eor	w11, w8, w9
    4ac8: 3500008b     	cbnz	w11, 0x4ad8 <charger_policy_timeout_alarm_cb+0x54>
    4acc: 880bfe8a     	stlxr	w11, w10, [x20]
    4ad0: 35ffff8b     	cbnz	w11, 0x4ac0 <charger_policy_timeout_alarm_cb+0x3c>
    4ad4: d5033bbf     	dmb	ish
    4ad8: 35fffea8     	cbnz	w8, 0x4aac <charger_policy_timeout_alarm_cb+0x28>
    4adc: f940ee68     	ldr	x8, [x19, #0x1d8]
    4ae0: 52884809     	mov	w9, #0x4240             // =16960
    4ae4: aa1303e0     	mov	x0, x19
    4ae8: 72a001e9     	movk	w9, #0xf, lsl #16
    4aec: 9b097d01     	mul	x1, x8, x9
    4af0: 94000000     	bl	0x4af0 <charger_policy_timeout_alarm_cb+0x6c>
		0000000000004af0:  R_AARCH64_CALL26	alarm_start_relative
    4af4: 14000014     	b	0x4b44 <charger_policy_timeout_alarm_cb+0xc0>
    4af8: 2a1f03e8     	mov	w8, wzr
    4afc: 88e8fe88     	casal	w8, w8, [x20]
    4b00: 35000108     	cbnz	w8, 0x4b20 <charger_policy_timeout_alarm_cb+0x9c>
    4b04: aa1303e2     	mov	x2, x19
    4b08: f8480c48     	ldr	x8, [x2, #0x80]!
    4b0c: 370000a8     	tbnz	w8, #0x0, 0x4b20 <charger_policy_timeout_alarm_cb+0x9c>
    4b10: f9403e61     	ldr	x1, [x19, #0x78]
    4b14: 52800400     	mov	w0, #0x20               // =32
    4b18: 52800323     	mov	w3, #0x19               // =25
    4b1c: 94000000     	bl	0x4b1c <charger_policy_timeout_alarm_cb+0x98>
		0000000000004b1c:  R_AARCH64_CALL26	queue_delayed_work_on
    4b20: 14000014     	b	0x4b70 <charger_policy_timeout_alarm_cb+0xec>
    4b24: 2a1f03e8     	mov	w8, wzr
    4b28: 88e8fe88     	casal	w8, w8, [x20]
    4b2c: 7100011f     	cmp	w8, #0x0
    4b30: 1a9f17e0     	cset	w0, eq
    4b34: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    4b38: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4b3c: d50323bf     	autiasp
    4b40: d65f03c0     	ret
    4b44: aa1f03e9     	mov	x9, xzr
    4b48: 2a1f03ea     	mov	w10, wzr
    4b4c: f9800291     	prfm	pstl1strm, [x20]
    4b50: 885f7e88     	ldxr	w8, [x20]
    4b54: 4a09010b     	eor	w11, w8, w9
    4b58: 3500008b     	cbnz	w11, 0x4b68 <charger_policy_timeout_alarm_cb+0xe4>
    4b5c: 880bfe8a     	stlxr	w11, w10, [x20]
    4b60: 35ffff8b     	cbnz	w11, 0x4b50 <charger_policy_timeout_alarm_cb+0xcc>
    4b64: d5033bbf     	dmb	ish
    4b68: 35fffdc8     	cbnz	w8, 0x4b20 <charger_policy_timeout_alarm_cb+0x9c>
    4b6c: 17ffffe6     	b	0x4b04 <charger_policy_timeout_alarm_cb+0x80>
    4b70: aa1f03e9     	mov	x9, xzr
    4b74: 2a1f03ea     	mov	w10, wzr
    4b78: f9800291     	prfm	pstl1strm, [x20]
    4b7c: 885f7e88     	ldxr	w8, [x20]
    4b80: 4a09010b     	eor	w11, w8, w9
    4b84: 3500008b     	cbnz	w11, 0x4b94 <charger_policy_timeout_alarm_cb+0x110>
    4b88: 880bfe8a     	stlxr	w11, w10, [x20]
    4b8c: 35ffff8b     	cbnz	w11, 0x4b7c <charger_policy_timeout_alarm_cb+0xf8>
    4b90: d5033bbf     	dmb	ish
    4b94: 17ffffe6     	b	0x4b2c <charger_policy_timeout_alarm_cb+0xa8>
