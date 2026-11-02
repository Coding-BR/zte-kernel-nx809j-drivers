
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004dc <zte_power_supply_unreg_notifier>:
     4dc: d503233f     	paciasp
     4e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     4e4: 910003fd     	mov	x29, sp
     4e8: aa0003e1     	mov	x1, x0
     4ec: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa8
     4f0: 91000000     	add	x0, x0, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xa8
     4f4: 94000000     	bl	0x4f4 <zte_power_supply_unreg_notifier+0x18>
		00000000000004f4:  R_AARCH64_CALL26	atomic_notifier_chain_unregister
     4f8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     4fc: d50323bf     	autiasp
     500: d65f03c0     	ret
