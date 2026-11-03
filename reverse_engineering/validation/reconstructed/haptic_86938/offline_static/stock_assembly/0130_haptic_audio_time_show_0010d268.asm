
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a448 <haptic_audio_time_show>:
    a448: d503233f     	paciasp
    a44c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a450: a90157f6     	stp	x22, x21, [sp, #0x10]
    a454: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a458: 910003fd     	mov	x29, sp
    a45c: f9404c14     	ldr	x20, [x0, #0x98]
    a460: aa0203f3     	mov	x19, x2
    a464: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000a464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x101a
    a468: 91000042     	add	x2, x2, #0x0
		000000000000a468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x101a
    a46c: aa1303e0     	mov	x0, x19
    a470: 52820001     	mov	w1, #0x1000             // =4096
    a474: b9443283     	ldr	w3, [x20, #0x430]
    a478: 52820015     	mov	w21, #0x1000            // =4096
    a47c: 94000000     	bl	0xa47c <haptic_audio_time_show+0x34>
		000000000000a47c:  R_AARCH64_CALL26	snprintf
    a480: 93407c16     	sxtw	x22, w0
    a484: b9443683     	ldr	w3, [x20, #0x434]
    a488: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000a488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf56
    a48c: 91000042     	add	x2, x2, #0x0
		000000000000a48c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf56
    a490: cb1602a1     	sub	x1, x21, x22
    a494: 8b160260     	add	x0, x19, x22
    a498: 94000000     	bl	0xa498 <haptic_audio_time_show+0x50>
		000000000000a498:  R_AARCH64_CALL26	snprintf
    a49c: 8b20c2c0     	add	x0, x22, w0, sxtw
    a4a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a4a4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    a4a8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a4ac: d50323bf     	autiasp
    a4b0: d65f03c0     	ret
