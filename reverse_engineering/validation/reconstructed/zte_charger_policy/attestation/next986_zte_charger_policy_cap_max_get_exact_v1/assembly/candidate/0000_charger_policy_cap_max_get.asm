
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e7c <charger_policy_cap_max_get>:
     e7c: d503233f     	paciasp
     e80: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e84: f9000bf3     	str	x19, [sp, #0x10]
     e88: 910003fd     	mov	x29, sp
     e8c: b4000141     	cbz	x1, 0xeb4 <charger_policy_cap_max_get+0x38>
     e90: b9419823     	ldr	w3, [x1, #0x198]
     e94: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1f
     e98: 91000042     	add	x2, x2, #0x0
		0000000000000e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1f
     e9c: 52820001     	mov	w1, #0x1000             // =4096
     ea0: 94000000     	bl	0xea0 <charger_policy_cap_max_get+0x24>
		0000000000000ea0:  R_AARCH64_CALL26	snprintf
     ea4: f9400bf3     	ldr	x19, [sp, #0x10]
     ea8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     eac: d50323bf     	autiasp
     eb0: d65f03c0     	ret
     eb4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7c
     eb8: 91000108     	add	x8, x8, #0x0
		0000000000000eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7c
     ebc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1935
     ec0: 91000021     	add	x1, x1, #0x0
		0000000000000ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1935
     ec4: aa0003f3     	mov	x19, x0
     ec8: aa0803e0     	mov	x0, x8
     ecc: 94000000     	bl	0xecc <charger_policy_cap_max_get+0x50>
		0000000000000ecc:  R_AARCH64_CALL26	_printk
     ed0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc42
     ed4: 91000129     	add	x9, x9, #0x0
		0000000000000ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc42
     ed8: 528d8ea8     	mov	w8, #0x6c75             // =27765
     edc: f9400129     	ldr	x9, [x9]
     ee0: 72a00d88     	movk	w8, #0x6c, lsl #16
     ee4: 52800160     	mov	w0, #0xb                // =11
     ee8: b9000a68     	str	w8, [x19, #0x8]
     eec: f9000269     	str	x9, [x19]
     ef0: 17ffffed     	b	0xea4 <charger_policy_cap_max_get+0x28>
