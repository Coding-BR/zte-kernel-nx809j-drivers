
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ab8 <zte_power_supply_get_by_name>:
     ab8: d503233f     	paciasp
     abc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     ac0: 910003fd     	mov	x29, sp
     ac4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ac4:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
     ac8: aa0003e2     	mov	x2, x0
     acc: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000acc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xb28
     ad0: 91000063     	add	x3, x3, #0x0
		0000000000000ad0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xb28
     ad4: f9400108     	ldr	x8, [x8]
		0000000000000ad4:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
     ad8: aa1f03e1     	mov	x1, xzr
     adc: aa0803e0     	mov	x0, x8
     ae0: 94000000     	bl	0xae0 <zte_power_supply_get_by_name+0x28>
		0000000000000ae0:  R_AARCH64_CALL26	class_find_device
     ae4: b40000c0     	cbz	x0, 0xafc <zte_power_supply_get_by_name+0x44>
     ae8: f9404c00     	ldr	x0, [x0, #0x98]
     aec: 14000007     	b	0xb08 <zte_power_supply_get_by_name+0x50>
     af0: 91116008     	add	x8, x0, #0x458
     af4: 52800029     	mov	w9, #0x1                // =1
     af8: b829011f     	stadd	w9, [x8]
     afc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     b00: d50323bf     	autiasp
     b04: d65f03c0     	ret
     b08: 91116008     	add	x8, x0, #0x458
     b0c: f9800111     	prfm	pstl1strm, [x8]
     b10: 885f7d09     	ldxr	w9, [x8]
     b14: 11000529     	add	w9, w9, #0x1
     b18: 880a7d09     	stxr	w10, w9, [x8]
     b1c: 35ffffaa     	cbnz	w10, 0xb10 <zte_power_supply_get_by_name+0x58>
     b20: 17fffff7     	b	0xafc <zte_power_supply_get_by_name+0x44>
