
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002fc <netlink_exit>:
     2fc: d503233f     	paciasp
     300: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     304: 910003fd     	mov	x29, sp
     308: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     30c: 91000000     	add	x0, x0, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     310: 94000000     	bl	0x310 <netlink_exit+0x14>
		0000000000000310:  R_AARCH64_CALL26	mutex_lock
     314: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     318: f9400100     	ldr	x0, [x8]
		0000000000000318:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     31c: f900011f     	str	xzr, [x8]
		000000000000031c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     320: b4000040     	cbz	x0, 0x328 <netlink_exit+0x2c>
     324: 94000000     	bl	0x324 <netlink_exit+0x28>
		0000000000000324:  R_AARCH64_CALL26	netlink_kernel_release
     328: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000328:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     32c: 91000000     	add	x0, x0, #0x0
		000000000000032c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     330: 94000000     	bl	0x330 <netlink_exit+0x34>
		0000000000000330:  R_AARCH64_CALL26	mutex_unlock
     334: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x107a
     338: 91000000     	add	x0, x0, #0x0
		0000000000000338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x107a
     33c: 94000000     	bl	0x33c <netlink_exit+0x40>
		000000000000033c:  R_AARCH64_CALL26	_printk
     340: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     344: d50323bf     	autiasp
     348: d65f03c0     	ret
