
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011a8 <charger_policy_get_prop_by_name>:
    11a8: d503233f     	paciasp
    11ac: d10103ff     	sub	sp, sp, #0x40
    11b0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    11b4: a90257f6     	stp	x22, x21, [sp, #0x20]
    11b8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    11bc: 910043fd     	add	x29, sp, #0x10
    11c0: d5384108     	mrs	x8, SP_EL0
    11c4: f9438908     	ldr	x8, [x8, #0x710]
    11c8: f90007e8     	str	x8, [sp, #0x8]
    11cc: f90003ff     	str	xzr, [sp]
    11d0: b4000360     	cbz	x0, 0x123c <charger_policy_get_prop_by_name+0x94>
    11d4: aa0203f5     	mov	x21, x2
    11d8: 2a0103f4     	mov	w20, w1
    11dc: aa0003f3     	mov	x19, x0
    11e0: 94000000     	bl	0x11e0 <charger_policy_get_prop_by_name+0x38>
		00000000000011e0:  R_AARCH64_CALL26	power_supply_get_by_name
    11e4: b40003a0     	cbz	x0, 0x1258 <charger_policy_get_prop_by_name+0xb0>
    11e8: 910003e2     	mov	x2, sp
    11ec: 2a1403e1     	mov	w1, w20
    11f0: aa0003f6     	mov	x22, x0
    11f4: 94000000     	bl	0x11f4 <charger_policy_get_prop_by_name+0x4c>
		00000000000011f4:  R_AARCH64_CALL26	power_supply_get_property
    11f8: 37f80400     	tbnz	w0, #0x1f, 0x1278 <charger_policy_get_prop_by_name+0xd0>
    11fc: b94003e8     	ldr	w8, [sp]
    1200: aa1603e0     	mov	x0, x22
    1204: b90002a8     	str	w8, [x21]
    1208: 94000000     	bl	0x1208 <charger_policy_get_prop_by_name+0x60>
		0000000000001208:  R_AARCH64_CALL26	power_supply_put
    120c: 2a1f03e0     	mov	w0, wzr
    1210: d5384108     	mrs	x8, SP_EL0
    1214: f9438908     	ldr	x8, [x8, #0x710]
    1218: f94007e9     	ldr	x9, [sp, #0x8]
    121c: eb09011f     	cmp	x8, x9
    1220: 54000441     	b.ne	0x12a8 <charger_policy_get_prop_by_name+0x100>
    1224: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1228: a94257f6     	ldp	x22, x21, [sp, #0x20]
    122c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1230: 910103ff     	add	sp, sp, #0x40
    1234: d50323bf     	autiasp
    1238: d65f03c0     	ret
    123c: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000123c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da
    1240: 91000000     	add	x0, x0, #0x0
		0000000000001240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da
    1244: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    1248: 91000021     	add	x1, x1, #0x0
		0000000000001248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    124c: 94000000     	bl	0x124c <charger_policy_get_prop_by_name+0xa4>
		000000000000124c:  R_AARCH64_CALL26	_printk
    1250: 128002a0     	mov	w0, #-0x16              // =-22
    1254: 17ffffef     	b	0x1210 <charger_policy_get_prop_by_name+0x68>
    1258: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152b
    125c: 91000000     	add	x0, x0, #0x0
		000000000000125c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152b
    1260: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    1264: 91000021     	add	x1, x1, #0x0
		0000000000001264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    1268: aa1303e2     	mov	x2, x19
    126c: 94000000     	bl	0x126c <charger_policy_get_prop_by_name+0xc4>
		000000000000126c:  R_AARCH64_CALL26	_printk
    1270: 128002a0     	mov	w0, #-0x16              // =-22
    1274: 17ffffe7     	b	0x1210 <charger_policy_get_prop_by_name+0x68>
    1278: 90000008     	adrp	x8, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed1
    127c: 91000108     	add	x8, x8, #0x0
		000000000000127c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed1
    1280: 2a0003f5     	mov	w21, w0
    1284: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6cc
    1288: 91000021     	add	x1, x1, #0x0
		0000000000001288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6cc
    128c: aa0803e0     	mov	x0, x8
    1290: aa1303e2     	mov	x2, x19
    1294: 2a1403e3     	mov	w3, w20
    1298: 2a1503e4     	mov	w4, w21
    129c: 94000000     	bl	0x129c <charger_policy_get_prop_by_name+0xf4>
		000000000000129c:  R_AARCH64_CALL26	_printk
    12a0: 2a1503e0     	mov	w0, w21
    12a4: 17ffffdb     	b	0x1210 <charger_policy_get_prop_by_name+0x68>
    12a8: 94000000     	bl	0x12a8 <charger_policy_get_prop_by_name+0x100>
		00000000000012a8:  R_AARCH64_CALL26	__stack_chk_fail
