
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000049a8 <charger_policy_timeout_alarm_cb>:
    49a8: 3947b008     	ldrb	w8, [x0, #0x1ec]
    49ac: 34000068     	cbz	w8, 0x49b8 <charger_policy_timeout_alarm_cb+0x10>
    49b0: 2a1f03e0     	mov	w0, wzr
    49b4: d65f03c0     	ret
    49b8: d503233f     	paciasp
    49bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    49c0: f9000bf3     	str	x19, [sp, #0x10]
    49c4: 910003fd     	mov	x29, sp
    49c8: f940ec08     	ldr	x8, [x0, #0x1d8]
    49cc: 52884809     	mov	w9, #0x4240             // =16960
    49d0: aa0003f3     	mov	x19, x0
    49d4: 72a001e9     	movk	w9, #0xf, lsl #16
    49d8: 9b097d01     	mul	x1, x8, x9
    49dc: 94000000     	bl	0x49dc <charger_policy_timeout_alarm_cb+0x34>
		00000000000049dc:  R_AARCH64_CALL26	alarm_start_relative
    49e0: 3947b268     	ldrb	w8, [x19, #0x1ec]
    49e4: 35000108     	cbnz	w8, 0x4a04 <charger_policy_timeout_alarm_cb+0x5c>
    49e8: aa1303e2     	mov	x2, x19
    49ec: f8480c48     	ldr	x8, [x2, #0x80]!
    49f0: 370000a8     	tbnz	w8, #0x0, 0x4a04 <charger_policy_timeout_alarm_cb+0x5c>
    49f4: f9403e61     	ldr	x1, [x19, #0x78]
    49f8: 52800400     	mov	w0, #0x20               // =32
    49fc: 52800323     	mov	w3, #0x19               // =25
    4a00: 94000000     	bl	0x4a00 <charger_policy_timeout_alarm_cb+0x58>
		0000000000004a00:  R_AARCH64_CALL26	queue_delayed_work_on
    4a04: 3947b268     	ldrb	w8, [x19, #0x1ec]
    4a08: 7100011f     	cmp	w8, #0x0
    4a0c: 1a9f17e0     	cset	w0, eq
    4a10: f9400bf3     	ldr	x19, [sp, #0x10]
    4a14: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4a18: d50323bf     	autiasp
    4a1c: d65f03c0     	ret
