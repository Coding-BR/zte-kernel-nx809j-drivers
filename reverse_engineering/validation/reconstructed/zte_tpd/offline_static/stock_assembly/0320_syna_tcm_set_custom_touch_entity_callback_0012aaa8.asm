
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024220 <syna_tcm_set_custom_touch_entity_callback>:
   24220: b40000c0     	cbz	x0, 0x24238 <syna_tcm_set_custom_touch_entity_callback+0x18>
   24224: aa0003e8     	mov	x8, x0
   24228: 2a1f03e0     	mov	w0, wzr
   2422c: f901e101     	str	x1, [x8, #0x3c0]
   24230: f901dd02     	str	x2, [x8, #0x3b8]
   24234: d65f03c0     	ret
   24238: d503233f     	paciasp
   2423c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   24240: 910003fd     	mov	x29, sp
   24244: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   24248: 91000000     	add	x0, x0, #0x0
		0000000000024248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   2424c: 90000001     	adrp	x1, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		000000000002424c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c0
   24250: 91000021     	add	x1, x1, #0x0
		0000000000024250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c0
   24254: 94000000     	bl	0x24254 <syna_tcm_set_custom_touch_entity_callback+0x34>
		0000000000024254:  R_AARCH64_CALL26	_printk
   24258: 12801e00     	mov	w0, #-0xf1              // =-241
   2425c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   24260: d50323bf     	autiasp
   24264: d65f03c0     	ret
