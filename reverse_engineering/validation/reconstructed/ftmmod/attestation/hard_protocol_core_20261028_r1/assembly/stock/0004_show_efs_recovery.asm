
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001f8 <show_efs_recovery>:
     1f8: d503233f     	paciasp
     1fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     200: f9000bf3     	str	x19, [sp, #0x10]
     204: 910003fd     	mov	x29, sp
     208: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122
     20c: 91000000     	add	x0, x0, #0x0
		000000000000020c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122
     210: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x163
     214: 91000021     	add	x1, x1, #0x0
		0000000000000214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x163
     218: aa0203f3     	mov	x19, x2
     21c: 94000000     	bl	0x21c <show_efs_recovery+0x24>
		000000000000021c:  R_AARCH64_CALL26	_printk
     220: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000220:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     224: f9400108     	ldr	x8, [x8]
		0000000000000224:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     228: b4000128     	cbz	x8, 0x24c <show_efs_recovery+0x54>
     22c: b9400503     	ldr	w3, [x8, #0x4]
     230: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d
     234: 91000042     	add	x2, x2, #0x0
		0000000000000234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d
     238: aa1303e0     	mov	x0, x19
     23c: 52820001     	mov	w1, #0x1000             // =4096
     240: 94000000     	bl	0x240 <show_efs_recovery+0x48>
		0000000000000240:  R_AARCH64_CALL26	snprintf
     244: 93407c00     	sxtw	x0, w0
     248: 14000002     	b	0x250 <show_efs_recovery+0x58>
     24c: 928001a0     	mov	x0, #-0xe               // =-14
     250: f9400bf3     	ldr	x19, [sp, #0x10]
     254: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     258: d50323bf     	autiasp
     25c: d65f03c0     	ret
