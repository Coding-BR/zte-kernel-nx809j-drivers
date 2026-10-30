
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a74 <gf_enable_irq>:
     a74: d503233f     	paciasp
     a78: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a7c: f9000bf3     	str	x19, [sp, #0x10]
     a80: 910003fd     	mov	x29, sp
     a84: b9404c08     	ldr	w8, [x0, #0x4c]
     a88: 35000148     	cbnz	w8, 0xab0 <gf_enable_irq+0x3c>
     a8c: b9404808     	ldr	w8, [x0, #0x48]
     a90: aa0003f3     	mov	x19, x0
     a94: 2a0803e0     	mov	w0, w8
     a98: 94000000     	bl	0xa98 <gf_enable_irq+0x24>
		0000000000000a98:  R_AARCH64_CALL26	enable_irq
     a9c: 52800028     	mov	w8, #0x1                // =1
     aa0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ed
     aa4: 91000000     	add	x0, x0, #0x0
		0000000000000aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ed
     aa8: b9004e68     	str	w8, [x19, #0x4c]
     aac: 14000003     	b	0xab8 <gf_enable_irq+0x44>
     ab0: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe28
     ab4: 91000000     	add	x0, x0, #0x0
		0000000000000ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe28
     ab8: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42d
     abc: 91000021     	add	x1, x1, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42d
     ac0: 94000000     	bl	0xac0 <gf_enable_irq+0x4c>
		0000000000000ac0:  R_AARCH64_CALL26	_printk
     ac4: f9400bf3     	ldr	x19, [sp, #0x10]
     ac8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     acc: d50323bf     	autiasp
     ad0: d65f03c0     	ret
