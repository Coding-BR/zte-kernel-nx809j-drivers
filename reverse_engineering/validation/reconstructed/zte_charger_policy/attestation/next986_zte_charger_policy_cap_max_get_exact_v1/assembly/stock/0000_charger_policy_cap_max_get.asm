
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f24 <charger_policy_cap_max_get>:
     f24: d503233f     	paciasp
     f28: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     f2c: f9000bf3     	str	x19, [sp, #0x10]
     f30: 910003fd     	mov	x29, sp
     f34: b4000141     	cbz	x1, 0xf5c <charger_policy_cap_max_get+0x38>
     f38: b9419823     	ldr	w3, [x1, #0x198]
     f3c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1637
     f40: 91000042     	add	x2, x2, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1637
     f44: 52820001     	mov	w1, #0x1000             // =4096
     f48: 94000000     	bl	0xf48 <charger_policy_cap_max_get+0x24>
		0000000000000f48:  R_AARCH64_CALL26	snprintf
     f4c: f9400bf3     	ldr	x19, [sp, #0x10]
     f50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     f54: d50323bf     	autiasp
     f58: d65f03c0     	ret
     f5c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc55
     f60: 91000108     	add	x8, x8, #0x0
		0000000000000f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc55
     f64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1502
     f68: 91000021     	add	x1, x1, #0x0
		0000000000000f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1502
     f6c: aa0003f3     	mov	x19, x0
     f70: aa0803e0     	mov	x0, x8
     f74: 94000000     	bl	0xf74 <charger_policy_cap_max_get+0x50>
		0000000000000f74:  R_AARCH64_CALL26	_printk
     f78: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e0
     f7c: 91000129     	add	x9, x9, #0x0
		0000000000000f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e0
     f80: 528d8ea8     	mov	w8, #0x6c75             // =27765
     f84: f9400129     	ldr	x9, [x9]
     f88: 72a00d88     	movk	w8, #0x6c, lsl #16
     f8c: 52800160     	mov	w0, #0xb                // =11
     f90: b9000a68     	str	w8, [x19, #0x8]
     f94: f9000269     	str	x9, [x19]
     f98: 17ffffed     	b	0xf4c <charger_policy_cap_max_get+0x28>
