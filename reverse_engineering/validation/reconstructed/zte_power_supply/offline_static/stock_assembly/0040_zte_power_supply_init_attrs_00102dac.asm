
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b7c <zte_power_supply_init_attrs>:
    1b7c: d503233f     	paciasp
    1b80: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    1b84: a9016ffc     	stp	x28, x27, [sp, #0x10]
    1b88: a90267fa     	stp	x26, x25, [sp, #0x20]
    1b8c: a9035ff8     	stp	x24, x23, [sp, #0x30]
    1b90: a90457f6     	stp	x22, x21, [sp, #0x40]
    1b94: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1b98: 910003fd     	mov	x29, sp
    1b9c: 90000008     	adrp	x8, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001b9c:  R_AARCH64_ADR_PREL_PG_HI21	.data
    1ba0: 91000108     	add	x8, x8, #0x0
		0000000000001ba0:  R_AARCH64_ADD_ABS_LO12_NC	.data
    1ba4: 52800261     	mov	w1, #0x13               // =19
    1ba8: f9000408     	str	x8, [x0, #0x8]
    1bac: 90000000     	adrp	x0, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe
    1bb0: 91000000     	add	x0, x0, #0x0
		0000000000001bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe
    1bb4: 94000000     	bl	0x1bb4 <zte_power_supply_init_attrs+0x38>
		0000000000001bb4:  R_AARCH64_CALL26	_printk
    1bb8: aa1f03f7     	mov	x23, xzr
    1bbc: aa1f03f3     	mov	x19, xzr
    1bc0: 52800b18     	mov	w24, #0x58              // =88
    1bc4: 90000019     	adrp	x25, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001bc4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
    1bc8: 91000339     	add	x25, x25, #0x0
		0000000000001bc8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
    1bcc: 90000016     	adrp	x22, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5dc
    1bd0: 910002d6     	add	x22, x22, #0x0
		0000000000001bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5dc
    1bd4: 9000001a     	adrp	x26, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001bd4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1cc0
    1bd8: 9100035a     	add	x26, x26, #0x0
		0000000000001bd8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1cc0
    1bdc: 9000001b     	adrp	x27, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001bdc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1e2c
    1be0: 9100037b     	add	x27, x27, #0x0
		0000000000001be0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1e2c
    1be4: 9000001c     	adrp	x28, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001be4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x48
    1be8: 9100039c     	add	x28, x28, #0x0
		0000000000001be8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x48
    1bec: 90000014     	adrp	x20, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001bec:  R_AARCH64_ADR_PREL_PG_HI21	_ctype
    1bf0: 91000294     	add	x20, x20, #0x0
		0000000000001bf0:  R_AARCH64_ADD_ABS_LO12_NC	_ctype
    1bf4: 14000013     	b	0x1c40 <zte_power_supply_init_attrs+0xc4>
    1bf8: 90000000     	adrp	x0, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd0
    1bfc: 91000000     	add	x0, x0, #0x0
		0000000000001bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd0
    1c00: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39d
    1c04: 91000021     	add	x1, x1, #0x0
		0000000000001c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39d
    1c08: 2a1303e2     	mov	w2, w19
    1c0c: 94000000     	bl	0x1c0c <zte_power_supply_init_attrs+0x90>
		0000000000001c0c:  R_AARCH64_CALL26	_printk
    1c10: 910022a0     	add	x0, x21, #0x8
    1c14: aa1603e1     	mov	x1, x22
    1c18: 2a1303e2     	mov	w2, w19
    1c1c: 94000000     	bl	0x1c1c <zte_power_supply_init_attrs+0xa0>
		0000000000001c1c:  R_AARCH64_CALL26	sprintf
    1c20: 910022a8     	add	x8, x21, #0x8
    1c24: 910162f7     	add	x23, x23, #0x58
    1c28: f8028ea8     	str	x8, [x21, #0x28]!
    1c2c: f8337b95     	str	x21, [x28, x19, lsl #3]
    1c30: 91000673     	add	x19, x19, #0x1
    1c34: f1004e7f     	cmp	x19, #0x13
    1c38: a9016eba     	stp	x26, x27, [x21, #0x10]
    1c3c: 540002e0     	b.eq	0x1c98 <zte_power_supply_init_attrs+0x11c>
    1c40: 9b186675     	madd	x21, x19, x24, x25
    1c44: f94002a8     	ldr	x8, [x21]
    1c48: b4fffd88     	cbz	x8, 0x1bf8 <zte_power_supply_init_attrs+0x7c>
    1c4c: 394022a9     	ldrb	w9, [x21, #0x8]
    1c50: 34fffe89     	cbz	w9, 0x1c20 <zte_power_supply_init_attrs+0xa4>
    1c54: aa1703e8     	mov	x8, x23
    1c58: 9100210a     	add	x10, x8, #0x8
    1c5c: f11a1d5f     	cmp	x10, #0x687
    1c60: 540002c8     	b.hi	0x1cb8 <zte_power_supply_init_attrs+0x13c>
    1c64: 92401d2a     	and	x10, x9, #0xff
    1c68: 8b08032b     	add	x11, x25, x8
    1c6c: f119fd1f     	cmp	x8, #0x67f
    1c70: 386a6a8a     	ldrb	w10, [x20, x10]
    1c74: 531b014a     	ubfiz	w10, w10, #5, #1
    1c78: 0b090149     	add	w9, w10, w9
    1c7c: 39002169     	strb	w9, [x11, #0x8]
    1c80: 540001c0     	b.eq	0x1cb8 <zte_power_supply_init_attrs+0x13c>
    1c84: 8b080329     	add	x9, x25, x8
    1c88: 91000508     	add	x8, x8, #0x1
    1c8c: 39402529     	ldrb	w9, [x9, #0x9]
    1c90: 35fffe49     	cbnz	w9, 0x1c58 <zte_power_supply_init_attrs+0xdc>
    1c94: 17ffffe3     	b	0x1c20 <zte_power_supply_init_attrs+0xa4>
    1c98: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    1c9c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1ca0: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    1ca4: a94267fa     	ldp	x26, x25, [sp, #0x20]
    1ca8: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    1cac: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    1cb0: d50323bf     	autiasp
    1cb4: d65f03c0     	ret
    1cb8: d4200020     	brk	#0x1
