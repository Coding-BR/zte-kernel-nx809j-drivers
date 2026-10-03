
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000dcc <boot_nvmem_store>:
     dcc: d503233f     	paciasp
     dd0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     dd4: 910003fd     	mov	x29, sp
     dd8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f1
     ddc: 91000000     	add	x0, x0, #0x0
		0000000000000ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f1
     de0: 94000000     	bl	0xde0 <boot_nvmem_store+0x14>
		0000000000000de0:  R_AARCH64_CALL26	_printk
     de4: 928002a0     	mov	x0, #-0x16              // =-22
     de8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     dec: d50323bf     	autiasp
     df0: d65f03c0     	ret
