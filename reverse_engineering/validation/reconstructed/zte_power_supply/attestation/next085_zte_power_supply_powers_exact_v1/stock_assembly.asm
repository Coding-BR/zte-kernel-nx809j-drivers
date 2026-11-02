
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ff8 <zte_power_supply_powers>:
     ff8: d503233f     	paciasp
     ffc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1000: 910003fd     	mov	x29, sp
    1004: 90000002     	adrp	x2, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x260
    1008: 91000042     	add	x2, x2, #0x0
		0000000000001008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x260
    100c: 9100e000     	add	x0, x0, #0x38
    1010: 94000000     	bl	0x1010 <zte_power_supply_powers+0x18>
		0000000000001010:  R_AARCH64_CALL26	sysfs_create_link
    1014: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1018: d50323bf     	autiasp
    101c: d65f03c0     	ret
