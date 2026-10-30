
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b9ac <syna_tcm_set_report_dispatcher>:
    b9ac: d503233f     	paciasp
    b9b0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    b9b4: f9000bf7     	str	x23, [sp, #0x10]
    b9b8: a90257f6     	stp	x22, x21, [sp, #0x20]
    b9bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    b9c0: 910003fd     	mov	x29, sp
    b9c4: b5000100     	cbnz	x0, 0xb9e4 <syna_tcm_set_report_dispatcher+0x38>
    b9c8: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b9c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    b9cc: 91000000     	add	x0, x0, #0x0
		000000000000b9cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    b9d0: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b9d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a18
    b9d4: 91000021     	add	x1, x1, #0x0
		000000000000b9d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a18
    b9d8: 94000000     	bl	0xb9d8 <syna_tcm_set_report_dispatcher+0x2c>
		000000000000b9d8:  R_AARCH64_CALL26	_printk
    b9dc: 12801e00     	mov	w0, #-0xf1              // =-241
    b9e0: 1400001c     	b	0xba50 <syna_tcm_set_report_dispatcher+0xa4>
    b9e4: 12001c33     	and	w19, w1, #0xff
    b9e8: 2a0103f4     	mov	w20, w1
    b9ec: 71003e7f     	cmp	w19, #0xf
    b9f0: 540001c8     	b.hi	0xba28 <syna_tcm_set_report_dispatcher+0x7c>
    b9f4: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b9f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c27b
    b9f8: 91000108     	add	x8, x8, #0x0
		000000000000b9f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c27b
    b9fc: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b9fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a18
    ba00: 91000021     	add	x1, x1, #0x0
		000000000000ba00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a18
    ba04: aa0003f5     	mov	x21, x0
    ba08: aa0803e0     	mov	x0, x8
    ba0c: aa0203f6     	mov	x22, x2
    ba10: 2a1303e2     	mov	w2, w19
    ba14: aa0303f7     	mov	x23, x3
    ba18: 94000000     	bl	0xba18 <syna_tcm_set_report_dispatcher+0x6c>
		000000000000ba18:  R_AARCH64_CALL26	_printk
    ba1c: aa1503e0     	mov	x0, x21
    ba20: aa1603e2     	mov	x2, x22
    ba24: aa1703e3     	mov	x3, x23
    ba28: 8b341008     	add	x8, x0, w20, uxtb #4
    ba2c: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000ba2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1819a
    ba30: 91000000     	add	x0, x0, #0x0
		000000000000ba30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1819a
    ba34: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000ba34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a18
    ba38: 91000021     	add	x1, x1, #0x0
		000000000000ba38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a18
    ba3c: f901f102     	str	x2, [x8, #0x3e0]
    ba40: 2a1303e2     	mov	w2, w19
    ba44: f901ed03     	str	x3, [x8, #0x3d8]
    ba48: 94000000     	bl	0xba48 <syna_tcm_set_report_dispatcher+0x9c>
		000000000000ba48:  R_AARCH64_CALL26	_printk
    ba4c: 2a1f03e0     	mov	w0, wzr
    ba50: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    ba54: f9400bf7     	ldr	x23, [sp, #0x10]
    ba58: a94257f6     	ldp	x22, x21, [sp, #0x20]
    ba5c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    ba60: d50323bf     	autiasp
    ba64: d65f03c0     	ret
