
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f40 <zlog_register_work_init>:
     f40: d503233f     	paciasp
     f44: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     f48: f9000bf3     	str	x19, [sp, #0x10]
     f4c: 910003fd     	mov	x29, sp
     f50: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f50:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     f54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
     f58: 91000000     	add	x0, x0, #0x0
		0000000000000f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
     f5c: f9400113     	ldr	x19, [x8]
		0000000000000f5c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     f60: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2444
     f64: 91000021     	add	x1, x1, #0x0
		0000000000000f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2444
     f68: 94000000     	bl	0xf68 <zlog_register_work_init+0x28>
		0000000000000f68:  R_AARCH64_CALL26	_printk
     f6c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     f70: 91296269     	add	x9, x19, #0xa58
     f74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f74:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     f78: 91000021     	add	x1, x1, #0x0
		0000000000000f78:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     f7c: f9052a68     	str	x8, [x19, #0xa50]
     f80: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f80:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xfbc
     f84: 91000108     	add	x8, x8, #0x0
		0000000000000f84:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xfbc
     f88: 9129c260     	add	x0, x19, #0xa70
     f8c: 52a00402     	mov	w2, #0x200000           // =2097152
     f90: aa1f03e3     	mov	x3, xzr
     f94: aa1f03e4     	mov	x4, xzr
     f98: f9052e69     	str	x9, [x19, #0xa58]
     f9c: f9053269     	str	x9, [x19, #0xa60]
     fa0: f9053668     	str	x8, [x19, #0xa68]
     fa4: 94000000     	bl	0xfa4 <zlog_register_work_init+0x64>
		0000000000000fa4:  R_AARCH64_CALL26	init_timer_key
     fa8: f9400bf3     	ldr	x19, [sp, #0x10]
     fac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     fb0: d50323bf     	autiasp
     fb4: d65f03c0     	ret
