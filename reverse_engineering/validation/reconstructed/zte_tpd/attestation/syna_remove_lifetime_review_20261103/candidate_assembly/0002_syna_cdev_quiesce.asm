
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009a4c <syna_cdev_quiesce>:
    9a4c: d503233f     	paciasp
    9a50: d10143ff     	sub	sp, sp, #0x50
    9a54: a9037bfd     	stp	x29, x30, [sp, #0x30]
    9a58: a9044ff4     	stp	x20, x19, [sp, #0x40]
    9a5c: 9100c3fd     	add	x29, sp, #0x30
    9a60: d5384108     	mrs	x8, SP_EL0
    9a64: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a64:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_mutex
    9a68: 91000000     	add	x0, x0, #0x0
		0000000000009a68:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_lifecycle_mutex
    9a6c: f9438908     	ldr	x8, [x8, #0x710]
    9a70: f81f83a8     	stur	x8, [x29, #-0x8]
    9a74: 94000000     	bl	0x9a74 <syna_cdev_quiesce+0x28>
		0000000000009a74:  R_AARCH64_CALL26	mutex_lock
    9a78: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a78:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_online
    9a7c: 39400109     	ldrb	w9, [x8]
		0000000000009a7c:  R_AARCH64_LDST8_ABS_LO12_NC	syna_cdev_lifecycle_online
    9a80: 7100053f     	cmp	w9, #0x1
    9a84: 54000121     	b.ne	0x9aa8 <syna_cdev_quiesce+0x5c>
    9a88: 3900011f     	strb	wzr, [x8]
		0000000000009a88:  R_AARCH64_LDST8_ABS_LO12_NC	syna_cdev_lifecycle_online
    9a8c: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009a8c:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_generation
    9a90: f9400109     	ldr	x9, [x8]
		0000000000009a90:  R_AARCH64_LDST64_ABS_LO12_NC	syna_cdev_lifecycle_generation
    9a94: 9100052a     	add	x10, x9, #0x1
    9a98: f100055f     	cmp	x10, #0x1
    9a9c: 5280002a     	mov	w10, #0x1               // =1
    9aa0: 9a899549     	csinc	x9, x10, x9, ls
    9aa4: f9000109     	str	x9, [x8]
		0000000000009aa4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_cdev_lifecycle_generation
    9aa8: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009aa8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26f0
    9aac: 90000009     	adrp	x9, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009aac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26e0
    9ab0: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009ab0:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_lifecycle_mutex
    9ab4: 91000000     	add	x0, x0, #0x0
		0000000000009ab4:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_lifecycle_mutex
    9ab8: 39400114     	ldrb	w20, [x8]
		0000000000009ab8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x26f0
    9abc: f9400133     	ldr	x19, [x9]
		0000000000009abc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x26e0
    9ac0: 94000000     	bl	0x9ac0 <syna_cdev_quiesce+0x74>
		0000000000009ac0:  R_AARCH64_CALL26	mutex_unlock
    9ac4: 7100069f     	cmp	w20, #0x1
    9ac8: 54000181     	b.ne	0x9af8 <syna_cdev_quiesce+0xac>
    9acc: b4000173     	cbz	x19, 0x9af8 <syna_cdev_quiesce+0xac>
    9ad0: 91142260     	add	x0, x19, #0x508
    9ad4: 52800061     	mov	w1, #0x3                // =3
    9ad8: 2a1f03e2     	mov	w2, wzr
    9adc: aa1f03e3     	mov	x3, xzr
    9ae0: 94000000     	bl	0x9ae0 <syna_cdev_quiesce+0x94>
		0000000000009ae0:  R_AARCH64_CALL26	__wake_up
    9ae4: 91112260     	add	x0, x19, #0x448
    9ae8: 52800061     	mov	w1, #0x3                // =3
    9aec: 2a1f03e2     	mov	w2, wzr
    9af0: aa1f03e3     	mov	x3, xzr
    9af4: 94000000     	bl	0x9af4 <syna_cdev_quiesce+0xa8>
		0000000000009af4:  R_AARCH64_CALL26	__wake_up
    9af8: 94000000     	bl	0x9af8 <syna_cdev_quiesce+0xac>
		0000000000009af8:  R_AARCH64_CALL26	syna_input_agent_wake_pollers
    9afc: 90000014     	adrp	x20, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009afc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26d8
    9b00: b9400288     	ldr	w8, [x20]
		0000000000009b00:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x26d8
    9b04: 34000368     	cbz	w8, 0x9b70 <syna_cdev_quiesce+0x124>
    9b08: 910003e0     	mov	x0, sp
    9b0c: 2a1f03e1     	mov	w1, wzr
    9b10: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    9b14: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    9b18: f90003ff     	str	xzr, [sp]
    9b1c: 94000000     	bl	0x9b1c <syna_cdev_quiesce+0xd0>
		0000000000009b1c:  R_AARCH64_CALL26	init_wait_entry
    9b20: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009b20:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30660
    9b24: 91000000     	add	x0, x0, #0x0
		0000000000009b24:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30660
    9b28: 910003e1     	mov	x1, sp
    9b2c: 52800042     	mov	w2, #0x2                // =2
    9b30: 94000000     	bl	0x9b30 <syna_cdev_quiesce+0xe4>
		0000000000009b30:  R_AARCH64_CALL26	prepare_to_wait_event
    9b34: b9400288     	ldr	w8, [x20]
		0000000000009b34:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x26d8
    9b38: 34000148     	cbz	w8, 0x9b60 <syna_cdev_quiesce+0x114>
    9b3c: 90000013     	adrp	x19, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009b3c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30660
    9b40: 91000273     	add	x19, x19, #0x0
		0000000000009b40:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30660
    9b44: 94000000     	bl	0x9b44 <syna_cdev_quiesce+0xf8>
		0000000000009b44:  R_AARCH64_CALL26	schedule
    9b48: 910003e1     	mov	x1, sp
    9b4c: aa1303e0     	mov	x0, x19
    9b50: 52800042     	mov	w2, #0x2                // =2
    9b54: 94000000     	bl	0x9b54 <syna_cdev_quiesce+0x108>
		0000000000009b54:  R_AARCH64_CALL26	prepare_to_wait_event
    9b58: b9400288     	ldr	w8, [x20]
		0000000000009b58:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x26d8
    9b5c: 35ffff48     	cbnz	w8, 0x9b44 <syna_cdev_quiesce+0xf8>
    9b60: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009b60:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30660
    9b64: 91000000     	add	x0, x0, #0x0
		0000000000009b64:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30660
    9b68: 910003e1     	mov	x1, sp
    9b6c: 94000000     	bl	0x9b6c <syna_cdev_quiesce+0x120>
		0000000000009b6c:  R_AARCH64_CALL26	finish_wait
    9b70: d5384108     	mrs	x8, SP_EL0
    9b74: f9438908     	ldr	x8, [x8, #0x710]
    9b78: f85f83a9     	ldur	x9, [x29, #-0x8]
    9b7c: eb09011f     	cmp	x8, x9
    9b80: 540000c1     	b.ne	0x9b98 <syna_cdev_quiesce+0x14c>
    9b84: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    9b88: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    9b8c: 910143ff     	add	sp, sp, #0x50
    9b90: d50323bf     	autiasp
    9b94: d65f03c0     	ret
    9b98: 94000000     	bl	0x9b98 <syna_cdev_quiesce+0x14c>
		0000000000009b98:  R_AARCH64_CALL26	__stack_chk_fail
