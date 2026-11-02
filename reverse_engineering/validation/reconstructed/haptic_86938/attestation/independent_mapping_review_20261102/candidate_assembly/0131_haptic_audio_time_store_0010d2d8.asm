
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002894 <haptic_audio_time_store>:
    2894: d503233f     	paciasp
    2898: d100c3ff     	sub	sp, sp, #0x30
    289c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    28a0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    28a4: 910043fd     	add	x29, sp, #0x10
    28a8: d5384109     	mrs	x9, SP_EL0
    28ac: aa0203e8     	mov	x8, x2
    28b0: aa0303f3     	mov	x19, x3
    28b4: f9438929     	ldr	x9, [x9, #0x710]
    28b8: 90000001     	adrp	x1, 0x2000 <ram_load+0x34>
		00000000000028b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4a
    28bc: 91000021     	add	x1, x1, #0x0
		00000000000028bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4a
    28c0: 910003e2     	mov	x2, sp
    28c4: f90007e9     	str	x9, [sp, #0x8]
    28c8: 910003e9     	mov	x9, sp
    28cc: f9404c14     	ldr	x20, [x0, #0x98]
    28d0: b27e0123     	orr	x3, x9, #0x4
    28d4: aa0803e0     	mov	x0, x8
    28d8: f90003ff     	str	xzr, [sp]
    28dc: 94000000     	bl	0x28dc <haptic_audio_time_store+0x48>
		00000000000028dc:  R_AARCH64_CALL26	sscanf
    28e0: 7100081f     	cmp	w0, #0x2
    28e4: 540000a1     	b.ne	0x28f8 <haptic_audio_time_store+0x64>
    28e8: b94003e8     	ldr	w8, [sp]
    28ec: b9043288     	str	w8, [x20, #0x430]
    28f0: b94007e8     	ldr	w8, [sp, #0x4]
    28f4: b9043688     	str	w8, [x20, #0x434]
    28f8: d5384108     	mrs	x8, SP_EL0
    28fc: f9438908     	ldr	x8, [x8, #0x710]
    2900: f94007e9     	ldr	x9, [sp, #0x8]
    2904: eb09011f     	cmp	x8, x9
    2908: 540000e1     	b.ne	0x2924 <haptic_audio_time_store+0x90>
    290c: aa1303e0     	mov	x0, x19
    2910: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2914: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2918: 9100c3ff     	add	sp, sp, #0x30
    291c: d50323bf     	autiasp
    2920: d65f03c0     	ret
    2924: 94000000     	bl	0x2924 <haptic_audio_time_store+0x90>
		0000000000002924:  R_AARCH64_CALL26	__stack_chk_fail
