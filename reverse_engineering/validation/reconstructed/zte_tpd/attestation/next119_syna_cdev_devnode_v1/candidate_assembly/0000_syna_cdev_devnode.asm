
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000045fc <syna_cdev_devnode>:
    45fc: b4000201     	cbz	x1, 0x463c <syna_cdev_devnode+0x40>
    4600: 5280c008     	mov	w8, #0x600              // =1536
    4604: 79000028     	strh	w8, [x1]
    4608: f9403802     	ldr	x2, [x0, #0x70]
    460c: b5000042     	cbnz	x2, 0x4614 <syna_cdev_devnode+0x18>
    4610: f9400002     	ldr	x2, [x0]
    4614: d503233f     	paciasp
    4618: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    461c: 910003fd     	mov	x29, sp
    4620: 90000001     	adrp	x1, 0x4000 <sub_30D90+0x10>
		0000000000004620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24f2
    4624: 91000021     	add	x1, x1, #0x0
		0000000000004624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24f2
    4628: 52819800     	mov	w0, #0xcc0              // =3264
    462c: 94000000     	bl	0x462c <syna_cdev_devnode+0x30>
		000000000000462c:  R_AARCH64_CALL26	kasprintf
    4630: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4634: d50323bf     	autiasp
    4638: d65f03c0     	ret
    463c: aa1f03e0     	mov	x0, xzr
    4640: d65f03c0     	ret
