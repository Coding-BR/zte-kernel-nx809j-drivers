
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000cf8 <nubia_charge_version_show>:
     cf8: b40003a2     	cbz	x2, 0xd6c <nubia_charge_version_show+0x74>
     cfc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cfc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     d00: 39400108     	ldrb	w8, [x8]
		0000000000000d00:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     d04: f100091f     	cmp	x8, #0x2
     d08: 540000a8     	b.hi	0xd1c <nubia_charge_version_show+0x24>
     d0c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x364
     d10: 91000129     	add	x9, x9, #0x0
		0000000000000d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x364
     d14: b8687928     	ldr	w8, [x9, x8, lsl #2]
     d18: b9000048     	str	w8, [x2]
     d1c: d503233f     	paciasp
     d20: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d24: f9000bf3     	str	x19, [sp, #0x10]
     d28: 910003fd     	mov	x29, sp
     d2c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d2c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     d30: b9400108     	ldr	w8, [x8]
		0000000000000d30:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     d34: 7100051f     	cmp	w8, #0x1
     d38: 540001e0     	b.eq	0xd74 <nubia_charge_version_show+0x7c>
     d3c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e5
     d40: 91000108     	add	x8, x8, #0x0
		0000000000000d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e5
     d44: aa0203e0     	mov	x0, x2
     d48: 52800181     	mov	w1, #0xc                // =12
     d4c: aa0203e3     	mov	x3, x2
     d50: aa0803e2     	mov	x2, x8
     d54: 94000000     	bl	0xd54 <nubia_charge_version_show+0x5c>
		0000000000000d54:  R_AARCH64_CALL26	snprintf
     d58: 93407c00     	sxtw	x0, w0
     d5c: f9400bf3     	ldr	x19, [sp, #0x10]
     d60: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     d64: d50323bf     	autiasp
     d68: d65f03c0     	ret
     d6c: aa1f03e0     	mov	x0, xzr
     d70: d65f03c0     	ret
     d74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27c
     d78: 91000000     	add	x0, x0, #0x0
		0000000000000d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27c
     d7c: aa0203e1     	mov	x1, x2
     d80: aa0203f3     	mov	x19, x2
     d84: 94000000     	bl	0xd84 <nubia_charge_version_show+0x8c>
		0000000000000d84:  R_AARCH64_CALL26	_printk
     d88: aa1303e2     	mov	x2, x19
     d8c: 17ffffec     	b	0xd3c <nubia_charge_version_show+0x44>
