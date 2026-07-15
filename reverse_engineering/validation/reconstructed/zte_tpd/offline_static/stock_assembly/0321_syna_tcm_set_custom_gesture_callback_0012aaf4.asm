
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002426c <syna_tcm_set_custom_gesture_callback>:
   2426c: b40000c0     	cbz	x0, 0x24284 <syna_tcm_set_custom_gesture_callback+0x18>
   24270: aa0003e8     	mov	x8, x0
   24274: 2a1f03e0     	mov	w0, wzr
   24278: f901e901     	str	x1, [x8, #0x3d0]
   2427c: f901e502     	str	x2, [x8, #0x3c8]
   24280: d65f03c0     	ret
   24284: d503233f     	paciasp
   24288: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   2428c: 910003fd     	mov	x29, sp
   24290: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   24294: 91000000     	add	x0, x0, #0x0
		0000000000024294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   24298: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9cb0
   2429c: 91000021     	add	x1, x1, #0x0
		000000000002429c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9cb0
   242a0: 94000000     	bl	0x242a0 <syna_tcm_set_custom_gesture_callback+0x34>
		00000000000242a0:  R_AARCH64_CALL26	_printk
   242a4: 12801e00     	mov	w0, #-0xf1              // =-241
   242a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   242ac: d50323bf     	autiasp
   242b0: d65f03c0     	ret
