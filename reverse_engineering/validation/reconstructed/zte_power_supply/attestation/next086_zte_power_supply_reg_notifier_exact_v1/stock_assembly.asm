
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001024 <zte_power_supply_reg_notifier>:
    1024: d503233f     	paciasp
    1028: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    102c: 910003fd     	mov	x29, sp
    1030: aa0003e1     	mov	x1, x0
    1034: 90000000     	adrp	x0, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001034:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_notifier
    1038: 91000000     	add	x0, x0, #0x0
		0000000000001038:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_notifier
    103c: 94000000     	bl	0x103c <zte_power_supply_reg_notifier+0x18>
		000000000000103c:  R_AARCH64_CALL26	atomic_notifier_chain_register
    1040: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1044: d50323bf     	autiasp
    1048: d65f03c0     	ret
