
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000cb0 <charger_policy_force_disching_sec_get>:
     cb0: d503233f     	paciasp
     cb4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     cb8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     cbc: 910003fd     	mov	x29, sp
     cc0: aa0003f3     	mov	x19, x0
     cc4: b50001e1     	cbnz	x1, 0xd00 <charger_policy_force_disching_sec_get+0x50>
     cc8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     ccc: 91000000     	add	x0, x0, #0x0
		0000000000000ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     cd0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4be
     cd4: 91000021     	add	x1, x1, #0x0
		0000000000000cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4be
     cd8: 94000000     	bl	0xcd8 <charger_policy_force_disching_sec_get+0x28>
		0000000000000cd8:  R_AARCH64_CALL26	_printk
     cdc: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e0
     ce0: 91000129     	add	x9, x9, #0x0
		0000000000000ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e0
     ce4: 528d8ea8     	mov	w8, #0x6c75             // =27765
     ce8: f9400129     	ldr	x9, [x9]
     cec: 72a00d88     	movk	w8, #0x6c, lsl #16
     cf0: 52800160     	mov	w0, #0xb                // =11
     cf4: b9000a68     	str	w8, [x19, #0x8]
     cf8: f9000269     	str	x9, [x19]
     cfc: 1400000f     	b	0xd38 <charger_policy_force_disching_sec_get+0x88>
     d00: b941f822     	ldr	w2, [x1, #0x1f8]
     d04: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4be
     d08: 91000108     	add	x8, x8, #0x0
		0000000000000d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4be
     d0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e
     d10: 91000000     	add	x0, x0, #0x0
		0000000000000d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e
     d14: aa0103f4     	mov	x20, x1
     d18: aa0803e1     	mov	x1, x8
     d1c: 94000000     	bl	0xd1c <charger_policy_force_disching_sec_get+0x6c>
		0000000000000d1c:  R_AARCH64_CALL26	_printk
     d20: b941fa83     	ldr	w3, [x20, #0x1f8]
     d24: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1637
     d28: 91000042     	add	x2, x2, #0x0
		0000000000000d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1637
     d2c: aa1303e0     	mov	x0, x19
     d30: 52820001     	mov	w1, #0x1000             // =4096
     d34: 94000000     	bl	0xd34 <charger_policy_force_disching_sec_get+0x84>
		0000000000000d34:  R_AARCH64_CALL26	snprintf
     d38: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     d3c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     d40: d50323bf     	autiasp
     d44: d65f03c0     	ret
