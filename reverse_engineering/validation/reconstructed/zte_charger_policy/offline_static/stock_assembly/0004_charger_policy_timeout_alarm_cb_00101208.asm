
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007d8 <charger_policy_timeout_alarm_cb>:
     7d8: d503233f     	paciasp
     7dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     7e0: f9000bf3     	str	x19, [sp, #0x10]
     7e4: 910003fd     	mov	x29, sp
     7e8: f940ec08     	ldr	x8, [x0, #0x1d8]
     7ec: 52884809     	mov	w9, #0x4240             // =16960
     7f0: aa0003f3     	mov	x19, x0
     7f4: 72a001e9     	movk	w9, #0xf, lsl #16
     7f8: 9b097d01     	mul	x1, x8, x9
     7fc: 94000000     	bl	0x7fc <charger_policy_timeout_alarm_cb+0x24>
		00000000000007fc:  R_AARCH64_CALL26	alarm_start_relative
     800: aa1303e2     	mov	x2, x19
     804: f8480c48     	ldr	x8, [x2, #0x80]!
     808: 370000a8     	tbnz	w8, #0x0, 0x81c <charger_policy_timeout_alarm_cb+0x44>
     80c: f9403e61     	ldr	x1, [x19, #0x78]
     810: 52800400     	mov	w0, #0x20               // =32
     814: 52800323     	mov	w3, #0x19               // =25
     818: 94000000     	bl	0x818 <charger_policy_timeout_alarm_cb+0x40>
		0000000000000818:  R_AARCH64_CALL26	queue_delayed_work_on
     81c: 52800020     	mov	w0, #0x1                // =1
     820: f9400bf3     	ldr	x19, [sp, #0x10]
     824: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     828: d50323bf     	autiasp
     82c: d65f03c0     	ret
