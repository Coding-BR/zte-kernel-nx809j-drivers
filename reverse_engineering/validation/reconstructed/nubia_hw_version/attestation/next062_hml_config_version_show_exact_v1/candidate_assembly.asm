
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002f0 <hml_config_version_show>:
     2f0: b4000122     	cbz	x2, 0x314 <hml_config_version_show+0x24>
     2f4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002f4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio3_v
     2f8: 39400108     	ldrb	w8, [x8]
		00000000000002f8:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio3_v
     2fc: f100091f     	cmp	x8, #0x2
     300: 540000e8     	b.hi	0x31c <hml_config_version_show+0x2c>
     304: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x394
     308: 91000129     	add	x9, x9, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x394
     30c: b8687923     	ldr	w3, [x9, x8, lsl #2]
     310: 14000004     	b	0x320 <hml_config_version_show+0x30>
     314: aa1f03e0     	mov	x0, xzr
     318: d65f03c0     	ret
     31c: 12800003     	mov	w3, #-0x1               // =-1
     320: d503233f     	paciasp
     324: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     328: a9014ff4     	stp	x20, x19, [sp, #0x10]
     32c: 910003fd     	mov	x29, sp
     330: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_bss_base+0x18
     334: b9400108     	ldr	w8, [x8]
		0000000000000334:  R_AARCH64_LDST32_ABS_LO12_NC	nubia_hw_exact_bss_base+0x18
     338: 7100051f     	cmp	w8, #0x1
     33c: 54000180     	b.eq	0x36c <hml_config_version_show+0x7c>
     340: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000340:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x4dc
     344: 91000108     	add	x8, x8, #0x0
		0000000000000344:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x4dc
     348: aa0203e0     	mov	x0, x2
     34c: 528000a1     	mov	w1, #0x5                // =5
     350: aa0803e2     	mov	x2, x8
     354: 94000000     	bl	0x354 <hml_config_version_show+0x64>
		0000000000000354:  R_AARCH64_CALL26	snprintf
     358: 93407c00     	sxtw	x0, w0
     35c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     360: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     364: d50323bf     	autiasp
     368: d65f03c0     	ret
     36c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000036c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x1c7
     370: 91000000     	add	x0, x0, #0x0
		0000000000000370:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x1c7
     374: 2a0303e1     	mov	w1, w3
     378: aa0203f3     	mov	x19, x2
     37c: 2a0303f4     	mov	w20, w3
     380: 94000000     	bl	0x380 <hml_config_version_show+0x90>
		0000000000000380:  R_AARCH64_CALL26	_printk
     384: 2a1403e3     	mov	w3, w20
     388: aa1303e2     	mov	x2, x19
     38c: 17ffffed     	b	0x340 <hml_config_version_show+0x50>
