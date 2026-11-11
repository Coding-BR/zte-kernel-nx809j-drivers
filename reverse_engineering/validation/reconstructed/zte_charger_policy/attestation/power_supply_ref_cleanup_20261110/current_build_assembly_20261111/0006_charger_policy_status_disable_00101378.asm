
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000027a4 <charger_policy_status_disable>:
    27a4: d503233f     	paciasp
    27a8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    27ac: f9000bf3     	str	x19, [sp, #0x10]
    27b0: 910003fd     	mov	x29, sp
    27b4: 52800021     	mov	w1, #0x1                // =1
    27b8: 52800022     	mov	w2, #0x1                // =1
    27bc: aa0003f3     	mov	x19, x0
    27c0: 94000000     	bl	0x27c0 <charger_policy_status_disable+0x1c>
		00000000000027c0:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    27c4: 9107b268     	add	x8, x19, #0x1ec
    27c8: aa1303e0     	mov	x0, x19
    27cc: 2a1f03e1     	mov	w1, wzr
    27d0: 39086e7f     	strb	wzr, [x19, #0x21b]
    27d4: f901067f     	str	xzr, [x19, #0x208]
    27d8: f900011f     	str	xzr, [x8]
    27dc: 94000000     	bl	0x27dc <charger_policy_status_disable+0x38>
		00000000000027dc:  R_AARCH64_CALL26	charger_policy_disable_cas
    27e0: f9400bf3     	ldr	x19, [sp, #0x10]
    27e4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    27e8: d50323bf     	autiasp
    27ec: d65f03c0     	ret
