
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000266f8 <syna_cdev_devnode>:
   266f8: b4000201     	cbz	x1, 0x26738 <syna_cdev_devnode+0x40>
   266fc: 5280c008     	mov	w8, #0x600              // =1536
   26700: 79000028     	strh	w8, [x1]
   26704: f9403802     	ldr	x2, [x0, #0x70]
   26708: b5000042     	cbnz	x2, 0x26710 <syna_cdev_devnode+0x18>
   2670c: f9400002     	ldr	x2, [x0]
   26710: d503233f     	paciasp
   26714: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26718: 910003fd     	mov	x29, sp
   2671c: 90000001     	adrp	x1, 0x26000 <get_tp_noise_show+0xfc>
		000000000002671c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5170
   26720: 91000021     	add	x1, x1, #0x0
		0000000000026720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5170
   26724: 52819800     	mov	w0, #0xcc0              // =3264
   26728: 94000000     	bl	0x26728 <syna_cdev_devnode+0x30>
		0000000000026728:  R_AARCH64_CALL26	kasprintf
   2672c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26730: d50323bf     	autiasp
   26734: d65f03c0     	ret
   26738: aa1f03e0     	mov	x0, xzr
   2673c: d65f03c0     	ret
