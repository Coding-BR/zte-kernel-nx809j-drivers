
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008ec <charger_policy_status_disable>:
     8ec: d503233f     	paciasp
     8f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     8f4: f9000bf3     	str	x19, [sp, #0x10]
     8f8: 910003fd     	mov	x29, sp
     8fc: 52800021     	mov	w1, #0x1                // =1
     900: 52800022     	mov	w2, #0x1                // =1
     904: aa0003f3     	mov	x19, x0
     908: 9400000c     	bl	0x938 <charger_policy_ctrl_charging_enable>
     90c: 9107b268     	add	x8, x19, #0x1ec
     910: aa1303e0     	mov	x0, x19
     914: 2a1f03e1     	mov	w1, wzr
     918: 39086e7f     	strb	wzr, [x19, #0x21b]
     91c: f901067f     	str	xzr, [x19, #0x208]
     920: f900011f     	str	xzr, [x8]
     924: 94000080     	bl	0xb24 <charger_policy_disable_cas>
     928: f9400bf3     	ldr	x19, [sp, #0x10]
     92c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     930: d50323bf     	autiasp
     934: d65f03c0     	ret
