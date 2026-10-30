
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bba4 <syna_tcm_testing_0A00_check_upper_bound>:
    bba4: d503233f     	paciasp
    bba8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bbac: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bbb0: 910003fd     	mov	x29, sp
    bbb4: 79c00013     	ldrsh	w19, [x0]
    bbb8: 79c00034     	ldrsh	w20, [x1]
    bbbc: 6b14027f     	cmp	w19, w20
    bbc0: 540000ec     	b.gt	0xbbdc <syna_tcm_testing_0A00_check_upper_bound+0x38>
    bbc4: 6b14027f     	cmp	w19, w20
    bbc8: 1a9fc7e0     	cset	w0, le
    bbcc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    bbd0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bbd4: d50323bf     	autiasp
    bbd8: d65f03c0     	ret
    bbdc: 2a0203e8     	mov	w8, w2
    bbe0: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bbe0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C643
    bbe4: 91000000     	add	x0, x0, #0x0
		000000000000bbe4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C643
    bbe8: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bbe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191b7
    bbec: 91000021     	add	x1, x1, #0x0
		000000000000bbec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191b7
    bbf0: 2a0303e2     	mov	w2, w3
    bbf4: 2a0803e3     	mov	w3, w8
    bbf8: 2a1303e4     	mov	w4, w19
    bbfc: 2a1403e5     	mov	w5, w20
    bc00: 94000000     	bl	0xbc00 <syna_tcm_testing_0A00_check_upper_bound+0x5c>
		000000000000bc00:  R_AARCH64_CALL26	_printk
    bc04: 17fffff0     	b	0xbbc4 <syna_tcm_testing_0A00_check_upper_bound+0x20>
