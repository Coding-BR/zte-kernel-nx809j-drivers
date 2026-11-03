
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000091c <ramdisk_nvmem_show>:
     91c: d503233f     	paciasp
     920: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     924: 910003fd     	mov	x29, sp
     928: aa0203e0     	mov	x0, x2
     92c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000092c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a
     930: 91000042     	add	x2, x2, #0x0
		0000000000000930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a
     934: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000934:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     938: 91000063     	add	x3, x3, #0x0
		0000000000000938:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     93c: 52820001     	mov	w1, #0x1000             // =4096
     940: 94000000     	bl	0x940 <ramdisk_nvmem_show+0x24>
		0000000000000940:  R_AARCH64_CALL26	scnprintf
     944: 93407c00     	sxtw	x0, w0
     948: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     94c: d50323bf     	autiasp
     950: d65f03c0     	ret
