
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000944 <ramdisk_nvmem_store>:
     944: d503233f     	paciasp
     948: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     94c: 910003fd     	mov	x29, sp
     950: 90000000     	adrp	x0, 0x0 <extract_ocp_info>
		0000000000000950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x277
     954: 91000000     	add	x0, x0, #0x0
		0000000000000954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x277
     958: 94000000     	bl	0x958 <ramdisk_nvmem_store+0x14>
		0000000000000958:  R_AARCH64_CALL26	_printk
     95c: 928002a0     	mov	x0, #-0x16              // =-22
     960: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     964: d50323bf     	autiasp
     968: d65f03c0     	ret
