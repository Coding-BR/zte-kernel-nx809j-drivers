
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001010 <zte_power_supply_powers>:
    1010: d503233f     	paciasp
    1014: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1018: 910003fd     	mov	x29, sp
    101c: 90000002     	adrp	x2, 0x1000 <zte_power_supply_set_battery_charged+0x54>
		000000000000101c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x298
    1020: 91000042     	add	x2, x2, #0x0
		0000000000001020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x298
    1024: 9100e000     	add	x0, x0, #0x38
    1028: 94000000     	bl	0x1028 <zte_power_supply_powers+0x18>
		0000000000001028:  R_AARCH64_CALL26	sysfs_create_link
    102c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1030: d50323bf     	autiasp
    1034: d65f03c0     	ret
