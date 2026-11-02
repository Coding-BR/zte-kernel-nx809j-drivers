
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000053c <haptic_audio_time_show>:
     53c: d503233f     	paciasp
     540: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     544: a90157f6     	stp	x22, x21, [sp, #0x10]
     548: a9024ff4     	stp	x20, x19, [sp, #0x20]
     54c: 910003fd     	mov	x29, sp
     550: f9404c14     	ldr	x20, [x0, #0x98]
     554: aa0203f3     	mov	x19, x2
     558: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
     55c: 91000042     	add	x2, x2, #0x0
		000000000000055c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
     560: aa1303e0     	mov	x0, x19
     564: 52820001     	mov	w1, #0x1000             // =4096
     568: b9443283     	ldr	w3, [x20, #0x430]
     56c: 52820015     	mov	w21, #0x1000            // =4096
     570: 94000000     	bl	0x570 <haptic_audio_time_show+0x34>
		0000000000000570:  R_AARCH64_CALL26	snprintf
     574: 93407c16     	sxtw	x22, w0
     578: b9443683     	ldr	w3, [x20, #0x434]
     57c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000057c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa
     580: 91000042     	add	x2, x2, #0x0
		0000000000000580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa
     584: cb1602a1     	sub	x1, x21, x22
     588: 8b160260     	add	x0, x19, x22
     58c: 94000000     	bl	0x58c <haptic_audio_time_show+0x50>
		000000000000058c:  R_AARCH64_CALL26	snprintf
     590: 8b20c2c0     	add	x0, x22, w0, sxtw
     594: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     598: a94157f6     	ldp	x22, x21, [sp, #0x10]
     59c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     5a0: d50323bf     	autiasp
     5a4: d65f03c0     	ret
