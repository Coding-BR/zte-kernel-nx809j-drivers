
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d14 <nubia_charge_version_show>:
     d14: b40003a2     	cbz	x2, 0xd88 <nubia_charge_version_show+0x74>
     d18: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d18:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     d1c: 39400108     	ldrb	w8, [x8]
		0000000000000d1c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     d20: f100091f     	cmp	x8, #0x2
     d24: 540000a8     	b.hi	0xd38 <nubia_charge_version_show+0x24>
     d28: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x388
     d2c: 91000129     	add	x9, x9, #0x0
		0000000000000d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x388
     d30: b8687928     	ldr	w8, [x9, x8, lsl #2]
     d34: b9000048     	str	w8, [x2]
     d38: d503233f     	paciasp
     d3c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d40: f9000bf3     	str	x19, [sp, #0x10]
     d44: 910003fd     	mov	x29, sp
     d48: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d48:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     d4c: b9400108     	ldr	w8, [x8]
		0000000000000d4c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     d50: 7100051f     	cmp	w8, #0x1
     d54: 540001e0     	b.eq	0xd90 <nubia_charge_version_show+0x7c>
     d58: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f2
     d5c: 91000108     	add	x8, x8, #0x0
		0000000000000d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f2
     d60: aa0203e0     	mov	x0, x2
     d64: 52800181     	mov	w1, #0xc                // =12
     d68: aa0203e3     	mov	x3, x2
     d6c: aa0803e2     	mov	x2, x8
     d70: 94000000     	bl	0xd70 <nubia_charge_version_show+0x5c>
		0000000000000d70:  R_AARCH64_CALL26	snprintf
     d74: 93407c00     	sxtw	x0, w0
     d78: f9400bf3     	ldr	x19, [sp, #0x10]
     d7c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     d80: d50323bf     	autiasp
     d84: d65f03c0     	ret
     d88: aa1f03e0     	mov	x0, xzr
     d8c: d65f03c0     	ret
     d90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c5
     d94: 91000000     	add	x0, x0, #0x0
		0000000000000d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c5
     d98: aa0203e1     	mov	x1, x2
     d9c: aa0203f3     	mov	x19, x2
     da0: 94000000     	bl	0xda0 <nubia_charge_version_show+0x8c>
		0000000000000da0:  R_AARCH64_CALL26	_printk
     da4: aa1303e2     	mov	x2, x19
     da8: 17ffffec     	b	0xd58 <nubia_charge_version_show+0x44>
