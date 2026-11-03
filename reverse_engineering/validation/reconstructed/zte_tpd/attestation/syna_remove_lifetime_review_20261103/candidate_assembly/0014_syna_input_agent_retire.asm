
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b91c <syna_input_agent_retire>:
    b91c: d503233f     	paciasp
    b920: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    b924: f9000bf5     	str	x21, [sp, #0x10]
    b928: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b92c: 910003fd     	mov	x29, sp
    b930: b40001c0     	cbz	x0, 0xb968 <syna_input_agent_retire+0x4c>
    b934: aa0003f5     	mov	x21, x0
    b938: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b938:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306a8
    b93c: 91000000     	add	x0, x0, #0x0
		000000000000b93c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306a8
    b940: 94000000     	bl	0xb940 <syna_input_agent_retire+0x24>
		000000000000b940:  R_AARCH64_CALL26	mutex_lock
    b944: 90000008     	adrp	x8, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b944:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x2700
    b948: f9400113     	ldr	x19, [x8]
		000000000000b948:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x2700
    b94c: b4000093     	cbz	x19, 0xb95c <syna_input_agent_retire+0x40>
    b950: f9400269     	ldr	x9, [x19]
    b954: eb15013f     	cmp	x9, x21
    b958: 54000120     	b.eq	0xb97c <syna_input_agent_retire+0x60>
    b95c: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b95c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306a8
    b960: 91000000     	add	x0, x0, #0x0
		000000000000b960:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306a8
    b964: 94000000     	bl	0xb964 <syna_input_agent_retire+0x48>
		000000000000b964:  R_AARCH64_CALL26	mutex_unlock
    b968: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b96c: f9400bf5     	ldr	x21, [sp, #0x10]
    b970: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    b974: d50323bf     	autiasp
    b978: d65f03c0     	ret
    b97c: aa1303f4     	mov	x20, x19
    b980: 90000000     	adrp	x0, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000b980:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306a8
    b984: 91000000     	add	x0, x0, #0x0
		000000000000b984:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306a8
    b988: f900011f     	str	xzr, [x8]
		000000000000b988:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x2700
    b98c: f801069f     	str	xzr, [x20], #0x10
    b990: f90232bf     	str	xzr, [x21, #0x460]
    b994: 94000000     	bl	0xb994 <syna_input_agent_retire+0x78>
		000000000000b994:  R_AARCH64_CALL26	mutex_unlock
    b998: 1400000b     	b	0xb9c4 <syna_input_agent_retire+0xa8>
    b99c: 12800008     	mov	w8, #-0x1               // =-1
    b9a0: b8680288     	ldaddl	w8, w8, [x20]
    b9a4: 7100051f     	cmp	w8, #0x1
    b9a8: 540001e1     	b.ne	0xb9e4 <syna_input_agent_retire+0xc8>
    b9ac: d50339bf     	dmb	ishld
    b9b0: f9400660     	ldr	x0, [x19, #0x8]
    b9b4: 94000000     	bl	0xb9b4 <syna_input_agent_retire+0x98>
		000000000000b9b4:  R_AARCH64_CALL26	kfree
    b9b8: aa1303e0     	mov	x0, x19
    b9bc: 94000000     	bl	0xb9bc <syna_input_agent_retire+0xa0>
		000000000000b9bc:  R_AARCH64_CALL26	kfree
    b9c0: 17ffffea     	b	0xb968 <syna_input_agent_retire+0x4c>
    b9c4: 52800029     	mov	w9, #0x1                // =1
    b9c8: f9800291     	prfm	pstl1strm, [x20]
    b9cc: 885f7e88     	ldxr	w8, [x20]
    b9d0: 4b09010a     	sub	w10, w8, w9
    b9d4: 880bfe8a     	stlxr	w11, w10, [x20]
    b9d8: 35ffffab     	cbnz	w11, 0xb9cc <syna_input_agent_retire+0xb0>
    b9dc: 7100051f     	cmp	w8, #0x1
    b9e0: 54fffe60     	b.eq	0xb9ac <syna_input_agent_retire+0x90>
    b9e4: 7100011f     	cmp	w8, #0x0
    b9e8: 54fffc0c     	b.gt	0xb968 <syna_input_agent_retire+0x4c>
    b9ec: aa1403e0     	mov	x0, x20
    b9f0: 52800061     	mov	w1, #0x3                // =3
    b9f4: 94000000     	bl	0xb9f4 <syna_input_agent_retire+0xd8>
		000000000000b9f4:  R_AARCH64_CALL26	refcount_warn_saturate
    b9f8: 17ffffdc     	b	0xb968 <syna_input_agent_retire+0x4c>
