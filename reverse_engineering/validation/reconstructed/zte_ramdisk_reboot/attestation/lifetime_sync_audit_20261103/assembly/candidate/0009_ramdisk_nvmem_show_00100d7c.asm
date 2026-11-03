
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c5c <ramdisk_nvmem_show>:
     c5c: d503233f     	paciasp
     c60: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     c64: 910003fd     	mov	x29, sp
     c68: aa0203e0     	mov	x0, x2
     c6c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf
     c70: 91000042     	add	x2, x2, #0x0
		0000000000000c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf
     c74: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	extract_buffer
     c78: 91000063     	add	x3, x3, #0x0
		0000000000000c78:  R_AARCH64_ADD_ABS_LO12_NC	extract_buffer
     c7c: 52820001     	mov	w1, #0x1000             // =4096
     c80: 94000000     	bl	0xc80 <ramdisk_nvmem_show+0x24>
		0000000000000c80:  R_AARCH64_CALL26	scnprintf
     c84: 93407c00     	sxtw	x0, w0
     c88: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     c8c: d50323bf     	autiasp
     c90: d65f03c0     	ret
