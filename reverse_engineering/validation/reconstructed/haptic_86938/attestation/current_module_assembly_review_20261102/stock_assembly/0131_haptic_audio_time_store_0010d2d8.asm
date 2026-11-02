
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a4b8 <haptic_audio_time_store>:
    a4b8: d503233f     	paciasp
    a4bc: d100c3ff     	sub	sp, sp, #0x30
    a4c0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a4c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a4c8: 910043fd     	add	x29, sp, #0x10
    a4cc: d5384109     	mrs	x9, SP_EL0
    a4d0: aa0203e8     	mov	x8, x2
    a4d4: aa0303f3     	mov	x19, x3
    a4d8: f9438929     	ldr	x9, [x9, #0x710]
    a4dc: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a4dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d75
    a4e0: 91000021     	add	x1, x1, #0x0
		000000000000a4e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d75
    a4e4: 910003e2     	mov	x2, sp
    a4e8: f90007e9     	str	x9, [sp, #0x8]
    a4ec: 910003e9     	mov	x9, sp
    a4f0: f9404c14     	ldr	x20, [x0, #0x98]
    a4f4: b27e0123     	orr	x3, x9, #0x4
    a4f8: aa0803e0     	mov	x0, x8
    a4fc: f90003ff     	str	xzr, [sp]
    a500: 94000000     	bl	0xa500 <haptic_audio_time_store+0x48>
		000000000000a500:  R_AARCH64_CALL26	sscanf
    a504: 7100081f     	cmp	w0, #0x2
    a508: 540000a1     	b.ne	0xa51c <haptic_audio_time_store+0x64>
    a50c: b94003e8     	ldr	w8, [sp]
    a510: b9043288     	str	w8, [x20, #0x430]
    a514: b94007e8     	ldr	w8, [sp, #0x4]
    a518: b9043688     	str	w8, [x20, #0x434]
    a51c: d5384108     	mrs	x8, SP_EL0
    a520: f9438908     	ldr	x8, [x8, #0x710]
    a524: f94007e9     	ldr	x9, [sp, #0x8]
    a528: eb09011f     	cmp	x8, x9
    a52c: 540000e1     	b.ne	0xa548 <haptic_audio_time_store+0x90>
    a530: aa1303e0     	mov	x0, x19
    a534: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a538: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a53c: 9100c3ff     	add	sp, sp, #0x30
    a540: d50323bf     	autiasp
    a544: d65f03c0     	ret
    a548: 94000000     	bl	0xa548 <haptic_audio_time_store+0x90>
		000000000000a548:  R_AARCH64_CALL26	__stack_chk_fail
