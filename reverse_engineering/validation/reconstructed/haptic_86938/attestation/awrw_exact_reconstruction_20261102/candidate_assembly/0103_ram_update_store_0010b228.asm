
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003174 <ram_update_store>:
    3174: d503233f     	paciasp
    3178: d100c3ff     	sub	sp, sp, #0x30
    317c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3180: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3184: 910043fd     	add	x29, sp, #0x10
    3188: d5384109     	mrs	x9, SP_EL0
    318c: aa0203e8     	mov	x8, x2
    3190: 910013e2     	add	x2, sp, #0x4
    3194: f9438929     	ldr	x9, [x9, #0x710]
    3198: 2a1f03e1     	mov	w1, wzr
    319c: aa0303f3     	mov	x19, x3
    31a0: f90007e9     	str	x9, [sp, #0x8]
    31a4: f9404c14     	ldr	x20, [x0, #0x98]
    31a8: aa0803e0     	mov	x0, x8
    31ac: b90007ff     	str	wzr, [sp, #0x4]
    31b0: 94000000     	bl	0x31b0 <ram_update_store+0x3c>
		00000000000031b0:  R_AARCH64_CALL26	kstrtouint
    31b4: 37f80200     	tbnz	w0, #0x1f, 0x31f4 <ram_update_store+0x80>
    31b8: b94007e8     	ldr	w8, [sp, #0x4]
    31bc: 340001e8     	cbz	w8, 0x31f8 <ram_update_store+0x84>
    31c0: 7815d29f     	sturh	wzr, [x20, #-0xa3]
    31c4: 90000008     	adrp	x8, 0x3000 <f0_show+0xb4>
		00000000000031c4:  R_AARCH64_ADR_PREL_PG_HI21	aw_ram_name
    31c8: f9413e83     	ldr	x3, [x20, #0x278]
    31cc: f9400102     	ldr	x2, [x8]
		00000000000031cc:  R_AARCH64_LDST64_ABS_LO12_NC	aw_ram_name
    31d0: d102a285     	sub	x5, x20, #0xa8
    31d4: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		00000000000031d4:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    31d8: 91000000     	add	x0, x0, #0x0
		00000000000031d8:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    31dc: 90000006     	adrp	x6, 0x3000 <f0_show+0xb4>
		00000000000031dc:  R_AARCH64_ADR_PREL_PG_HI21	ram_load
    31e0: 910000c6     	add	x6, x6, #0x0
		00000000000031e0:  R_AARCH64_ADD_ABS_LO12_NC	ram_load
    31e4: 52800021     	mov	w1, #0x1                // =1
    31e8: 52819804     	mov	w4, #0xcc0              // =3264
    31ec: 94000000     	bl	0x31ec <ram_update_store+0x78>
		00000000000031ec:  R_AARCH64_CALL26	request_firmware_nowait
    31f0: 14000002     	b	0x31f8 <ram_update_store+0x84>
    31f4: 93407c13     	sxtw	x19, w0
    31f8: d5384108     	mrs	x8, SP_EL0
    31fc: f9438908     	ldr	x8, [x8, #0x710]
    3200: f94007e9     	ldr	x9, [sp, #0x8]
    3204: eb09011f     	cmp	x8, x9
    3208: 540000e1     	b.ne	0x3224 <ram_update_store+0xb0>
    320c: aa1303e0     	mov	x0, x19
    3210: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3214: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3218: 9100c3ff     	add	sp, sp, #0x30
    321c: d50323bf     	autiasp
    3220: d65f03c0     	ret
    3224: 94000000     	bl	0x3224 <ram_update_store+0xb0>
		0000000000003224:  R_AARCH64_CALL26	__stack_chk_fail
