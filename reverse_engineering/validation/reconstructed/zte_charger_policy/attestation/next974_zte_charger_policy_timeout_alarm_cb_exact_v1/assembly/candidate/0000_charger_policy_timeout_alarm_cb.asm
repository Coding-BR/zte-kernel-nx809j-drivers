
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000226c <charger_policy_timeout_alarm_cb>:
    226c: d503233f     	paciasp
    2270: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2274: f9000bf3     	str	x19, [sp, #0x10]
    2278: 910003fd     	mov	x29, sp
    227c: f940ec08     	ldr	x8, [x0, #0x1d8]
    2280: 52884809     	mov	w9, #0x4240             // =16960
    2284: aa0003f3     	mov	x19, x0
    2288: 72a001e9     	movk	w9, #0xf, lsl #16
    228c: 9b097d01     	mul	x1, x8, x9
    2290: 94000000     	bl	0x2290 <charger_policy_timeout_alarm_cb+0x24>
		0000000000002290:  R_AARCH64_CALL26	alarm_start_relative
    2294: aa1303e2     	mov	x2, x19
    2298: f8480c48     	ldr	x8, [x2, #0x80]!
    229c: 370000a8     	tbnz	w8, #0x0, 0x22b0 <charger_policy_timeout_alarm_cb+0x44>
    22a0: f9403e61     	ldr	x1, [x19, #0x78]
    22a4: 52800400     	mov	w0, #0x20               // =32
    22a8: 52800323     	mov	w3, #0x19               // =25
    22ac: 94000000     	bl	0x22ac <charger_policy_timeout_alarm_cb+0x40>
		00000000000022ac:  R_AARCH64_CALL26	queue_delayed_work_on
    22b0: 52800020     	mov	w0, #0x1                // =1
    22b4: f9400bf3     	ldr	x19, [sp, #0x10]
    22b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    22bc: d50323bf     	autiasp
    22c0: d65f03c0     	ret
