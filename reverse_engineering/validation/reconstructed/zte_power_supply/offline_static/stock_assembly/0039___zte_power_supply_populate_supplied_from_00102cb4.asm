
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a84 <__zte_power_supply_populate_supplied_from>:
    1a84: d503233f     	paciasp
    1a88: d10243ff     	sub	sp, sp, #0x90
    1a8c: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1a90: a90757f6     	stp	x22, x21, [sp, #0x70]
    1a94: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1a98: 910183fd     	add	x29, sp, #0x60
    1a9c: d5384108     	mrs	x8, SP_EL0
    1aa0: aa0103f3     	mov	x19, x1
    1aa4: 12800015     	mov	w21, #-0x1              // =-1
    1aa8: f9438908     	ldr	x8, [x8, #0x710]
    1aac: 90000014     	adrp	x20, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c6
    1ab0: 91000294     	add	x20, x20, #0x0
		0000000000001ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c6
    1ab4: f81f83a8     	stur	x8, [x29, #-0x8]
    1ab8: f9404c16     	ldr	x22, [x0, #0x98]
    1abc: f9401660     	ldr	x0, [x19, #0x28]
    1ac0: 110006a4     	add	w4, w21, #0x1
    1ac4: 910023e5     	add	x5, sp, #0x8
    1ac8: aa1403e1     	mov	x1, x20
    1acc: aa1f03e2     	mov	x2, xzr
    1ad0: 2a1f03e3     	mov	w3, wzr
    1ad4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1ad8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1adc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1ae0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1ae4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1ae8: 94000000     	bl	0x1ae8 <__zte_power_supply_populate_supplied_from+0x64>
		0000000000001ae8:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1aec: 350002c0     	cbnz	w0, 0x1b44 <__zte_power_supply_populate_supplied_from+0xc0>
    1af0: f94007e8     	ldr	x8, [sp, #0x8]
    1af4: b4000288     	cbz	x8, 0x1b44 <__zte_power_supply_populate_supplied_from+0xc0>
    1af8: f94016c9     	ldr	x9, [x22, #0x28]
    1afc: 110006b5     	add	w21, w21, #0x1
    1b00: eb09011f     	cmp	x8, x9
    1b04: 54fffdc1     	b.ne	0x1abc <__zte_power_supply_populate_supplied_from+0x38>
    1b08: f9400268     	ldr	x8, [x19]
    1b0c: f94002c9     	ldr	x9, [x22]
    1b10: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a8
    1b14: 91000021     	add	x1, x1, #0x0
		0000000000001b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a8
    1b18: 9100e260     	add	x0, x19, #0x38
    1b1c: f9400102     	ldr	x2, [x8]
    1b20: f9400123     	ldr	x3, [x9]
    1b24: 94000000     	bl	0x1b24 <__zte_power_supply_populate_supplied_from+0xa0>
		0000000000001b24:  R_AARCH64_CALL26	_dev_info
    1b28: f94002c8     	ldr	x8, [x22]
    1b2c: f9400e69     	ldr	x9, [x19, #0x18]
    1b30: f9400108     	ldr	x8, [x8]
    1b34: f835d928     	str	x8, [x9, w21, sxtw #3]
    1b38: f9401268     	ldr	x8, [x19, #0x20]
    1b3c: 91000508     	add	x8, x8, #0x1
    1b40: f9001268     	str	x8, [x19, #0x20]
    1b44: d5384108     	mrs	x8, SP_EL0
    1b48: f9438908     	ldr	x8, [x8, #0x710]
    1b4c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1b50: eb09011f     	cmp	x8, x9
    1b54: 54000101     	b.ne	0x1b74 <__zte_power_supply_populate_supplied_from+0xf0>
    1b58: 2a1f03e0     	mov	w0, wzr
    1b5c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1b60: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1b64: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1b68: 910243ff     	add	sp, sp, #0x90
    1b6c: d50323bf     	autiasp
    1b70: d65f03c0     	ret
    1b74: 94000000     	bl	0x1b74 <__zte_power_supply_populate_supplied_from+0xf0>
		0000000000001b74:  R_AARCH64_CALL26	__stack_chk_fail
