
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025224 <tpd_init_tpinfo>:
   25224: d503233f     	paciasp
   25228: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2522c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25230: 910003fd     	mov	x29, sp
   25234: aa0003f3     	mov	x19, x0
   25238: f946dc14     	ldr	x20, [x0, #0xdb8]
   2523c: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002523c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25240: 91000000     	add	x0, x0, #0x0
		0000000000025240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25244: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e1e
   25248: 91000021     	add	x1, x1, #0x0
		0000000000025248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e1e
   2524c: 94000000     	bl	0x2524c <tpd_init_tpinfo+0x28>
		000000000002524c:  R_AARCH64_CALL26	_printk
   25250: 90000008     	adrp	x8, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2434
   25254: 91000108     	add	x8, x8, #0x0
		0000000000025254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2434
   25258: 52800029     	mov	w9, #0x1                // =1
   2525c: a940210a     	ldp	x10, x8, [x8]
   25260: b90cf269     	str	w9, [x19, #0xcf0]
   25264: 52800089     	mov	w9, #0x4                // =4
   25268: 2a1f03e0     	mov	w0, wzr
   2526c: f9068e6a     	str	x10, [x19, #0xd18]
   25270: f9069268     	str	x8, [x19, #0xd20]
   25274: f9400288     	ldr	x8, [x20]
   25278: b9400d08     	ldr	w8, [x8, #0xc]
   2527c: b90d1669     	str	w9, [x19, #0xd14]
   25280: b90d0268     	str	w8, [x19, #0xd00]
   25284: f9400288     	ldr	x8, [x20]
   25288: 79418d08     	ldrh	w8, [x8, #0xc6]
   2528c: 5ac00508     	rev16	w8, w8
   25290: b90d0668     	str	w8, [x19, #0xd04]
   25294: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   25298: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   2529c: d50323bf     	autiasp
   252a0: d65f03c0     	ret
