
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000db8 <hml_config_version_show>:
     db8: b4000122     	cbz	x2, 0xddc <hml_config_version_show+0x24>
     dbc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     dc0: 39400108     	ldrb	w8, [x8]
		0000000000000dc0:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     dc4: f100091f     	cmp	x8, #0x2
     dc8: 540000e8     	b.hi	0xde4 <hml_config_version_show+0x2c>
     dcc: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x370
     dd0: 91000129     	add	x9, x9, #0x0
		0000000000000dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x370
     dd4: b8687923     	ldr	w3, [x9, x8, lsl #2]
     dd8: 14000004     	b	0xde8 <hml_config_version_show+0x30>
     ddc: aa1f03e0     	mov	x0, xzr
     de0: d65f03c0     	ret
     de4: 12800003     	mov	w3, #-0x1               // =-1
     de8: d503233f     	paciasp
     dec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     df0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     df4: 910003fd     	mov	x29, sp
     df8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000df8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     dfc: b9400108     	ldr	w8, [x8]
		0000000000000dfc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     e00: 7100051f     	cmp	w8, #0x1
     e04: 54000180     	b.eq	0xe34 <hml_config_version_show+0x7c>
     e08: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dc
     e0c: 91000108     	add	x8, x8, #0x0
		0000000000000e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dc
     e10: aa0203e0     	mov	x0, x2
     e14: 528000a1     	mov	w1, #0x5                // =5
     e18: aa0803e2     	mov	x2, x8
     e1c: 94000000     	bl	0xe1c <hml_config_version_show+0x64>
		0000000000000e1c:  R_AARCH64_CALL26	snprintf
     e20: 93407c00     	sxtw	x0, w0
     e24: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e28: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e2c: d50323bf     	autiasp
     e30: d65f03c0     	ret
     e34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7
     e38: 91000000     	add	x0, x0, #0x0
		0000000000000e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7
     e3c: 2a0303e1     	mov	w1, w3
     e40: aa0203f3     	mov	x19, x2
     e44: 2a0303f4     	mov	w20, w3
     e48: 94000000     	bl	0xe48 <hml_config_version_show+0x90>
		0000000000000e48:  R_AARCH64_CALL26	_printk
     e4c: 2a1403e3     	mov	w3, w20
     e50: aa1303e2     	mov	x2, x19
     e54: 17ffffed     	b	0xe08 <hml_config_version_show+0x50>
