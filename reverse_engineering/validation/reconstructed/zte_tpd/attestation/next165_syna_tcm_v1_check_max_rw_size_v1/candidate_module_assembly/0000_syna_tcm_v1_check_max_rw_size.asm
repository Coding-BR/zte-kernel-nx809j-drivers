
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000191f0 <syna_tcm_v1_check_max_rw_size>:
   191f0: d503233f     	paciasp
   191f4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   191f8: 910003fd     	mov	x29, sp
   191fc: b4000320     	cbz	x0, 0x19260 <syna_tcm_v1_check_max_rw_size+0x70>
   19200: 39420008     	ldrb	w8, [x0, #0x80]
   19204: 7100051f     	cmp	w8, #0x1
   19208: 54000321     	b.ne	0x1926c <syna_tcm_v1_check_max_rw_size+0x7c>
   1920c: 79412c09     	ldrh	w9, [x0, #0x96]
   19210: 34000349     	cbz	w9, 0x19278 <syna_tcm_v1_check_max_rw_size+0x88>
   19214: b9404008     	ldr	w8, [x0, #0x40]
   19218: b940380b     	ldr	w11, [x0, #0x38]
   1921c: 6b08013f     	cmp	w9, w8
   19220: 1a88312a     	csel	w10, w9, w8, lo
   19224: 7100011f     	cmp	w8, #0x0
   19228: 1a8a0129     	csel	w9, w9, w10, eq
   1922c: 6b09017f     	cmp	w11, w9
   19230: 54000040     	b.eq	0x19238 <syna_tcm_v1_check_max_rw_size+0x48>
   19234: b9003809     	str	w9, [x0, #0x38]
   19238: 340000c8     	cbz	w8, 0x19250 <syna_tcm_v1_check_max_rw_size+0x60>
   1923c: b9403c09     	ldr	w9, [x0, #0x3c]
   19240: b9404408     	ldr	w8, [x0, #0x44]
   19244: 6b08013f     	cmp	w9, w8
   19248: 54000049     	b.ls	0x19250 <syna_tcm_v1_check_max_rw_size+0x60>
   1924c: b9003c08     	str	w8, [x0, #0x3c]
   19250: 2a1f03e0     	mov	w0, wzr
   19254: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   19258: d50323bf     	autiasp
   1925c: d65f03c0     	ret
   19260: 90000000     	adrp	x0, 0x19000 <syna_tcm_update_lockdown_config+0x254>
		0000000000019260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1072
   19264: 91000000     	add	x0, x0, #0x0
		0000000000019264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1072
   19268: 14000006     	b	0x19280 <syna_tcm_v1_check_max_rw_size+0x90>
   1926c: 90000000     	adrp	x0, 0x19000 <syna_tcm_update_lockdown_config+0x254>
		000000000001926c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ab6
   19270: 91000000     	add	x0, x0, #0x0
		0000000000019270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ab6
   19274: 14000003     	b	0x19280 <syna_tcm_v1_check_max_rw_size+0x90>
   19278: 90000000     	adrp	x0, 0x19000 <syna_tcm_update_lockdown_config+0x254>
		0000000000019278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cbe
   1927c: 91000000     	add	x0, x0, #0x0
		000000000001927c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cbe
   19280: 90000001     	adrp	x1, 0x19000 <syna_tcm_update_lockdown_config+0x254>
		0000000000019280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa49
   19284: 91000021     	add	x1, x1, #0x0
		0000000000019284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa49
   19288: 94000000     	bl	0x19288 <syna_tcm_v1_check_max_rw_size+0x98>
		0000000000019288:  R_AARCH64_CALL26	_printk
   1928c: 12801e00     	mov	w0, #-0xf1              // =-241
   19290: 17fffff1     	b	0x19254 <syna_tcm_v1_check_max_rw_size+0x64>
