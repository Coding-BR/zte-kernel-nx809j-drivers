
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016258 <syna_tcm_set_custom_touch_entity_callback>:
   16258: b40000c0     	cbz	x0, 0x16270 <syna_tcm_set_custom_touch_entity_callback+0x18>
   1625c: aa0003e8     	mov	x8, x0
   16260: 2a1f03e0     	mov	w0, wzr
   16264: f901e101     	str	x1, [x8, #0x3c0]
   16268: f901dd02     	str	x2, [x8, #0x3b8]
   1626c: d65f03c0     	ret
   16270: d503233f     	paciasp
   16274: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   16278: 910003fd     	mov	x29, sp
   1627c: 90000000     	adrp	x0, 0x16000 <syna_tcm_reset+0x120>
		000000000001627c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xedb
   16280: 91000000     	add	x0, x0, #0x0
		0000000000016280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xedb
   16284: 90000001     	adrp	x1, 0x16000 <syna_tcm_reset+0x120>
		0000000000016284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x609
   16288: 91000021     	add	x1, x1, #0x0
		0000000000016288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x609
   1628c: 94000000     	bl	0x1628c <syna_tcm_set_custom_touch_entity_callback+0x34>
		000000000001628c:  R_AARCH64_CALL26	_printk
   16290: 12801e00     	mov	w0, #-0xf1              // =-241
   16294: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   16298: d50323bf     	autiasp
   1629c: d65f03c0     	ret
