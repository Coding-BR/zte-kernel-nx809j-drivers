
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cb0c <tpd_init_tpinfo>:
    cb0c: d503233f     	paciasp
    cb10: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    cb14: a9014ff4     	stp	x20, x19, [sp, #0x10]
    cb18: 910003fd     	mov	x29, sp
    cb1c: aa0003f3     	mov	x19, x0
    cb20: f946dc14     	ldr	x20, [x0, #0xdb8]
    cb24: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cb24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1895c
    cb28: 91000000     	add	x0, x0, #0x0
		000000000000cb28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1895c
    cb2c: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cb2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b1e1
    cb30: 91000021     	add	x1, x1, #0x0
		000000000000cb30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b1e1
    cb34: 94000000     	bl	0xcb34 <tpd_init_tpinfo+0x28>
		000000000000cb34:  R_AARCH64_CALL26	_printk
    cb38: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cb38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181f1
    cb3c: 91000108     	add	x8, x8, #0x0
		000000000000cb3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181f1
    cb40: 52800029     	mov	w9, #0x1                // =1
    cb44: a940210a     	ldp	x10, x8, [x8]
    cb48: b90cf269     	str	w9, [x19, #0xcf0]
    cb4c: 52800089     	mov	w9, #0x4                // =4
    cb50: 2a1f03e0     	mov	w0, wzr
    cb54: f9068e6a     	str	x10, [x19, #0xd18]
    cb58: f9069268     	str	x8, [x19, #0xd20]
    cb5c: f9400288     	ldr	x8, [x20]
    cb60: b9400d08     	ldr	w8, [x8, #0xc]
    cb64: b90d1669     	str	w9, [x19, #0xd14]
    cb68: b90d0268     	str	w8, [x19, #0xd00]
    cb6c: f9400288     	ldr	x8, [x20]
    cb70: 79418d08     	ldrh	w8, [x8, #0xc6]
    cb74: 5ac00508     	rev16	w8, w8
    cb78: b90d0668     	str	w8, [x19, #0xd04]
    cb7c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    cb80: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    cb84: d50323bf     	autiasp
    cb88: d65f03c0     	ret
