
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000049f4 <charger_policy_timeout_alarm_cb>:
    49f4: 3947b008     	ldrb	w8, [x0, #0x1ec]
    49f8: 34000068     	cbz	w8, 0x4a04 <charger_policy_timeout_alarm_cb+0x10>
    49fc: 2a1f03e0     	mov	w0, wzr
    4a00: d65f03c0     	ret
    4a04: d503233f     	paciasp
    4a08: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    4a0c: f9000bf3     	str	x19, [sp, #0x10]
    4a10: 910003fd     	mov	x29, sp
    4a14: f940ec08     	ldr	x8, [x0, #0x1d8]
    4a18: 52884809     	mov	w9, #0x4240             // =16960
    4a1c: aa0003f3     	mov	x19, x0
    4a20: 72a001e9     	movk	w9, #0xf, lsl #16
    4a24: 9b097d01     	mul	x1, x8, x9
    4a28: 94000000     	bl	0x4a28 <charger_policy_timeout_alarm_cb+0x34>
		0000000000004a28:  R_AARCH64_CALL26	alarm_start_relative
    4a2c: 3947b268     	ldrb	w8, [x19, #0x1ec]
    4a30: 35000108     	cbnz	w8, 0x4a50 <charger_policy_timeout_alarm_cb+0x5c>
    4a34: aa1303e2     	mov	x2, x19
    4a38: f8480c48     	ldr	x8, [x2, #0x80]!
    4a3c: 370000a8     	tbnz	w8, #0x0, 0x4a50 <charger_policy_timeout_alarm_cb+0x5c>
    4a40: f9403e61     	ldr	x1, [x19, #0x78]
    4a44: 52800400     	mov	w0, #0x20               // =32
    4a48: 52800323     	mov	w3, #0x19               // =25
    4a4c: 94000000     	bl	0x4a4c <charger_policy_timeout_alarm_cb+0x58>
		0000000000004a4c:  R_AARCH64_CALL26	queue_delayed_work_on
    4a50: 3947b268     	ldrb	w8, [x19, #0x1ec]
    4a54: 7100011f     	cmp	w8, #0x0
    4a58: 1a9f17e0     	cset	w0, eq
    4a5c: f9400bf3     	ldr	x19, [sp, #0x10]
    4a60: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4a64: d50323bf     	autiasp
    4a68: d65f03c0     	ret
