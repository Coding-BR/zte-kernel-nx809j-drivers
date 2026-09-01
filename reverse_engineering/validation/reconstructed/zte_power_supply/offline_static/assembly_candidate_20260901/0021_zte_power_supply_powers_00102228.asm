
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000104c <zte_power_supply_powers>:
    104c: d503233f     	paciasp
    1050: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1054: 910003fd     	mov	x29, sp
    1058: 90000002     	adrp	x2, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6
    105c: 91000042     	add	x2, x2, #0x0
		000000000000105c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6
    1060: 9100e000     	add	x0, x0, #0x38
    1064: 94000000     	bl	0x1064 <zte_power_supply_powers+0x18>
		0000000000001064:  R_AARCH64_CALL26	sysfs_create_link
    1068: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    106c: d50323bf     	autiasp
    1070: d65f03c0     	ret
