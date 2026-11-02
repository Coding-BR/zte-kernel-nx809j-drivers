
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011c8c <syna_spi_release>:
   11c8c: d503233f     	paciasp
   11c90: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   11c94: 910003fd     	mov	x29, sp
   11c98: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c46
   11c9c: 91000000     	add	x0, x0, #0x0
		0000000000011c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c46
   11ca0: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1381
   11ca4: 91000021     	add	x1, x1, #0x0
		0000000000011ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1381
   11ca8: 94000000     	bl	0x11ca8 <syna_spi_release+0x1c>
		0000000000011ca8:  R_AARCH64_CALL26	_printk
   11cac: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   11cb0: d50323bf     	autiasp
   11cb4: d65f03c0     	ret
