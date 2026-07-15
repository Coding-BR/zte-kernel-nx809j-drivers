
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001050 <zte_power_supply_unreg_notifier>:
    1050: d503233f     	paciasp
    1054: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1058: 910003fd     	mov	x29, sp
    105c: aa0003e1     	mov	x1, x0
    1060: 90000000     	adrp	x0, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001060:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_notifier
    1064: 91000000     	add	x0, x0, #0x0
		0000000000001064:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_notifier
    1068: 94000000     	bl	0x1068 <zte_power_supply_unreg_notifier+0x18>
		0000000000001068:  R_AARCH64_CALL26	atomic_notifier_chain_unregister
    106c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1070: d50323bf     	autiasp
    1074: d65f03c0     	ret
