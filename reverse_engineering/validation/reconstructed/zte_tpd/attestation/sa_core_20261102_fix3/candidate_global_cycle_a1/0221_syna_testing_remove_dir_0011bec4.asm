
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026194 <syna_testing_remove_dir>:
   26194: d503233f     	paciasp
   26198: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2619c: f9000bf3     	str	x19, [sp, #0x10]
   261a0: 910003fd     	mov	x29, sp
   261a4: aa0003f3     	mov	x19, x0
   261a8: f941d400     	ldr	x0, [x0, #0x3a8]
   261ac: b40000c0     	cbz	x0, 0x261c4 <syna_testing_remove_dir+0x30>
   261b0: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		00000000000261b0:  R_AARCH64_ADR_PREL_PG_HI21	attr_testing_group
   261b4: 91000021     	add	x1, x1, #0x0
		00000000000261b4:  R_AARCH64_ADD_ABS_LO12_NC	attr_testing_group
   261b8: 94000000     	bl	0x261b8 <syna_testing_remove_dir+0x24>
		00000000000261b8:  R_AARCH64_CALL26	sysfs_remove_group
   261bc: f941d660     	ldr	x0, [x19, #0x3a8]
   261c0: 94000000     	bl	0x261c0 <syna_testing_remove_dir+0x2c>
		00000000000261c0:  R_AARCH64_CALL26	kobject_put
   261c4: f9400bf3     	ldr	x19, [sp, #0x10]
   261c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   261cc: d50323bf     	autiasp
   261d0: d65f03c0     	ret
