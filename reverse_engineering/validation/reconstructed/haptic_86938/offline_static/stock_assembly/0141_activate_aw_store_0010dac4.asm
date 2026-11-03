
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000aca4 <activate_aw_store>:
    aca4: d503233f     	paciasp
    aca8: d100c3ff     	sub	sp, sp, #0x30
    acac: a9017bfd     	stp	x29, x30, [sp, #0x10]
    acb0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    acb4: 910043fd     	add	x29, sp, #0x10
    acb8: d5384109     	mrs	x9, SP_EL0
    acbc: aa0203e8     	mov	x8, x2
    acc0: 910013e2     	add	x2, sp, #0x4
    acc4: f9438929     	ldr	x9, [x9, #0x710]
    acc8: 2a1f03e1     	mov	w1, wzr
    accc: aa0303f3     	mov	x19, x3
    acd0: f90007e9     	str	x9, [sp, #0x8]
    acd4: f9404c14     	ldr	x20, [x0, #0x98]
    acd8: aa0803e0     	mov	x0, x8
    acdc: b90007ff     	str	wzr, [sp, #0x4]
    ace0: 94000000     	bl	0xace0 <activate_aw_store+0x3c>
		000000000000ace0:  R_AARCH64_CALL26	kstrtouint
    ace4: 36f801a0     	tbz	w0, #0x1f, 0xad18 <activate_aw_store+0x74>
    ace8: 93407c13     	sxtw	x19, w0
    acec: d5384108     	mrs	x8, SP_EL0
    acf0: f9438908     	ldr	x8, [x8, #0x710]
    acf4: f94007e9     	ldr	x9, [sp, #0x8]
    acf8: eb09011f     	cmp	x8, x9
    acfc: 54000501     	b.ne	0xad9c <activate_aw_store+0xf8>
    ad00: aa1303e0     	mov	x0, x19
    ad04: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    ad08: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ad0c: 9100c3ff     	add	sp, sp, #0x30
    ad10: d50323bf     	autiasp
    ad14: d65f03c0     	ret
    ad18: b94007e4     	ldr	w4, [sp, #0x4]
    ad1c: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000ad1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3
    ad20: 91000000     	add	x0, x0, #0x0
		000000000000ad20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3
    ad24: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000ad24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    ad28: 91000021     	add	x1, x1, #0x0
		000000000000ad28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    ad2c: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000ad2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x322
    ad30: 91000063     	add	x3, x3, #0x0
		000000000000ad30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x322
    ad34: 528125a2     	mov	w2, #0x92d              // =2349
    ad38: 94000000     	bl	0xad38 <activate_aw_store+0x94>
		000000000000ad38:  R_AARCH64_CALL26	_printk
    ad3c: 3855e288     	ldurb	w8, [x20, #-0xa2]
    ad40: 360001c8     	tbz	w8, #0x0, 0xad78 <activate_aw_store+0xd4>
    ad44: 91092280     	add	x0, x20, #0x248
    ad48: 94000000     	bl	0xad48 <activate_aw_store+0xa4>
		000000000000ad48:  R_AARCH64_CALL26	mutex_lock
    ad4c: 910a2280     	add	x0, x20, #0x288
    ad50: 94000000     	bl	0xad50 <activate_aw_store+0xac>
		000000000000ad50:  R_AARCH64_CALL26	hrtimer_cancel
    ad54: b94007e8     	ldr	w8, [sp, #0x4]
    ad58: 91092280     	add	x0, x20, #0x248
    ad5c: b8198288     	stur	w8, [x20, #-0x68]
    ad60: 94000000     	bl	0xad60 <activate_aw_store+0xbc>
		000000000000ad60:  R_AARCH64_CALL26	mutex_unlock
    ad64: f941d281     	ldr	x1, [x20, #0x3a0]
    ad68: 910e0282     	add	x2, x20, #0x380
    ad6c: 52800400     	mov	w0, #0x20               // =32
    ad70: 94000000     	bl	0xad70 <activate_aw_store+0xcc>
		000000000000ad70:  R_AARCH64_CALL26	queue_work_on
    ad74: 17ffffde     	b	0xacec <activate_aw_store+0x48>
    ad78: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000ad78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ab3
    ad7c: 91000000     	add	x0, x0, #0x0
		000000000000ad7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ab3
    ad80: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000ad80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    ad84: 91000021     	add	x1, x1, #0x0
		000000000000ad84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    ad88: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000ad88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x322
    ad8c: 91000063     	add	x3, x3, #0x0
		000000000000ad8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x322
    ad90: 528125e2     	mov	w2, #0x92f              // =2351
    ad94: 94000000     	bl	0xad94 <activate_aw_store+0xf0>
		000000000000ad94:  R_AARCH64_CALL26	_printk
    ad98: 17ffffd5     	b	0xacec <activate_aw_store+0x48>
    ad9c: 94000000     	bl	0xad9c <activate_aw_store+0xf8>
		000000000000ad9c:  R_AARCH64_CALL26	__stack_chk_fail
