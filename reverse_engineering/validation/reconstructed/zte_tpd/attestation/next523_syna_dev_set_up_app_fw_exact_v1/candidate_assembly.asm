
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002031c <syna_dev_set_up_app_fw>:
   2031c: b4000420     	cbz	x0, 0x203a0 <syna_dev_set_up_app_fw+0x84>
   20320: d503233f     	paciasp
   20324: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   20328: a9014ff4     	stp	x20, x19, [sp, #0x10]
   2032c: 910003fd     	mov	x29, sp
   20330: f9413808     	ldr	x8, [x0, #0x270]
   20334: f9400013     	ldr	x19, [x0]
   20338: b102a11f     	cmn	x8, #0xa8
   2033c: 540000e0     	b.eq	0x20358 <syna_dev_set_up_app_fw+0x3c>
   20340: b940b909     	ldr	w9, [x8, #0xb8]
   20344: 340000a9     	cbz	w9, 0x20358 <syna_dev_set_up_app_fw+0x3c>
   20348: 3942f108     	ldrb	w8, [x8, #0xbc]
   2034c: 36000068     	tbz	w8, #0x0, 0x20358 <syna_dev_set_up_app_fw+0x3c>
   20350: 2a1f03f4     	mov	w20, wzr
   20354: 14000002     	b	0x2035c <syna_dev_set_up_app_fw+0x40>
   20358: b9420e74     	ldr	w20, [x19, #0x20c]
   2035c: 39402662     	ldrb	w2, [x19, #0x9]
   20360: 7100045f     	cmp	w2, #0x1
   20364: 54000221     	b.ne	0x203a8 <syna_dev_set_up_app_fw+0x8c>
   20368: 9102c261     	add	x1, x19, #0xb0
   2036c: aa1303e0     	mov	x0, x19
   20370: 2a1403e2     	mov	w2, w20
   20374: 94000000     	bl	0x20374 <syna_dev_set_up_app_fw+0x58>
		0000000000020374:  R_AARCH64_CALL26	syna_tcm_get_app_info
   20378: 37f80260     	tbnz	w0, #0x1f, 0x203c4 <syna_dev_set_up_app_fw+0xa8>
   2037c: aa1303e0     	mov	x0, x19
   20380: 2a1403e1     	mov	w1, w20
   20384: 94000000     	bl	0x20384 <syna_dev_set_up_app_fw+0x68>
		0000000000020384:  R_AARCH64_CALL26	syna_tcm_preserve_touch_report_config
   20388: 37f80240     	tbnz	w0, #0x1f, 0x203d0 <syna_dev_set_up_app_fw+0xb4>
   2038c: 2a1f03e0     	mov	w0, wzr
   20390: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   20394: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   20398: d50323bf     	autiasp
   2039c: d65f03c0     	ret
   203a0: 128002a0     	mov	w0, #-0x16              // =-22
   203a4: d65f03c0     	ret
   203a8: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xcb0>
		00000000000203a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13698
   203ac: 91000000     	add	x0, x0, #0x0
		00000000000203ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13698
   203b0: 90000001     	adrp	x1, 0x20000 <zte_touch_probe+0xcb0>
		00000000000203b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1253c
   203b4: 91000021     	add	x1, x1, #0x0
		00000000000203b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1253c
   203b8: 94000000     	bl	0x203b8 <syna_dev_set_up_app_fw+0x9c>
		00000000000203b8:  R_AARCH64_CALL26	_printk
   203bc: 128002a0     	mov	w0, #-0x16              // =-22
   203c0: 17fffff4     	b	0x20390 <syna_dev_set_up_app_fw+0x74>
   203c4: 90000008     	adrp	x8, 0x20000 <zte_touch_probe+0xcb0>
		00000000000203c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13124
   203c8: 91000108     	add	x8, x8, #0x0
		00000000000203c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13124
   203cc: 14000003     	b	0x203d8 <syna_dev_set_up_app_fw+0xbc>
   203d0: 90000008     	adrp	x8, 0x20000 <zte_touch_probe+0xcb0>
		00000000000203d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x169fc
   203d4: 91000108     	add	x8, x8, #0x0
		00000000000203d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x169fc
   203d8: 90000001     	adrp	x1, 0x20000 <zte_touch_probe+0xcb0>
		00000000000203d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1253c
   203dc: 91000021     	add	x1, x1, #0x0
		00000000000203dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1253c
   203e0: 2a0003f3     	mov	w19, w0
   203e4: aa0803e0     	mov	x0, x8
   203e8: 94000000     	bl	0x203e8 <syna_dev_set_up_app_fw+0xcc>
		00000000000203e8:  R_AARCH64_CALL26	_printk
   203ec: 2a1303e0     	mov	w0, w19
   203f0: 17ffffe8     	b	0x20390 <syna_dev_set_up_app_fw+0x74>
