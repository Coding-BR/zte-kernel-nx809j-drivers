
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001a4 <fan_enable_show>:
     1a4: d503233f     	paciasp
     1a8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     1ac: f9000bf5     	str	x21, [sp, #0x10]
     1b0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     1b4: 910003fd     	mov	x29, sp
     1b8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	chip
     1bc: aa0203f3     	mov	x19, x2
     1c0: f9400115     	ldr	x21, [x8]
		00000000000001c0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     1c4: 910062a0     	add	x0, x21, #0x18
     1c8: 94000000     	bl	0x1c8 <fan_enable_show+0x24>
		00000000000001c8:  R_AARCH64_CALL26	mutex_lock
     1cc: f94006a8     	ldr	x8, [x21, #0x8]
     1d0: 910062a0     	add	x0, x21, #0x18
     1d4: 39403114     	ldrb	w20, [x8, #0xc]
     1d8: 94000000     	bl	0x1d8 <fan_enable_show+0x34>
		00000000000001d8:  R_AARCH64_CALL26	mutex_unlock
     1dc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b7
     1e0: 91000000     	add	x0, x0, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b7
     1e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     1e8: 91000021     	add	x1, x1, #0x0
		00000000000001e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     1ec: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x89d
     1f0: 91000042     	add	x2, x2, #0x0
		00000000000001f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x89d
     1f4: 52802603     	mov	w3, #0x130              // =304
     1f8: 2a1403e4     	mov	w4, w20
     1fc: 94000000     	bl	0x1fc <fan_enable_show+0x58>
		00000000000001fc:  R_AARCH64_CALL26	_printk
     200: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     204: 91000021     	add	x1, x1, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     208: aa1303e0     	mov	x0, x19
     20c: 2a1403e2     	mov	w2, w20
     210: 94000000     	bl	0x210 <fan_enable_show+0x6c>
		0000000000000210:  R_AARCH64_CALL26	sprintf
     214: 93407c00     	sxtw	x0, w0
     218: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     21c: f9400bf5     	ldr	x21, [sp, #0x10]
     220: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     224: d50323bf     	autiasp
     228: d65f03c0     	ret
