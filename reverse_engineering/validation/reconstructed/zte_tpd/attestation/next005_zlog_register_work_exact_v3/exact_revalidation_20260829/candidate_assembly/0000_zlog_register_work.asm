
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026560 <zlog_register_work>:
   26560: 90000008     	adrp	x8, 0x26000 <get_tp_noise_store+0x3c>
		0000000000026560:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   26564: f9400100     	ldr	x0, [x8]
		0000000000026564:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   26568: 396fc008     	ldrb	w8, [x0, #0xbf0]
   2656c: 370000e8     	tbnz	w8, #0x0, 0x26588 <zlog_register_work+0x28>
   26570: d503233f     	paciasp
   26574: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   26578: 910003fd     	mov	x29, sp
   2657c: 94000000     	bl	0x2657c <zlog_register_work+0x1c>
		000000000002657c:  R_AARCH64_CALL26	tpd_zlog_register
   26580: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   26584: d50323bf     	autiasp
   26588: d65f03c0     	ret
