
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f9c <zte_poweroff_charging_status>:
     f9c: d503233f     	paciasp
     fa0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     fa4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     fa8: 910003fd     	mov	x29, sp
     fac: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000fac:  R_AARCH64_ADR_PREL_PG_HI21	zte_poweroff_charging
     fb0: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000fb0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     fb4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170
     fb8: 91000000     	add	x0, x0, #0x0
		0000000000000fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170
     fbc: b9400261     	ldr	w1, [x19]
		0000000000000fbc:  R_AARCH64_LDST32_ABS_LO12_NC	zte_poweroff_charging
     fc0: 39400282     	ldrb	w2, [x20]
		0000000000000fc0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
     fc4: 94000000     	bl	0xfc4 <zte_poweroff_charging_status+0x28>
		0000000000000fc4:  R_AARCH64_CALL26	_printk
     fc8: b9400268     	ldr	w8, [x19]
		0000000000000fc8:  R_AARCH64_LDST32_ABS_LO12_NC	zte_poweroff_charging
     fcc: 39400289     	ldrb	w9, [x20]
		0000000000000fcc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
     fd0: 2a090100     	orr	w0, w8, w9
     fd4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     fd8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     fdc: d50323bf     	autiasp
     fe0: d65f03c0     	ret
