
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000948 <charger_policy_status_disable>:
     948: d503233f     	paciasp
     94c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     950: f9000bf3     	str	x19, [sp, #0x10]
     954: 910003fd     	mov	x29, sp
     958: 52800021     	mov	w1, #0x1                // =1
     95c: 52800022     	mov	w2, #0x1                // =1
     960: aa0003f3     	mov	x19, x0
     964: 9400029d     	bl	0x13d8 <charger_policy_ctrl_charging_enable>
     968: 9107b268     	add	x8, x19, #0x1ec
     96c: aa1303e0     	mov	x0, x19
     970: 2a1f03e1     	mov	w1, wzr
     974: 39086e7f     	strb	wzr, [x19, #0x21b]
     978: f901067f     	str	xzr, [x19, #0x208]
     97c: f900011f     	str	xzr, [x8]
     980: 9400024b     	bl	0x12ac <charger_policy_disable_cas>
     984: f9400bf3     	ldr	x19, [sp, #0x10]
     988: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     98c: d50323bf     	autiasp
     990: d65f03c0     	ret
