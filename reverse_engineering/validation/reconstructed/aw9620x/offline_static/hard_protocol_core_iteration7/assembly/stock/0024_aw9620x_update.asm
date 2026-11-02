
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000040f8 <aw9620x_update>:
    40f8: d503233f     	paciasp
    40fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    4100: f9000bf3     	str	x19, [sp, #0x10]
    4104: 910003fd     	mov	x29, sp
    4108: f9401801     	ldr	x1, [x0, #0x30]
    410c: aa0003f3     	mov	x19, x0
    4110: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    4114: 91000000     	add	x0, x0, #0x0
		0000000000004114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    4118: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x639
    411c: 91000042     	add	x2, x2, #0x0
		000000000000411c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x639
    4120: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb4f
    4124: 91000063     	add	x3, x3, #0x0
		0000000000004124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb4f
    4128: 5281ae24     	mov	w4, #0xd71              // =3441
    412c: 94000000     	bl	0x412c <aw9620x_update+0x34>
		000000000000412c:  R_AARCH64_CALL26	_dev_printk
    4130: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    4134: 91084269     	add	x9, x19, #0x210
    4138: 90000001     	adrp	x1, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004138:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    413c: 91000021     	add	x1, x1, #0x0
		000000000000413c:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    4140: f9010668     	str	x8, [x19, #0x208]
    4144: 90000008     	adrp	x8, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004144:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x4198
    4148: 91000108     	add	x8, x8, #0x0
		0000000000004148:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x4198
    414c: 9108a260     	add	x0, x19, #0x228
    4150: 52a00402     	mov	w2, #0x200000           // =2097152
    4154: aa1f03e3     	mov	x3, xzr
    4158: aa1f03e4     	mov	x4, xzr
    415c: f9010a69     	str	x9, [x19, #0x210]
    4160: f9010e69     	str	x9, [x19, #0x218]
    4164: f9011268     	str	x8, [x19, #0x220]
    4168: 94000000     	bl	0x4168 <aw9620x_update+0x70>
		0000000000004168:  R_AARCH64_CALL26	init_timer_key
    416c: 90000008     	adrp	x8, 0x4000 <aw9620x_load_frimware_work+0x380>
		000000000000416c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    4170: 91082262     	add	x2, x19, #0x208
    4174: 52800400     	mov	w0, #0x20               // =32
    4178: f9400101     	ldr	x1, [x8]
		0000000000004178:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    417c: 52809c43     	mov	w3, #0x4e2              // =1250
    4180: 94000000     	bl	0x4180 <aw9620x_update+0x88>
		0000000000004180:  R_AARCH64_CALL26	queue_delayed_work_on
    4184: f9400bf3     	ldr	x19, [sp, #0x10]
    4188: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    418c: d50323bf     	autiasp
    4190: d65f03c0     	ret
