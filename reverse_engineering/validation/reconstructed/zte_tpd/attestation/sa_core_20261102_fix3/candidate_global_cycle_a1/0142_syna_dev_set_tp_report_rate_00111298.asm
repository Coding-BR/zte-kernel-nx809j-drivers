
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001bcd4 <syna_dev_set_tp_report_rate>:
   1bcd4: d503233f     	paciasp
   1bcd8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1bcdc: f9000bf5     	str	x21, [sp, #0x10]
   1bce0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1bce4: 910003fd     	mov	x29, sp
   1bce8: 2a0103f5     	mov	w21, w1
   1bcec: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001bcec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b10
   1bcf0: 91000021     	add	x1, x1, #0x0
		000000000001bcf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b10
   1bcf4: 2a0203f3     	mov	w19, w2
   1bcf8: aa0003f4     	mov	x20, x0
   1bcfc: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bcfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c6
   1bd00: 91000000     	add	x0, x0, #0x0
		000000000001bd00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c6
   1bd04: aa0103e2     	mov	x2, x1
   1bd08: 94000000     	bl	0x1bd08 <syna_dev_set_tp_report_rate+0x34>
		000000000001bd08:  R_AARCH64_CALL26	_printk
   1bd0c: b4000254     	cbz	x20, 0x1bd54 <syna_dev_set_tp_report_rate+0x80>
   1bd10: 710006bf     	cmp	w21, #0x1
   1bd14: 5400024d     	b.le	0x1bd5c <syna_dev_set_tp_report_rate+0x88>
   1bd18: 71000abf     	cmp	w21, #0x2
   1bd1c: 54000380     	b.eq	0x1bd8c <syna_dev_set_tp_report_rate+0xb8>
   1bd20: 71000ebf     	cmp	w21, #0x3
   1bd24: 54000580     	b.eq	0x1bdd4 <syna_dev_set_tp_report_rate+0x100>
   1bd28: 710012bf     	cmp	w21, #0x4
   1bd2c: 54000761     	b.ne	0x1be18 <syna_dev_set_tp_report_rate+0x144>
   1bd30: f9400280     	ldr	x0, [x20]
   1bd34: 52801cc1     	mov	w1, #0xe6               // =230
   1bd38: 52800022     	mov	w2, #0x1                // =1
   1bd3c: 2a1303e3     	mov	w3, w19
   1bd40: 94000000     	bl	0x1bd40 <syna_dev_set_tp_report_rate+0x6c>
		000000000001bd40:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1bd44: 37f80600     	tbnz	w0, #0x1f, 0x1be04 <syna_dev_set_tp_report_rate+0x130>
   1bd48: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bd48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f84
   1bd4c: 91000000     	add	x0, x0, #0x0
		000000000001bd4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f84
   1bd50: 14000029     	b	0x1bdf4 <syna_dev_set_tp_report_rate+0x120>
   1bd54: 128002a0     	mov	w0, #-0x16              // =-22
   1bd58: 1400002b     	b	0x1be04 <syna_dev_set_tp_report_rate+0x130>
   1bd5c: 340002b5     	cbz	w21, 0x1bdb0 <syna_dev_set_tp_report_rate+0xdc>
   1bd60: 710006bf     	cmp	w21, #0x1
   1bd64: 540005a1     	b.ne	0x1be18 <syna_dev_set_tp_report_rate+0x144>
   1bd68: f9400280     	ldr	x0, [x20]
   1bd6c: 52801cc1     	mov	w1, #0xe6               // =230
   1bd70: 528000a2     	mov	w2, #0x5                // =5
   1bd74: 2a1303e3     	mov	w3, w19
   1bd78: 94000000     	bl	0x1bd78 <syna_dev_set_tp_report_rate+0xa4>
		000000000001bd78:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1bd7c: 37f80440     	tbnz	w0, #0x1f, 0x1be04 <syna_dev_set_tp_report_rate+0x130>
   1bd80: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bd80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c0
   1bd84: 91000000     	add	x0, x0, #0x0
		000000000001bd84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c0
   1bd88: 1400001b     	b	0x1bdf4 <syna_dev_set_tp_report_rate+0x120>
   1bd8c: f9400280     	ldr	x0, [x20]
   1bd90: 52801cc1     	mov	w1, #0xe6               // =230
   1bd94: 52800082     	mov	w2, #0x4                // =4
   1bd98: 2a1303e3     	mov	w3, w19
   1bd9c: 94000000     	bl	0x1bd9c <syna_dev_set_tp_report_rate+0xc8>
		000000000001bd9c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1bda0: 37f80320     	tbnz	w0, #0x1f, 0x1be04 <syna_dev_set_tp_report_rate+0x130>
   1bda4: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bda4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c8a
   1bda8: 91000000     	add	x0, x0, #0x0
		000000000001bda8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c8a
   1bdac: 14000012     	b	0x1bdf4 <syna_dev_set_tp_report_rate+0x120>
   1bdb0: f9400280     	ldr	x0, [x20]
   1bdb4: 52801cc1     	mov	w1, #0xe6               // =230
   1bdb8: 2a1f03e2     	mov	w2, wzr
   1bdbc: 2a1303e3     	mov	w3, w19
   1bdc0: 94000000     	bl	0x1bdc0 <syna_dev_set_tp_report_rate+0xec>
		000000000001bdc0:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1bdc4: 37f80200     	tbnz	w0, #0x1f, 0x1be04 <syna_dev_set_tp_report_rate+0x130>
   1bdc8: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bdc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x406a
   1bdcc: 91000000     	add	x0, x0, #0x0
		000000000001bdcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x406a
   1bdd0: 14000009     	b	0x1bdf4 <syna_dev_set_tp_report_rate+0x120>
   1bdd4: f9400280     	ldr	x0, [x20]
   1bdd8: 52801cc1     	mov	w1, #0xe6               // =230
   1bddc: 52800062     	mov	w2, #0x3                // =3
   1bde0: 2a1303e3     	mov	w3, w19
   1bde4: 94000000     	bl	0x1bde4 <syna_dev_set_tp_report_rate+0x110>
		000000000001bde4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   1bde8: 37f800e0     	tbnz	w0, #0x1f, 0x1be04 <syna_dev_set_tp_report_rate+0x130>
   1bdec: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bdec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x263c
   1bdf0: 91000000     	add	x0, x0, #0x0
		000000000001bdf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x263c
   1bdf4: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001bdf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b10
   1bdf8: 91000021     	add	x1, x1, #0x0
		000000000001bdf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b10
   1bdfc: 94000000     	bl	0x1bdfc <syna_dev_set_tp_report_rate+0x128>
		000000000001bdfc:  R_AARCH64_CALL26	_printk
   1be00: 2a1f03e0     	mov	w0, wzr
   1be04: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1be08: f9400bf5     	ldr	x21, [sp, #0x10]
   1be0c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1be10: d50323bf     	autiasp
   1be14: d65f03c0     	ret
   1be18: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001be18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b10
   1be1c: 91000021     	add	x1, x1, #0x0
		000000000001be1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b10
   1be20: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001be20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf54
   1be24: 91000000     	add	x0, x0, #0x0
		000000000001be24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf54
   1be28: aa0103e2     	mov	x2, x1
   1be2c: 94000000     	bl	0x1be2c <syna_dev_set_tp_report_rate+0x158>
		000000000001be2c:  R_AARCH64_CALL26	_printk
   1be30: 17fffff4     	b	0x1be00 <syna_dev_set_tp_report_rate+0x12c>
