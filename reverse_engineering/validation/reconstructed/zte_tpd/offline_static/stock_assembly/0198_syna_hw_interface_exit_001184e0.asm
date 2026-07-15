
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011c58 <syna_hw_interface_exit>:
   11c58: d503233f     	paciasp
   11c5c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   11c60: 910003fd     	mov	x29, sp
   11c64: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c64:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x778
   11c68: 91000000     	add	x0, x0, #0x0
		0000000000011c68:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x778
   11c6c: 94000000     	bl	0x11c6c <syna_hw_interface_exit+0x14>
		0000000000011c6c:  R_AARCH64_CALL26	driver_unregister
   11c70: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c70:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x368
   11c74: 91000000     	add	x0, x0, #0x0
		0000000000011c74:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x368
   11c78: 94000000     	bl	0x11c78 <syna_hw_interface_exit+0x20>
		0000000000011c78:  R_AARCH64_CALL26	platform_device_unregister
   11c7c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   11c80: d50323bf     	autiasp
   11c84: d65f03c0     	ret
