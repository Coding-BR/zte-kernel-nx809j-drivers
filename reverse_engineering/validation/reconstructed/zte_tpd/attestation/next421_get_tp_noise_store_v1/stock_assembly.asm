
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004854 <get_tp_noise_store>:
    4854: d503233f     	paciasp
    4858: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    485c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    4860: 910003fd     	mov	x29, sp
    4864: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		0000000000004864:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4868: aa0203f3     	mov	x19, x2
    486c: f9400114     	ldr	x20, [x8]
		000000000000486c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4870: 91318280     	add	x0, x20, #0xc60
    4874: 94000000     	bl	0x4874 <get_tp_noise_store+0x20>
		0000000000004874:  R_AARCH64_CALL26	mutex_lock
    4878: f9462e80     	ldr	x0, [x20, #0xc58]
    487c: b4000140     	cbz	x0, 0x48a4 <get_tp_noise_store+0x50>
    4880: f9400408     	ldr	x8, [x0, #0x8]
    4884: b40000c8     	cbz	x8, 0x489c <get_tp_noise_store+0x48>
    4888: aa0803e0     	mov	x0, x8
    488c: 94000000     	bl	0x488c <get_tp_noise_store+0x38>
		000000000000488c:  R_AARCH64_CALL26	vfree
    4890: f9462e88     	ldr	x8, [x20, #0xc58]
    4894: f900051f     	str	xzr, [x8, #0x8]
    4898: f9462e80     	ldr	x0, [x20, #0xc58]
    489c: 94000000     	bl	0x489c <get_tp_noise_store+0x48>
		000000000000489c:  R_AARCH64_CALL26	kfree
    48a0: f9062e9f     	str	xzr, [x20, #0xc58]
    48a4: 91318280     	add	x0, x20, #0xc60
    48a8: b9044a9f     	str	wzr, [x20, #0x448]
    48ac: 94000000     	bl	0x48ac <get_tp_noise_store+0x58>
		00000000000048ac:  R_AARCH64_CALL26	mutex_unlock
    48b0: aa1303e0     	mov	x0, x19
    48b4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    48b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    48bc: d50323bf     	autiasp
    48c0: d65f03c0     	ret
