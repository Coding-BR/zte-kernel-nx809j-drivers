
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000228c <haptic_audio_time_store>:
    228c: d503233f     	paciasp
    2290: d100c3ff     	sub	sp, sp, #0x30
    2294: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2298: a9024ff4     	stp	x20, x19, [sp, #0x20]
    229c: 910043fd     	add	x29, sp, #0x10
    22a0: d5384109     	mrs	x9, SP_EL0
    22a4: aa0203e8     	mov	x8, x2
    22a8: aa0303f3     	mov	x19, x3
    22ac: f9438929     	ldr	x9, [x9, #0x710]
    22b0: 90000001     	adrp	x1, 0x2000 <cont_save_store+0x78>
		00000000000022b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9
    22b4: 91000021     	add	x1, x1, #0x0
		00000000000022b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9
    22b8: 910003e2     	mov	x2, sp
    22bc: f90007e9     	str	x9, [sp, #0x8]
    22c0: 910003e9     	mov	x9, sp
    22c4: f9404c14     	ldr	x20, [x0, #0x98]
    22c8: b27e0123     	orr	x3, x9, #0x4
    22cc: aa0803e0     	mov	x0, x8
    22d0: f90003ff     	str	xzr, [sp]
    22d4: 94000000     	bl	0x22d4 <haptic_audio_time_store+0x48>
		00000000000022d4:  R_AARCH64_CALL26	sscanf
    22d8: 7100081f     	cmp	w0, #0x2
    22dc: 540000a1     	b.ne	0x22f0 <haptic_audio_time_store+0x64>
    22e0: b94003e8     	ldr	w8, [sp]
    22e4: b9043288     	str	w8, [x20, #0x430]
    22e8: b94007e8     	ldr	w8, [sp, #0x4]
    22ec: b9043688     	str	w8, [x20, #0x434]
    22f0: d5384108     	mrs	x8, SP_EL0
    22f4: f9438908     	ldr	x8, [x8, #0x710]
    22f8: f94007e9     	ldr	x9, [sp, #0x8]
    22fc: eb09011f     	cmp	x8, x9
    2300: 540000e1     	b.ne	0x231c <haptic_audio_time_store+0x90>
    2304: aa1303e0     	mov	x0, x19
    2308: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    230c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2310: 9100c3ff     	add	sp, sp, #0x30
    2314: d50323bf     	autiasp
    2318: d65f03c0     	ret
    231c: 94000000     	bl	0x231c <haptic_audio_time_store+0x90>
		000000000000231c:  R_AARCH64_CALL26	__stack_chk_fail
