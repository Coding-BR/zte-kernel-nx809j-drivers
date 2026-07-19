
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016234 <syna_tcm_set_custom_touch_entity_callback>:
   16234: b40000c0     	cbz	x0, 0x1624c <syna_tcm_set_custom_touch_entity_callback+0x18>
   16238: aa0003e8     	mov	x8, x0
   1623c: 2a1f03e0     	mov	w0, wzr
   16240: f901e101     	str	x1, [x8, #0x3c0]
   16244: f901dd02     	str	x2, [x8, #0x3b8]
   16248: d65f03c0     	ret
   1624c: d503233f     	paciasp
   16250: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   16254: 910003fd     	mov	x29, sp
   16258: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x44>
		0000000000016258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
   1625c: 91000000     	add	x0, x0, #0x0
		000000000001625c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
   16260: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x44>
		0000000000016260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629
   16264: 91000021     	add	x1, x1, #0x0
		0000000000016264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629
   16268: 94000000     	bl	0x16268 <syna_tcm_set_custom_touch_entity_callback+0x34>
		0000000000016268:  R_AARCH64_CALL26	_printk
   1626c: 12801e00     	mov	w0, #-0xf1              // =-241
   16270: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   16274: d50323bf     	autiasp
   16278: d65f03c0     	ret
