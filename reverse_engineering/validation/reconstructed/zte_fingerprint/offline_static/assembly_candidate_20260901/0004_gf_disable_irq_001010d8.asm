
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ad4 <gf_disable_irq>:
     ad4: d503233f     	paciasp
     ad8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     adc: 910003fd     	mov	x29, sp
     ae0: b9404c08     	ldr	w8, [x0, #0x4c]
     ae4: 35000088     	cbnz	w8, 0xaf4 <gf_disable_irq+0x20>
     ae8: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfec
     aec: 91000000     	add	x0, x0, #0x0
		0000000000000aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfec
     af0: 14000007     	b	0xb0c <gf_disable_irq+0x38>
     af4: b9404808     	ldr	w8, [x0, #0x48]
     af8: b9004c1f     	str	wzr, [x0, #0x4c]
     afc: 2a0803e0     	mov	w0, w8
     b00: 94000000     	bl	0xb00 <gf_disable_irq+0x2c>
		0000000000000b00:  R_AARCH64_CALL26	disable_irq
     b04: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		0000000000000b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x650
     b08: 91000000     	add	x0, x0, #0x0
		0000000000000b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x650
     b0c: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77b
     b10: 91000021     	add	x1, x1, #0x0
		0000000000000b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77b
     b14: 94000000     	bl	0xb14 <gf_disable_irq+0x40>
		0000000000000b14:  R_AARCH64_CALL26	_printk
     b18: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b1c: d50323bf     	autiasp
     b20: d65f03c0     	ret
