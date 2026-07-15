
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011b90 <syna_hw_interface_init>:
   11b90: d503233f     	paciasp
   11b94: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   11b98: a9014ff4     	stp	x20, x19, [sp, #0x10]
   11b9c: 910003fd     	mov	x29, sp
   11ba0: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33a6
   11ba4: 91000000     	add	x0, x0, #0x0
		0000000000011ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33a6
   11ba8: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa75f
   11bac: 91000021     	add	x1, x1, #0x0
		0000000000011bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa75f
   11bb0: 94000000     	bl	0x11bb0 <syna_hw_interface_init+0x20>
		0000000000011bb0:  R_AARCH64_CALL26	_printk
   11bb4: 90000014     	adrp	x20, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011bb4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x368
   11bb8: 91000294     	add	x20, x20, #0x0
		0000000000011bb8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x368
   11bbc: aa1403e0     	mov	x0, x20
   11bc0: 94000000     	bl	0x11bc0 <syna_hw_interface_init+0x30>
		0000000000011bc0:  R_AARCH64_CALL26	platform_device_register
   11bc4: 36f800a0     	tbz	w0, #0x1f, 0x11bd8 <syna_hw_interface_init+0x48>
   11bc8: 2a0003f3     	mov	w19, w0
   11bcc: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20dc
   11bd0: 91000000     	add	x0, x0, #0x0
		0000000000011bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20dc
   11bd4: 1400000c     	b	0x11c04 <syna_hw_interface_init+0x74>
   11bd8: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011bd8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x890
   11bdc: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011bdc:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
   11be0: 91000000     	add	x0, x0, #0x0
		0000000000011be0:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
   11be4: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011be4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x758
   11be8: 91000021     	add	x1, x1, #0x0
		0000000000011be8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x758
   11bec: f9000114     	str	x20, [x8]
		0000000000011bec:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x890
   11bf0: 94000000     	bl	0x11bf0 <syna_hw_interface_init+0x60>
		0000000000011bf0:  R_AARCH64_CALL26	__spi_register_driver
   11bf4: 2a0003f3     	mov	w19, w0
   11bf8: 36f800e0     	tbz	w0, #0x1f, 0x11c14 <syna_hw_interface_init+0x84>
   11bfc: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x135b
   11c00: 91000000     	add	x0, x0, #0x0
		0000000000011c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x135b
   11c04: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa75f
   11c08: 91000021     	add	x1, x1, #0x0
		0000000000011c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa75f
   11c0c: 94000000     	bl	0x11c0c <syna_hw_interface_init+0x7c>
		0000000000011c0c:  R_AARCH64_CALL26	_printk
   11c10: 1400000c     	b	0x11c40 <syna_hw_interface_init+0xb0>
   11c14: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb450
   11c18: 91000000     	add	x0, x0, #0x0
		0000000000011c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb450
   11c1c: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa75f
   11c20: 91000021     	add	x1, x1, #0x0
		0000000000011c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa75f
   11c24: 94000000     	bl	0x11c24 <syna_hw_interface_init+0x94>
		0000000000011c24:  R_AARCH64_CALL26	_printk
   11c28: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c28:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x898
   11c2c: 90000009     	adrp	x9, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c2c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a0
   11c30: b900011f     	str	wzr, [x8]
		0000000000011c30:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x898
   11c34: 90000008     	adrp	x8, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011c34:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8a8
   11c38: f900013f     	str	xzr, [x9]
		0000000000011c38:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a0
   11c3c: f900011f     	str	xzr, [x8]
		0000000000011c3c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8a8
   11c40: 2a1303e0     	mov	w0, w19
   11c44: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   11c48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   11c4c: d50323bf     	autiasp
   11c50: d65f03c0     	ret
