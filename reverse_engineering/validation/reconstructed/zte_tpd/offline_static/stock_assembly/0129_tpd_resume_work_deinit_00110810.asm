
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009f88 <tpd_resume_work_deinit>:
    9f88: d503233f     	paciasp
    9f8c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9f90: f9000bf3     	str	x19, [sp, #0x10]
    9f94: 910003fd     	mov	x29, sp
    9f98: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009f98:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9f9c: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009f9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb32
    9fa0: 91000000     	add	x0, x0, #0x0
		0000000000009fa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb32
    9fa4: f9400113     	ldr	x19, [x8]
		0000000000009fa4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9fa8: 90000001     	adrp	x1, 0x9000 <tp_ghost_check+0x488>
		0000000000009fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a43
    9fac: 91000021     	add	x1, x1, #0x0
		0000000000009fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a43
    9fb0: 94000000     	bl	0x9fb0 <tpd_resume_work_deinit+0x28>
		0000000000009fb0:  R_AARCH64_CALL26	_printk
    9fb4: 91270260     	add	x0, x19, #0x9c0
    9fb8: 94000000     	bl	0x9fb8 <tpd_resume_work_deinit+0x30>
		0000000000009fb8:  R_AARCH64_CALL26	cancel_work_sync
    9fbc: 91268260     	add	x0, x19, #0x9a0
    9fc0: 94000000     	bl	0x9fc0 <tpd_resume_work_deinit+0x38>
		0000000000009fc0:  R_AARCH64_CALL26	cancel_work_sync
    9fc4: 91278260     	add	x0, x19, #0x9e0
    9fc8: 94000000     	bl	0x9fc8 <tpd_resume_work_deinit+0x40>
		0000000000009fc8:  R_AARCH64_CALL26	cancel_delayed_work_sync
    9fcc: f9400bf3     	ldr	x19, [sp, #0x10]
    9fd0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9fd4: d50323bf     	autiasp
    9fd8: d65f03c0     	ret
