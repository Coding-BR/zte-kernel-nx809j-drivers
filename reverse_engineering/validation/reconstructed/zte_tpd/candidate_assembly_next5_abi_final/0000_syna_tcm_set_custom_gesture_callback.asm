
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000161e8 <syna_tcm_set_custom_gesture_callback>:
   161e8: b40000c0     	cbz	x0, 0x16200 <syna_tcm_set_custom_gesture_callback+0x18>
   161ec: aa0003e8     	mov	x8, x0
   161f0: 2a1f03e0     	mov	w0, wzr
   161f4: f901e901     	str	x1, [x8, #0x3d0]
   161f8: f901e502     	str	x2, [x8, #0x3c8]
   161fc: d65f03c0     	ret
   16200: d503233f     	paciasp
   16204: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   16208: 910003fd     	mov	x29, sp
   1620c: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x44>
		000000000001620c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
   16210: 91000000     	add	x0, x0, #0x0
		0000000000016210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
   16214: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x44>
		0000000000016214:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b48
   16218: 91000021     	add	x1, x1, #0x0
		0000000000016218:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b48
   1621c: 94000000     	bl	0x1621c <syna_tcm_set_custom_gesture_callback+0x34>
		000000000001621c:  R_AARCH64_CALL26	_printk
   16220: 12801e00     	mov	w0, #-0xf1              // =-241
   16224: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   16228: d50323bf     	autiasp
   1622c: d65f03c0     	ret
