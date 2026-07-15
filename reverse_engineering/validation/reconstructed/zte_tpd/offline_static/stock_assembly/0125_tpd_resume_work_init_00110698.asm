
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009e10 <tpd_resume_work_init>:
    9e10: d503233f     	paciasp
    9e14: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9e18: f9000bf3     	str	x19, [sp, #0x10]
    9e1c: 910003fd     	mov	x29, sp
    9e20: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009e20:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9e24: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    9e28: 91000000     	add	x0, x0, #0x0
		0000000000009e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    9e2c: f9400113     	ldr	x19, [x8]
		0000000000009e2c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9e30: 90000001     	adrp	x1, 0x9000 <tp_ghost_check+0x488>
		0000000000009e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1296
    9e34: 91000021     	add	x1, x1, #0x0
		0000000000009e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1296
    9e38: 94000000     	bl	0x9e38 <tpd_resume_work_init+0x28>
		0000000000009e38:  R_AARCH64_CALL26	_printk
    9e3c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    9e40: 91272269     	add	x9, x19, #0x9c8
    9e44: 90000001     	adrp	x1, 0x9000 <tp_ghost_check+0x488>
		0000000000009e44:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
    9e48: 91000021     	add	x1, x1, #0x0
		0000000000009e48:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
    9e4c: f904e268     	str	x8, [x19, #0x9c0]
    9e50: 91280260     	add	x0, x19, #0xa00
    9e54: f904e669     	str	x9, [x19, #0x9c8]
    9e58: 52a00402     	mov	w2, #0x200000           // =2097152
    9e5c: aa1f03e3     	mov	x3, xzr
    9e60: f904ea69     	str	x9, [x19, #0x9d0]
    9e64: 90000009     	adrp	x9, 0x9000 <tp_ghost_check+0x488>
		0000000000009e64:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9ec4
    9e68: 91000129     	add	x9, x9, #0x0
		0000000000009e68:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9ec4
    9e6c: f904ee69     	str	x9, [x19, #0x9d8]
    9e70: 9126a269     	add	x9, x19, #0x9a8
    9e74: aa1f03e4     	mov	x4, xzr
    9e78: f904d268     	str	x8, [x19, #0x9a0]
    9e7c: f904d669     	str	x9, [x19, #0x9a8]
    9e80: f904da69     	str	x9, [x19, #0x9b0]
    9e84: 90000009     	adrp	x9, 0x9000 <tp_ghost_check+0x488>
		0000000000009e84:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9f1c
    9e88: 91000129     	add	x9, x9, #0x0
		0000000000009e88:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9f1c
    9e8c: f904f268     	str	x8, [x19, #0x9e0]
    9e90: 9127a268     	add	x8, x19, #0x9e8
    9e94: f904de69     	str	x9, [x19, #0x9b8]
    9e98: f904f668     	str	x8, [x19, #0x9e8]
    9e9c: f904fa68     	str	x8, [x19, #0x9f0]
    9ea0: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009ea0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x9f68
    9ea4: 91000108     	add	x8, x8, #0x0
		0000000000009ea4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x9f68
    9ea8: f904fe68     	str	x8, [x19, #0x9f8]
    9eac: 94000000     	bl	0x9eac <tpd_resume_work_init+0x9c>
		0000000000009eac:  R_AARCH64_CALL26	init_timer_key
    9eb0: f9400bf3     	ldr	x19, [sp, #0x10]
    9eb4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9eb8: d50323bf     	autiasp
    9ebc: d65f03c0     	ret
