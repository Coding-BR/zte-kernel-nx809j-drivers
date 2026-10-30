
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000db8 <nubia_charge_version_show>:
     db8: b40003a2     	cbz	x2, 0xe2c <nubia_charge_version_show+0x74>
     dbc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     dc0: 39400108     	ldrb	w8, [x8]
		0000000000000dc0:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     dc4: f100091f     	cmp	x8, #0x2
     dc8: 540000a8     	b.hi	0xddc <nubia_charge_version_show+0x24>
     dcc: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x558
     dd0: 91000129     	add	x9, x9, #0x0
		0000000000000dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x558
     dd4: b8687928     	ldr	w8, [x9, x8, lsl #2]
     dd8: b9000048     	str	w8, [x2]
     ddc: d503233f     	paciasp
     de0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     de4: f9000bf3     	str	x19, [sp, #0x10]
     de8: 910003fd     	mov	x29, sp
     dec: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dec:  R_AARCH64_ADR_PREL_PG_HI21	debug_value
     df0: b9400108     	ldr	w8, [x8]
		0000000000000df0:  R_AARCH64_LDST32_ABS_LO12_NC	debug_value
     df4: 7100051f     	cmp	w8, #0x1
     df8: 540001e0     	b.eq	0xe34 <nubia_charge_version_show+0x7c>
     dfc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78e
     e00: 91000108     	add	x8, x8, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78e
     e04: aa0203e0     	mov	x0, x2
     e08: 52800181     	mov	w1, #0xc                // =12
     e0c: aa0203e3     	mov	x3, x2
     e10: aa0803e2     	mov	x2, x8
     e14: 94000000     	bl	0xe14 <nubia_charge_version_show+0x5c>
		0000000000000e14:  R_AARCH64_CALL26	snprintf
     e18: 93407c00     	sxtw	x0, w0
     e1c: f9400bf3     	ldr	x19, [sp, #0x10]
     e20: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e24: d50323bf     	autiasp
     e28: d65f03c0     	ret
     e2c: aa1f03e0     	mov	x0, xzr
     e30: d65f03c0     	ret
     e34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x725
     e38: 91000000     	add	x0, x0, #0x0
		0000000000000e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x725
     e3c: aa0203e1     	mov	x1, x2
     e40: aa0203f3     	mov	x19, x2
     e44: 94000000     	bl	0xe44 <nubia_charge_version_show+0x8c>
		0000000000000e44:  R_AARCH64_CALL26	_printk
     e48: aa1303e2     	mov	x2, x19
     e4c: 17ffffec     	b	0xdfc <nubia_charge_version_show+0x44>
