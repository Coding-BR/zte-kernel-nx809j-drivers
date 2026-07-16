
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a8c <zte_poweroff_charging_status>:
     a8c: d503233f     	paciasp
     a90: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a94: a9014ff4     	stp	x20, x19, [sp, #0x10]
     a98: 910003fd     	mov	x29, sp
     a9c: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000a9c:  R_AARCH64_ADR_PREL_PG_HI21	zte_poweroff_charging
     aa0: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000aa0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     aa4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15b
     aa8: 91000000     	add	x0, x0, #0x0
		0000000000000aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15b
     aac: b9400261     	ldr	w1, [x19]
		0000000000000aac:  R_AARCH64_LDST32_ABS_LO12_NC	zte_poweroff_charging
     ab0: 39400282     	ldrb	w2, [x20]
		0000000000000ab0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
     ab4: 94000000     	bl	0xab4 <zte_poweroff_charging_status+0x28>
		0000000000000ab4:  R_AARCH64_CALL26	_printk
     ab8: b9400268     	ldr	w8, [x19]
		0000000000000ab8:  R_AARCH64_LDST32_ABS_LO12_NC	zte_poweroff_charging
     abc: 39400289     	ldrb	w9, [x20]
		0000000000000abc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
     ac0: 2a090100     	orr	w0, w8, w9
     ac4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     ac8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     acc: d50323bf     	autiasp
     ad0: d65f03c0     	ret
