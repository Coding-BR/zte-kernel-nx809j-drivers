
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002160 <charger_policy_remove>:
    2160: d503233f     	paciasp
    2164: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2168: f9000bf3     	str	x19, [sp, #0x10]
    216c: 910003fd     	mov	x29, sp
    2170: f9405413     	ldr	x19, [x0, #0xa8]
    2174: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		0000000000002174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1603
    2178: 91000000     	add	x0, x0, #0x0
		0000000000002178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1603
    217c: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		000000000000217c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c4
    2180: 91000021     	add	x1, x1, #0x0
		0000000000002180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c4
    2184: 94000000     	bl	0x2184 <charger_policy_remove+0x24>
		0000000000002184:  R_AARCH64_CALL26	_printk
    2188: b4000113     	cbz	x19, 0x21a8 <charger_policy_remove+0x48>
    218c: 91004260     	add	x0, x19, #0x10
    2190: 94000000     	bl	0x2190 <charger_policy_remove+0x30>
		0000000000002190:  R_AARCH64_CALL26	power_supply_unreg_notifier
    2194: f940f260     	ldr	x0, [x19, #0x1e0]
    2198: 94000000     	bl	0x2198 <charger_policy_remove+0x38>
		0000000000002198:  R_AARCH64_CALL26	wakeup_source_unregister
    219c: f9400260     	ldr	x0, [x19]
    21a0: aa1303e1     	mov	x1, x19
    21a4: 94000000     	bl	0x21a4 <charger_policy_remove+0x44>
		00000000000021a4:  R_AARCH64_CALL26	devm_kfree
    21a8: 90000000     	adrp	x0, 0x2000 <charger_policy_probe+0x644>
		00000000000021a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1870
    21ac: 91000000     	add	x0, x0, #0x0
		00000000000021ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1870
    21b0: 90000001     	adrp	x1, 0x2000 <charger_policy_probe+0x644>
		00000000000021b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c4
    21b4: 91000021     	add	x1, x1, #0x0
		00000000000021b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c4
    21b8: 94000000     	bl	0x21b8 <charger_policy_remove+0x58>
		00000000000021b8:  R_AARCH64_CALL26	_printk
    21bc: f9400bf3     	ldr	x19, [sp, #0x10]
    21c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    21c4: d50323bf     	autiasp
    21c8: d65f03c0     	ret
