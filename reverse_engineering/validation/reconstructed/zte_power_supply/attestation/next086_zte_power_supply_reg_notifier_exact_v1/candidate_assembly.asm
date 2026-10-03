
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004b0 <zte_power_supply_reg_notifier>:
     4b0: d503233f     	paciasp
     4b4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     4b8: 910003fd     	mov	x29, sp
     4bc: aa0003e1     	mov	x1, x0
     4c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa8
     4c4: 91000000     	add	x0, x0, #0x0
		00000000000004c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xa8
     4c8: 94000000     	bl	0x4c8 <zte_power_supply_reg_notifier+0x18>
		00000000000004c8:  R_AARCH64_CALL26	atomic_notifier_chain_register
     4cc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     4d0: d50323bf     	autiasp
     4d4: d65f03c0     	ret
