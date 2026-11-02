
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c14c <tpd_test_cmd_store>:
   1c14c: d503233f     	paciasp
   1c150: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1c154: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1c158: 910003fd     	mov	x29, sp
   1c15c: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c160: b9457e68     	ldr	w8, [x19, #0x57c]
   1c164: 7100051f     	cmp	w8, #0x1
   1c168: 540001a1     	b.ne	0x1c19c <tpd_test_cmd_store+0x50>
   1c16c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c16c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c170: 91000000     	add	x0, x0, #0x0
		000000000001c170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c174: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5104
   1c178: 91000021     	add	x1, x1, #0x0
		000000000001c178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5104
   1c17c: 94000000     	bl	0x1c17c <tpd_test_cmd_store+0x30>
		000000000001c17c:  R_AARCH64_CALL26	_printk
   1c180: aa1303e0     	mov	x0, x19
   1c184: 94000000     	bl	0x1c184 <tpd_test_cmd_store+0x38>
		000000000001c184:  R_AARCH64_CALL26	syna_testing_pt01_zte
   1c188: 36f802e0     	tbz	w0, #0x1f, 0x1c1e4 <tpd_test_cmd_store+0x98>
   1c18c: 2a0003f4     	mov	w20, w0
   1c190: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3070
   1c194: 91000000     	add	x0, x0, #0x0
		000000000001c194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3070
   1c198: 14000004     	b	0x1c1a8 <tpd_test_cmd_store+0x5c>
   1c19c: 2a1f03f4     	mov	w20, wzr
   1c1a0: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c1a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1c1a4: 91000000     	add	x0, x0, #0x0
		000000000001c1a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1c1a8: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c1a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5104
   1c1ac: 91000021     	add	x1, x1, #0x0
		000000000001c1ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5104
   1c1b0: 94000000     	bl	0x1c1b0 <tpd_test_cmd_store+0x64>
		000000000001c1b0:  R_AARCH64_CALL26	_printk
   1c1b4: f9413a60     	ldr	x0, [x19, #0x270]
   1c1b8: 94000000     	bl	0x1c1b8 <tpd_test_cmd_store+0x6c>
		000000000001c1b8:  R_AARCH64_CALL26	syna_spi_hw_reset
   1c1bc: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c1bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ab2
   1c1c0: 91000000     	add	x0, x0, #0x0
		000000000001c1c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ab2
   1c1c4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c1c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5104
   1c1c8: 91000021     	add	x1, x1, #0x0
		000000000001c1c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5104
   1c1cc: 94000000     	bl	0x1c1cc <tpd_test_cmd_store+0x80>
		000000000001c1cc:  R_AARCH64_CALL26	_printk
   1c1d0: 2a1403e0     	mov	w0, w20
   1c1d4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1c1d8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1c1dc: d50323bf     	autiasp
   1c1e0: d65f03c0     	ret
   1c1e4: aa1303e0     	mov	x0, x19
   1c1e8: 94000000     	bl	0x1c1e8 <tpd_test_cmd_store+0x9c>
		000000000001c1e8:  R_AARCH64_CALL26	syna_testing_pt05_zte
   1c1ec: 36f800a0     	tbz	w0, #0x1f, 0x1c200 <tpd_test_cmd_store+0xb4>
   1c1f0: 2a0003f4     	mov	w20, w0
   1c1f4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c1f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba50
   1c1f8: 91000000     	add	x0, x0, #0x0
		000000000001c1f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba50
   1c1fc: 17ffffeb     	b	0x1c1a8 <tpd_test_cmd_store+0x5c>
   1c200: aa1303e0     	mov	x0, x19
   1c204: 94000000     	bl	0x1c204 <tpd_test_cmd_store+0xb8>
		000000000001c204:  R_AARCH64_CALL26	syna_testing_pt0a_zte
   1c208: 2a0003f4     	mov	w20, w0
   1c20c: 36fffd40     	tbz	w0, #0x1f, 0x1c1b4 <tpd_test_cmd_store+0x68>
   1c210: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x96fa
   1c214: 91000000     	add	x0, x0, #0x0
		000000000001c214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x96fa
   1c218: 17ffffe4     	b	0x1c1a8 <tpd_test_cmd_store+0x5c>
