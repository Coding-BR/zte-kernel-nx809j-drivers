
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000958 <ramdisk_nvmem_store>:
     958: d503233f     	paciasp
     95c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     960: 910003fd     	mov	x29, sp
     964: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x277
     968: 91000000     	add	x0, x0, #0x0
		0000000000000968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x277
     96c: 94000000     	bl	0x96c <ramdisk_nvmem_store+0x14>
		000000000000096c:  R_AARCH64_CALL26	_printk
     970: 928002a0     	mov	x0, #-0x16              // =-22
     974: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     978: d50323bf     	autiasp
     97c: d65f03c0     	ret
