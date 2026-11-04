
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002778 <charger_policy_status_disable>:
    2778: d503233f     	paciasp
    277c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2780: f9000bf3     	str	x19, [sp, #0x10]
    2784: 910003fd     	mov	x29, sp
    2788: 52800021     	mov	w1, #0x1                // =1
    278c: 52800022     	mov	w2, #0x1                // =1
    2790: aa0003f3     	mov	x19, x0
    2794: 94000000     	bl	0x2794 <charger_policy_status_disable+0x1c>
		0000000000002794:  R_AARCH64_CALL26	charger_policy_ctrl_charging_enable
    2798: 9107b268     	add	x8, x19, #0x1ec
    279c: aa1303e0     	mov	x0, x19
    27a0: 2a1f03e1     	mov	w1, wzr
    27a4: 39086e7f     	strb	wzr, [x19, #0x21b]
    27a8: f901067f     	str	xzr, [x19, #0x208]
    27ac: f900011f     	str	xzr, [x8]
    27b0: 94000000     	bl	0x27b0 <charger_policy_status_disable+0x38>
		00000000000027b0:  R_AARCH64_CALL26	charger_policy_disable_cas
    27b4: f9400bf3     	ldr	x19, [sp, #0x10]
    27b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    27bc: d50323bf     	autiasp
    27c0: d65f03c0     	ret
