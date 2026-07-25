
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d664 <syna_testing_remove_dir>:
   1d664: d503233f     	paciasp
   1d668: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1d66c: f9000bf3     	str	x19, [sp, #0x10]
   1d670: 910003fd     	mov	x29, sp
   1d674: aa0003f3     	mov	x19, x0
   1d678: f941d400     	ldr	x0, [x0, #0x3a8]
   1d67c: b40000c0     	cbz	x0, 0x1d694 <syna_testing_remove_dir+0x30>
   1d680: 90000001     	adrp	x1, 0x1d000 <syna_testing_pt05_zte+0x250>
		000000000001d680:  R_AARCH64_ADR_PREL_PG_HI21	attr_testing_group
   1d684: 91000021     	add	x1, x1, #0x0
		000000000001d684:  R_AARCH64_ADD_ABS_LO12_NC	attr_testing_group
   1d688: 94000000     	bl	0x1d688 <syna_testing_remove_dir+0x24>
		000000000001d688:  R_AARCH64_CALL26	sysfs_remove_group
   1d68c: f941d660     	ldr	x0, [x19, #0x3a8]
   1d690: 94000000     	bl	0x1d690 <syna_testing_remove_dir+0x2c>
		000000000001d690:  R_AARCH64_CALL26	kobject_put
   1d694: f9400bf3     	ldr	x19, [sp, #0x10]
   1d698: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1d69c: d50323bf     	autiasp
   1d6a0: d65f03c0     	ret
