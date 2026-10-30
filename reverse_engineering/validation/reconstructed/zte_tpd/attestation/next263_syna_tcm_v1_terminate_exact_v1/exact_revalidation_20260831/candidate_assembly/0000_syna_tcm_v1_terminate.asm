
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bcb4 <syna_tcm_v1_terminate>:
    bcb4: d503233f     	paciasp
    bcb8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bcbc: f9000bf3     	str	x19, [sp, #0x10]
    bcc0: 910003fd     	mov	x29, sp
    bcc4: b4000100     	cbz	x0, 0xbce4 <syna_tcm_v1_terminate+0x30>
    bcc8: b941f808     	ldr	w8, [x0, #0x1f8]
    bccc: 7100051f     	cmp	w8, #0x1
    bcd0: 54000160     	b.eq	0xbcfc <syna_tcm_v1_terminate+0x48>
    bcd4: f9400bf3     	ldr	x19, [sp, #0x10]
    bcd8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bcdc: d50323bf     	autiasp
    bce0: d65f03c0     	ret
    bce4: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bce4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3365A
    bce8: 91000000     	add	x0, x0, #0x0
		000000000000bce8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3365A
    bcec: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bcec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bce1
    bcf0: 91000021     	add	x1, x1, #0x0
		000000000000bcf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bce1
    bcf4: 94000000     	bl	0xbcf4 <syna_tcm_v1_terminate+0x40>
		000000000000bcf4:  R_AARCH64_CALL26	_printk
    bcf8: 17fffff7     	b	0xbcd4 <syna_tcm_v1_terminate+0x20>
    bcfc: 3947f002     	ldrb	w2, [x0, #0x1fc]
    bd00: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bd00:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B33C
    bd04: 91000108     	add	x8, x8, #0x0
		000000000000bd04:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B33C
    bd08: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bd08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bce1
    bd0c: 91000021     	add	x1, x1, #0x0
		000000000000bd0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bce1
    bd10: aa0003f3     	mov	x19, x0
    bd14: aa0803e0     	mov	x0, x8
    bd18: 94000000     	bl	0xbd18 <syna_tcm_v1_terminate+0x64>
		000000000000bd18:  R_AARCH64_CALL26	_printk
    bd1c: 52800048     	mov	w8, #0x2                // =2
    bd20: 91088260     	add	x0, x19, #0x220
    bd24: b901fa68     	str	w8, [x19, #0x1f8]
    bd28: 94000000     	bl	0xbd28 <syna_tcm_v1_terminate+0x74>
		000000000000bd28:  R_AARCH64_CALL26	completion_done
    bd2c: 3707fd40     	tbnz	w0, #0x0, 0xbcd4 <syna_tcm_v1_terminate+0x20>
    bd30: 91088260     	add	x0, x19, #0x220
    bd34: 94000000     	bl	0xbd34 <syna_tcm_v1_terminate+0x80>
		000000000000bd34:  R_AARCH64_CALL26	complete
    bd38: 17ffffe7     	b	0xbcd4 <syna_tcm_v1_terminate+0x20>
