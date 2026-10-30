
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001620c <syna_tcm_set_custom_gesture_callback>:
   1620c: b40000c0     	cbz	x0, 0x16224 <syna_tcm_set_custom_gesture_callback+0x18>
   16210: aa0003e8     	mov	x8, x0
   16214: 2a1f03e0     	mov	w0, wzr
   16218: f901e901     	str	x1, [x8, #0x3d0]
   1621c: f901e502     	str	x2, [x8, #0x3c8]
   16220: d65f03c0     	ret
   16224: d503233f     	paciasp
   16228: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1622c: 910003fd     	mov	x29, sp
   16230: 90000000     	adrp	x0, 0x16000 <syna_tcm_reset+0x120>
		0000000000016230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xedb
   16234: 91000000     	add	x0, x0, #0x0
		0000000000016234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xedb
   16238: 90000001     	adrp	x1, 0x16000 <syna_tcm_reset+0x120>
		0000000000016238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43b7
   1623c: 91000021     	add	x1, x1, #0x0
		000000000001623c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43b7
   16240: 94000000     	bl	0x16240 <syna_tcm_set_custom_gesture_callback+0x34>
		0000000000016240:  R_AARCH64_CALL26	_printk
   16244: 12801e00     	mov	w0, #-0xf1              // =-241
   16248: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1624c: d50323bf     	autiasp
   16250: d65f03c0     	ret
