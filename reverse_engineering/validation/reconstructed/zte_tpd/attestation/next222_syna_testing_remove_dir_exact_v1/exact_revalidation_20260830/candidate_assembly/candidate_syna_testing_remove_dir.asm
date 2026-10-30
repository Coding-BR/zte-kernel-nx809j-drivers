
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026138 <syna_testing_remove_dir>:
   26138: d503233f     	paciasp
   2613c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   26140: f9000bf3     	str	x19, [sp, #0x10]
   26144: 910003fd     	mov	x29, sp
   26148: aa0003f3     	mov	x19, x0
   2614c: f941d400     	ldr	x0, [x0, #0x3a8]
   26150: b40000c0     	cbz	x0, 0x26168 <syna_testing_remove_dir+0x30>
   26154: 90000001     	adrp	x1, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026154:  R_AARCH64_ADR_PREL_PG_HI21	attr_testing_group
   26158: 91000021     	add	x1, x1, #0x0
		0000000000026158:  R_AARCH64_ADD_ABS_LO12_NC	attr_testing_group
   2615c: 94000000     	bl	0x2615c <syna_testing_remove_dir+0x24>
		000000000002615c:  R_AARCH64_CALL26	sysfs_remove_group
   26160: f941d660     	ldr	x0, [x19, #0x3a8]
   26164: 94000000     	bl	0x26164 <syna_testing_remove_dir+0x2c>
		0000000000026164:  R_AARCH64_CALL26	kobject_put
   26168: f9400bf3     	ldr	x19, [sp, #0x10]
   2616c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   26170: d50323bf     	autiasp
   26174: d65f03c0     	ret
