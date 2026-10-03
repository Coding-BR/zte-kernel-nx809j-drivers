
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e530 <syna_cdev_devnode>:
    e530: b4000201     	cbz	x1, 0xe570 <syna_cdev_devnode+0x40>
    e534: 5280c008     	mov	w8, #0x600              // =1536
    e538: 79000028     	strh	w8, [x1]
    e53c: f9403802     	ldr	x2, [x0, #0x70]
    e540: b5000042     	cbnz	x2, 0xe548 <syna_cdev_devnode+0x18>
    e544: f9400002     	ldr	x2, [x0]
    e548: d503233f     	paciasp
    e54c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    e550: 910003fd     	mov	x29, sp
    e554: 90000001     	adrp	x1, 0xe000 <syna_mmap+0x9c>
		000000000000e554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x504a
    e558: 91000021     	add	x1, x1, #0x0
		000000000000e558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x504a
    e55c: 52819800     	mov	w0, #0xcc0              // =3264
    e560: 94000000     	bl	0xe560 <syna_cdev_devnode+0x30>
		000000000000e560:  R_AARCH64_CALL26	kasprintf
    e564: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    e568: d50323bf     	autiasp
    e56c: d65f03c0     	ret
    e570: aa1f03e0     	mov	x0, xzr
    e574: d65f03c0     	ret
