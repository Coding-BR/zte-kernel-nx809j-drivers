
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c1a8 <tpd_test_cmd_store>:
   1c1a8: d503233f     	paciasp
   1c1ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c1b0: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c1b4: 910003fd     	mov	x29, sp
   1c1b8: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c1bc: b9457e68     	ldr	w8, [x19, #0x57c]
   1c1c0: 7100051f     	cmp	w8, #0x1
   1c1c4: 540001a1     	b.ne	0x1c1f8 <tpd_test_cmd_store+0x50>
   1c1c8: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c1c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c1cc: 91000000     	add	x0, x0, #0x0
		000000000001c1cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c1d0: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c1d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5104
   1c1d4: 91000021     	add	x1, x1, #0x0
		000000000001c1d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5104
   1c1d8: 94000000     	bl	0x1c1d8 <tpd_test_cmd_store+0x30>
		000000000001c1d8:  R_AARCH64_CALL26	_printk
   1c1dc: aa1303e0     	mov	x0, x19
   1c1e0: 94000000     	bl	0x1c1e0 <tpd_test_cmd_store+0x38>
		000000000001c1e0:  R_AARCH64_CALL26	syna_testing_pt01_zte
   1c1e4: 36f802e0     	tbz	w0, #0x1f, 0x1c240 <tpd_test_cmd_store+0x98>
   1c1e8: 2a0003f4     	mov	w20, w0
   1c1ec: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c1ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3070
   1c1f0: 91000000     	add	x0, x0, #0x0
		000000000001c1f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3070
   1c1f4: 14000004     	b	0x1c204 <tpd_test_cmd_store+0x5c>
   1c1f8: 2a1f03f4     	mov	w20, wzr
   1c1fc: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c1fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c200: 91000000     	add	x0, x0, #0x0
		000000000001c200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c204: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5104
   1c208: 91000021     	add	x1, x1, #0x0
		000000000001c208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5104
   1c20c: 94000000     	bl	0x1c20c <tpd_test_cmd_store+0x64>
		000000000001c20c:  R_AARCH64_CALL26	_printk
   1c210: f9413a60     	ldr	x0, [x19, #0x270]
   1c214: 94000000     	bl	0x1c214 <tpd_test_cmd_store+0x6c>
		000000000001c214:  R_AARCH64_CALL26	syna_spi_hw_reset
   1c218: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ab2
   1c21c: 91000000     	add	x0, x0, #0x0
		000000000001c21c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ab2
   1c220: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5104
   1c224: 91000021     	add	x1, x1, #0x0
		000000000001c224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5104
   1c228: 94000000     	bl	0x1c228 <tpd_test_cmd_store+0x80>
		000000000001c228:  R_AARCH64_CALL26	_printk
   1c22c: 2a1403e0     	mov	w0, w20
   1c230: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c234: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c238: d50323bf     	autiasp
   1c23c: d65f03c0     	ret
   1c240: aa1303e0     	mov	x0, x19
   1c244: 94000000     	bl	0x1c244 <tpd_test_cmd_store+0x9c>
		000000000001c244:  R_AARCH64_CALL26	syna_testing_pt05_zte
   1c248: 36f800a0     	tbz	w0, #0x1f, 0x1c25c <tpd_test_cmd_store+0xb4>
   1c24c: 2a0003f4     	mov	w20, w0
   1c250: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba50
   1c254: 91000000     	add	x0, x0, #0x0
		000000000001c254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba50
   1c258: 17ffffeb     	b	0x1c204 <tpd_test_cmd_store+0x5c>
   1c25c: aa1303e0     	mov	x0, x19
   1c260: 94000000     	bl	0x1c260 <tpd_test_cmd_store+0xb8>
		000000000001c260:  R_AARCH64_CALL26	syna_testing_pt0a_zte
   1c264: 2a0003f4     	mov	w20, w0
   1c268: 36fffd40     	tbz	w0, #0x1f, 0x1c210 <tpd_test_cmd_store+0x68>
   1c26c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c26c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96fa
   1c270: 91000000     	add	x0, x0, #0x0
		000000000001c270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96fa
   1c274: 17ffffe4     	b	0x1c204 <tpd_test_cmd_store+0x5c>
