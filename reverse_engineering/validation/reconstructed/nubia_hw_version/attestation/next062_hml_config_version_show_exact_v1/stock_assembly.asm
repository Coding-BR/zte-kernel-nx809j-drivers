
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000db0 <hml_config_version_show>:
     db0: b4000122     	cbz	x2, 0xdd4 <hml_config_version_show+0x24>
     db4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000db4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     db8: 39400108     	ldrb	w8, [x8]
		0000000000000db8:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     dbc: f100091f     	cmp	x8, #0x2
     dc0: 540000e8     	b.hi	0xddc <hml_config_version_show+0x2c>
     dc4: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x394
     dc8: 91000129     	add	x9, x9, #0x0
		0000000000000dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x394
     dcc: b8687923     	ldr	w3, [x9, x8, lsl #2]
     dd0: 14000004     	b	0xde0 <hml_config_version_show+0x30>
     dd4: aa1f03e0     	mov	x0, xzr
     dd8: d65f03c0     	ret
     ddc: 12800003     	mov	w3, #-0x1               // =-1
     de0: d503233f     	paciasp
     de4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     de8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     dec: 910003fd     	mov	x29, sp
     df0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000df0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     df4: b9400108     	ldr	w8, [x8]
		0000000000000df4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x18
     df8: 7100051f     	cmp	w8, #0x1
     dfc: 54000180     	b.eq	0xe2c <hml_config_version_show+0x7c>
     e00: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4dc
     e04: 91000108     	add	x8, x8, #0x0
		0000000000000e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4dc
     e08: aa0203e0     	mov	x0, x2
     e0c: 528000a1     	mov	w1, #0x5                // =5
     e10: aa0803e2     	mov	x2, x8
     e14: 94000000     	bl	0xe14 <hml_config_version_show+0x64>
		0000000000000e14:  R_AARCH64_CALL26	snprintf
     e18: 93407c00     	sxtw	x0, w0
     e1c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e20: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e24: d50323bf     	autiasp
     e28: d65f03c0     	ret
     e2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7
     e30: 91000000     	add	x0, x0, #0x0
		0000000000000e30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7
     e34: 2a0303e1     	mov	w1, w3
     e38: aa0203f3     	mov	x19, x2
     e3c: 2a0303f4     	mov	w20, w3
     e40: 94000000     	bl	0xe40 <hml_config_version_show+0x90>
		0000000000000e40:  R_AARCH64_CALL26	_printk
     e44: 2a1403e3     	mov	w3, w20
     e48: aa1303e2     	mov	x2, x19
     e4c: 17ffffed     	b	0xe00 <hml_config_version_show+0x50>
