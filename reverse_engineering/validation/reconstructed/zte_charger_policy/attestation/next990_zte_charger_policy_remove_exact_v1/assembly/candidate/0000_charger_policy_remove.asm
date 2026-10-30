
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000020b8 <charger_policy_remove>:
    20b8: d503233f     	paciasp
    20bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    20c0: f9000bf3     	str	x19, [sp, #0x10]
    20c4: 910003fd     	mov	x29, sp
    20c8: f9405413     	ldr	x19, [x0, #0xa8]
    20cc: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x6ec>
		00000000000020cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f67
    20d0: 91000000     	add	x0, x0, #0x0
		00000000000020d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f67
    20d4: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x6ec>
		00000000000020d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e05
    20d8: 91000021     	add	x1, x1, #0x0
		00000000000020d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e05
    20dc: 94000000     	bl	0x20dc <charger_policy_remove+0x24>
		00000000000020dc:  R_AARCH64_CALL26	_printk
    20e0: b4000113     	cbz	x19, 0x2100 <charger_policy_remove+0x48>
    20e4: 91004260     	add	x0, x19, #0x10
    20e8: 94000000     	bl	0x20e8 <charger_policy_remove+0x30>
		00000000000020e8:  R_AARCH64_CALL26	power_supply_unreg_notifier
    20ec: f940f260     	ldr	x0, [x19, #0x1e0]
    20f0: 94000000     	bl	0x20f0 <charger_policy_remove+0x38>
		00000000000020f0:  R_AARCH64_CALL26	wakeup_source_unregister
    20f4: f9400260     	ldr	x0, [x19]
    20f8: aa1303e1     	mov	x1, x19
    20fc: 94000000     	bl	0x20fc <charger_policy_remove+0x44>
		00000000000020fc:  R_AARCH64_CALL26	devm_kfree
    2100: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x6ec>
		0000000000002100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2223
    2104: 91000000     	add	x0, x0, #0x0
		0000000000002104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2223
    2108: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x6ec>
		0000000000002108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e05
    210c: 91000021     	add	x1, x1, #0x0
		000000000000210c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e05
    2110: 94000000     	bl	0x2110 <charger_policy_remove+0x58>
		0000000000002110:  R_AARCH64_CALL26	_printk
    2114: f9400bf3     	ldr	x19, [sp, #0x10]
    2118: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    211c: d50323bf     	autiasp
    2120: d65f03c0     	ret
