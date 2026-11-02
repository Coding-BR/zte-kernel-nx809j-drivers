
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f80 <policy_psy_set_property>:
    1f80: d503233f     	paciasp
    1f84: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1f88: f9000bf5     	str	x21, [sp, #0x10]
    1f8c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1f90: 910003fd     	mov	x29, sp
    1f94: aa0203f4     	mov	x20, x2
    1f98: 2a0103f3     	mov	w19, w1
    1f9c: 94000000     	bl	0x1f9c <policy_psy_set_property+0x1c>
		0000000000001f9c:  R_AARCH64_CALL26	power_supply_get_drvdata
    1fa0: b4000420     	cbz	x0, 0x2024 <policy_psy_set_property+0xa4>
    1fa4: 7100127f     	cmp	w19, #0x4
    1fa8: 540001e1     	b.ne	0x1fe4 <policy_psy_set_property+0x64>
    1fac: b9400288     	ldr	w8, [x20]
    1fb0: 2a1f03f3     	mov	w19, wzr
    1fb4: b901ec08     	str	w8, [x0, #0x1ec]
    1fb8: f9405001     	ldr	x1, [x0, #0xa0]
    1fbc: 9102a002     	add	x2, x0, #0xa8
    1fc0: 52800400     	mov	w0, #0x20               // =32
    1fc4: 52800323     	mov	w3, #0x19               // =25
    1fc8: 94000000     	bl	0x1fc8 <policy_psy_set_property+0x48>
		0000000000001fc8:  R_AARCH64_CALL26	queue_delayed_work_on
    1fcc: 2a1303e0     	mov	w0, w19
    1fd0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1fd4: f9400bf5     	ldr	x21, [sp, #0x10]
    1fd8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1fdc: d50323bf     	autiasp
    1fe0: d65f03c0     	ret
    1fe4: aa0003f5     	mov	x21, x0
    1fe8: 71000e7f     	cmp	w19, #0x3
    1fec: 540002a1     	b.ne	0x2040 <policy_psy_set_property+0xc0>
    1ff0: b9400282     	ldr	w2, [x20]
    1ff4: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d42
    1ff8: 91000000     	add	x0, x0, #0x0
		0000000000001ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d42
    1ffc: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001ffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2812
    2000: 91000021     	add	x1, x1, #0x0
		0000000000002000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2812
    2004: 94000000     	bl	0x2004 <policy_psy_set_property+0x84>
		0000000000002004:  R_AARCH64_CALL26	_printk
    2008: b9400288     	ldr	w8, [x20]
    200c: 2a1f03f3     	mov	w19, wzr
    2010: aa1503e0     	mov	x0, x21
    2014: 7100011f     	cmp	w8, #0x0
    2018: 1a9f17e8     	cset	w8, eq
    201c: b901eaa8     	str	w8, [x21, #0x1e8]
    2020: 17ffffe6     	b	0x1fb8 <policy_psy_set_property+0x38>
    2024: 90000000     	adrp	x0, 0x2000 <policy_psy_set_property+0x80>
		0000000000002024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e20
    2028: 91000000     	add	x0, x0, #0x0
		0000000000002028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e20
    202c: 90000001     	adrp	x1, 0x2000 <policy_psy_set_property+0x80>
		000000000000202c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2812
    2030: 91000021     	add	x1, x1, #0x0
		0000000000002030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2812
    2034: 94000000     	bl	0x2034 <policy_psy_set_property+0xb4>
		0000000000002034:  R_AARCH64_CALL26	_printk
    2038: 12800793     	mov	w19, #-0x3d             // =-61
    203c: 17ffffe4     	b	0x1fcc <policy_psy_set_property+0x4c>
    2040: 90000000     	adrp	x0, 0x2000 <policy_psy_set_property+0x80>
		0000000000002040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16d8
    2044: 91000000     	add	x0, x0, #0x0
		0000000000002044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16d8
    2048: 2a1303e1     	mov	w1, w19
    204c: 94000000     	bl	0x204c <policy_psy_set_property+0xcc>
		000000000000204c:  R_AARCH64_CALL26	_printk
    2050: 128002b3     	mov	w19, #-0x16             // =-22
    2054: aa1503e0     	mov	x0, x21
    2058: 17ffffd8     	b	0x1fb8 <policy_psy_set_property+0x38>
