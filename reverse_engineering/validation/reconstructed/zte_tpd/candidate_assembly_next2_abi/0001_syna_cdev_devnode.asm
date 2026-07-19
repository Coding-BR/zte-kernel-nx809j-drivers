
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000047b4 <syna_cdev_devnode>:
    47b4: b4000201     	cbz	x1, 0x47f4 <syna_cdev_devnode+0x40>
    47b8: 5280c008     	mov	w8, #0x600              // =1536
    47bc: 79000028     	strh	w8, [x1]
    47c0: f9403802     	ldr	x2, [x0, #0x70]
    47c4: b5000042     	cbnz	x2, 0x47cc <syna_cdev_devnode+0x18>
    47c8: f9400002     	ldr	x2, [x0]
    47cc: d503233f     	paciasp
    47d0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    47d4: 910003fd     	mov	x29, sp
    47d8: 90000001     	adrp	x1, 0x4000 <sub_309E4+0xc>
		00000000000047d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2101
    47dc: 91000021     	add	x1, x1, #0x0
		00000000000047dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2101
    47e0: 52819800     	mov	w0, #0xcc0              // =3264
    47e4: 94000000     	bl	0x47e4 <syna_cdev_devnode+0x30>
		00000000000047e4:  R_AARCH64_CALL26	kasprintf
    47e8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    47ec: d50323bf     	autiasp
    47f0: d65f03c0     	ret
    47f4: aa1f03e0     	mov	x0, xzr
    47f8: d65f03c0     	ret
