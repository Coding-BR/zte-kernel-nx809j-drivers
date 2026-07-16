
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d94 <hml_config_version_show>:
     d94: b4000122     	cbz	x2, 0xdb8 <hml_config_version_show+0x24>
     d98: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d98:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     d9c: 39400108     	ldrb	w8, [x8]
		0000000000000d9c:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     da0: f100091f     	cmp	x8, #0x2
     da4: 540000e8     	b.hi	0xdc0 <hml_config_version_show+0x2c>
     da8: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x370
     dac: 91000129     	add	x9, x9, #0x0
		0000000000000dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x370
     db0: b8687923     	ldr	w3, [x9, x8, lsl #2]
     db4: 14000004     	b	0xdc4 <hml_config_version_show+0x30>
     db8: aa1f03e0     	mov	x0, xzr
     dbc: d65f03c0     	ret
     dc0: 12800003     	mov	w3, #-0x1               // =-1
     dc4: d503233f     	paciasp
     dc8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     dcc: a9014ff4     	stp	x20, x19, [sp, #0x10]
     dd0: 910003fd     	mov	x29, sp
     dd4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dd4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     dd8: b9400108     	ldr	w8, [x8]
		0000000000000dd8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     ddc: 7100051f     	cmp	w8, #0x1
     de0: 54000180     	b.eq	0xe10 <hml_config_version_show+0x7c>
     de4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b9
     de8: 91000108     	add	x8, x8, #0x0
		0000000000000de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b9
     dec: aa0203e0     	mov	x0, x2
     df0: 528000a1     	mov	w1, #0x5                // =5
     df4: aa0803e2     	mov	x2, x8
     df8: 94000000     	bl	0xdf8 <hml_config_version_show+0x64>
		0000000000000df8:  R_AARCH64_CALL26	snprintf
     dfc: 93407c00     	sxtw	x0, w0
     e00: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e04: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e08: d50323bf     	autiasp
     e0c: d65f03c0     	ret
     e10: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2
     e14: 91000000     	add	x0, x0, #0x0
		0000000000000e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2
     e18: 2a0303e1     	mov	w1, w3
     e1c: aa0203f3     	mov	x19, x2
     e20: 2a0303f4     	mov	w20, w3
     e24: 94000000     	bl	0xe24 <hml_config_version_show+0x90>
		0000000000000e24:  R_AARCH64_CALL26	_printk
     e28: 2a1403e3     	mov	w3, w20
     e2c: aa1303e2     	mov	x2, x19
     e30: 17ffffed     	b	0xde4 <hml_config_version_show+0x50>
