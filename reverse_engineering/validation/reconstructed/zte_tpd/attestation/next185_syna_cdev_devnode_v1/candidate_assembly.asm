
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004550 <syna_cdev_devnode>:
    4550: b4000201     	cbz	x1, 0x4590 <syna_cdev_devnode+0x40>
    4554: 5280c008     	mov	w8, #0x600              // =1536
    4558: 79000028     	strh	w8, [x1]
    455c: f9403802     	ldr	x2, [x0, #0x70]
    4560: b5000042     	cbnz	x2, 0x4568 <syna_cdev_devnode+0x18>
    4564: f9400002     	ldr	x2, [x0]
    4568: d503233f     	paciasp
    456c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4570: 910003fd     	mov	x29, sp
    4574: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		0000000000004574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dec
    4578: 91000021     	add	x1, x1, #0x0
		0000000000004578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dec
    457c: 52819800     	mov	w0, #0xcc0              // =3264
    4580: 94000000     	bl	0x4580 <syna_cdev_devnode+0x30>
		0000000000004580:  R_AARCH64_CALL26	kasprintf
    4584: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    4588: d50323bf     	autiasp
    458c: d65f03c0     	ret
    4590: aa1f03e0     	mov	x0, xzr
    4594: d65f03c0     	ret
