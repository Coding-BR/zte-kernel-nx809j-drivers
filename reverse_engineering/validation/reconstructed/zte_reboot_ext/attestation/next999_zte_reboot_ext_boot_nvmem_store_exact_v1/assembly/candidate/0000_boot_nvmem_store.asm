
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000035c <boot_nvmem_store>:
     35c: d503233f     	paciasp
     360: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     364: 910003fd     	mov	x29, sp
     368: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x626
     36c: 91000000     	add	x0, x0, #0x0
		000000000000036c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x626
     370: 94000000     	bl	0x370 <boot_nvmem_store+0x14>
		0000000000000370:  R_AARCH64_CALL26	_printk
     374: 928002a0     	mov	x0, #-0x16              // =-22
     378: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     37c: d50323bf     	autiasp
     380: d65f03c0     	ret
