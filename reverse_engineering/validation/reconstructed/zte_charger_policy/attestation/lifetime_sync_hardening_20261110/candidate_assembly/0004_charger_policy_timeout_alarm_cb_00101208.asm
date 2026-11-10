
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000049c0 <charger_policy_timeout_alarm_cb>:
    49c0: 3947b008     	ldrb	w8, [x0, #0x1ec]
    49c4: 34000068     	cbz	w8, 0x49d0 <charger_policy_timeout_alarm_cb+0x10>
    49c8: 2a1f03e0     	mov	w0, wzr
    49cc: d65f03c0     	ret
    49d0: d503233f     	paciasp
    49d4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    49d8: f9000bf3     	str	x19, [sp, #0x10]
    49dc: 910003fd     	mov	x29, sp
    49e0: f940ec08     	ldr	x8, [x0, #0x1d8]
    49e4: 52884809     	mov	w9, #0x4240             // =16960
    49e8: aa0003f3     	mov	x19, x0
    49ec: 72a001e9     	movk	w9, #0xf, lsl #16
    49f0: 9b097d01     	mul	x1, x8, x9
    49f4: 94000000     	bl	0x49f4 <charger_policy_timeout_alarm_cb+0x34>
		00000000000049f4:  R_AARCH64_CALL26	alarm_start_relative
    49f8: 3947b268     	ldrb	w8, [x19, #0x1ec]
    49fc: 35000108     	cbnz	w8, 0x4a1c <charger_policy_timeout_alarm_cb+0x5c>
    4a00: aa1303e2     	mov	x2, x19
    4a04: f8480c48     	ldr	x8, [x2, #0x80]!
    4a08: 370000a8     	tbnz	w8, #0x0, 0x4a1c <charger_policy_timeout_alarm_cb+0x5c>
    4a0c: f9403e61     	ldr	x1, [x19, #0x78]
    4a10: 52800400     	mov	w0, #0x20               // =32
    4a14: 52800323     	mov	w3, #0x19               // =25
    4a18: 94000000     	bl	0x4a18 <charger_policy_timeout_alarm_cb+0x58>
		0000000000004a18:  R_AARCH64_CALL26	queue_delayed_work_on
    4a1c: 3947b268     	ldrb	w8, [x19, #0x1ec]
    4a20: 7100011f     	cmp	w8, #0x0
    4a24: 1a9f17e0     	cset	w0, eq
    4a28: f9400bf3     	ldr	x19, [sp, #0x10]
    4a2c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4a30: d50323bf     	autiasp
    4a34: d65f03c0     	ret
