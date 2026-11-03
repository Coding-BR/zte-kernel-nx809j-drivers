
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c98 <ramdisk_nvmem_store>:
     c98: d503233f     	paciasp
     c9c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     ca0: 910003fd     	mov	x29, sp
     ca4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x277
     ca8: 91000000     	add	x0, x0, #0x0
		0000000000000ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x277
     cac: 94000000     	bl	0xcac <ramdisk_nvmem_store+0x14>
		0000000000000cac:  R_AARCH64_CALL26	_printk
     cb0: 928002a0     	mov	x0, #-0x16              // =-22
     cb4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     cb8: d50323bf     	autiasp
     cbc: d65f03c0     	ret
