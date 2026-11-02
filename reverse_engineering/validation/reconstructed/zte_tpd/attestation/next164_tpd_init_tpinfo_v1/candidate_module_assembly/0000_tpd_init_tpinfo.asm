
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000215bc <tpd_init_tpinfo>:
   215bc: d503233f     	paciasp
   215c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   215c4: a9014ff4     	stp	x20, x19, [sp, #0x10]
   215c8: 910003fd     	mov	x29, sp
   215cc: aa0003f3     	mov	x19, x0
   215d0: f946dc14     	ldr	x20, [x0, #0xdb8]
   215d4: 90000000     	adrp	x0, 0x21000 <tpd_clean_all_event+0xe0>
		00000000000215d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2f
   215d8: 91000000     	add	x0, x0, #0x0
		00000000000215d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2f
   215dc: 90000001     	adrp	x1, 0x21000 <tpd_clean_all_event+0xe0>
		00000000000215dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43b2
   215e0: 91000021     	add	x1, x1, #0x0
		00000000000215e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43b2
   215e4: 94000000     	bl	0x215e4 <tpd_init_tpinfo+0x28>
		00000000000215e4:  R_AARCH64_CALL26	_printk
   215e8: 90000008     	adrp	x8, 0x21000 <tpd_clean_all_event+0xe0>
		00000000000215e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1328
   215ec: 91000108     	add	x8, x8, #0x0
		00000000000215ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1328
   215f0: 52800029     	mov	w9, #0x1                // =1
   215f4: a940210a     	ldp	x10, x8, [x8]
   215f8: b90cf269     	str	w9, [x19, #0xcf0]
   215fc: 52800089     	mov	w9, #0x4                // =4
   21600: 2a1f03e0     	mov	w0, wzr
   21604: f9068e6a     	str	x10, [x19, #0xd18]
   21608: f9069268     	str	x8, [x19, #0xd20]
   2160c: f9400288     	ldr	x8, [x20]
   21610: b9400d08     	ldr	w8, [x8, #0xc]
   21614: b90d1669     	str	w9, [x19, #0xd14]
   21618: b90d0268     	str	w8, [x19, #0xd00]
   2161c: f9400288     	ldr	x8, [x20]
   21620: 79418d08     	ldrh	w8, [x8, #0xc6]
   21624: 5ac00508     	rev16	w8, w8
   21628: b90d0668     	str	w8, [x19, #0xd04]
   2162c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   21630: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   21634: d50323bf     	autiasp
   21638: d65f03c0     	ret
