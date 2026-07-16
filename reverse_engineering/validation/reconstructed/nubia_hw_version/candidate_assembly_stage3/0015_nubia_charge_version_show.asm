
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d1c <nubia_charge_version_show>:
     d1c: b40003a2     	cbz	x2, 0xd90 <nubia_charge_version_show+0x74>
     d20: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d20:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     d24: 39400108     	ldrb	w8, [x8]
		0000000000000d24:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     d28: f100091f     	cmp	x8, #0x2
     d2c: 540000a8     	b.hi	0xd40 <nubia_charge_version_show+0x24>
     d30: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x364
     d34: 91000129     	add	x9, x9, #0x0
		0000000000000d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x364
     d38: b8687928     	ldr	w8, [x9, x8, lsl #2]
     d3c: b9000048     	str	w8, [x2]
     d40: d503233f     	paciasp
     d44: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d48: f9000bf3     	str	x19, [sp, #0x10]
     d4c: 910003fd     	mov	x29, sp
     d50: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     d54: b9400108     	ldr	w8, [x8]
		0000000000000d54:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     d58: 7100051f     	cmp	w8, #0x1
     d5c: 540001e0     	b.eq	0xd98 <nubia_charge_version_show+0x7c>
     d60: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32e
     d64: 91000108     	add	x8, x8, #0x0
		0000000000000d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32e
     d68: aa0203e0     	mov	x0, x2
     d6c: 52800181     	mov	w1, #0xc                // =12
     d70: aa0203e3     	mov	x3, x2
     d74: aa0803e2     	mov	x2, x8
     d78: 94000000     	bl	0xd78 <nubia_charge_version_show+0x5c>
		0000000000000d78:  R_AARCH64_CALL26	snprintf
     d7c: 93407c00     	sxtw	x0, w0
     d80: f9400bf3     	ldr	x19, [sp, #0x10]
     d84: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     d88: d50323bf     	autiasp
     d8c: d65f03c0     	ret
     d90: aa1f03e0     	mov	x0, xzr
     d94: d65f03c0     	ret
     d98: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c5
     d9c: 91000000     	add	x0, x0, #0x0
		0000000000000d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c5
     da0: aa0203e1     	mov	x1, x2
     da4: aa0203f3     	mov	x19, x2
     da8: 94000000     	bl	0xda8 <nubia_charge_version_show+0x8c>
		0000000000000da8:  R_AARCH64_CALL26	_printk
     dac: aa1303e2     	mov	x2, x19
     db0: 17ffffec     	b	0xd60 <nubia_charge_version_show+0x44>
