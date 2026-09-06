
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000908 <ramdisk_nvmem_show>:
     908: d503233f     	paciasp
     90c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     910: 910003fd     	mov	x29, sp
     914: aa0203e0     	mov	x0, x2
     918: 90000002     	adrp	x2, 0x0 <extract_ocp_info>
		0000000000000918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf
     91c: 91000042     	add	x2, x2, #0x0
		000000000000091c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf
     920: 90000003     	adrp	x3, 0x0 <extract_ocp_info>
		0000000000000920:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
     924: 91000063     	add	x3, x3, #0x0
		0000000000000924:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x4
     928: 52820001     	mov	w1, #0x1000             // =4096
     92c: 94000000     	bl	0x92c <ramdisk_nvmem_show+0x24>
		000000000000092c:  R_AARCH64_CALL26	scnprintf
     930: 93407c00     	sxtw	x0, w0
     934: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     938: d50323bf     	autiasp
     93c: d65f03c0     	ret
