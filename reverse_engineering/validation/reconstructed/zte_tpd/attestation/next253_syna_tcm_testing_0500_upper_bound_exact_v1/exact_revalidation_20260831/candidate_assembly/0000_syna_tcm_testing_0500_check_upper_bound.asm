
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bad4 <syna_tcm_testing_0500_check_upper_bound>:
    bad4: d503233f     	paciasp
    bad8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    badc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bae0: 910003fd     	mov	x29, sp
    bae4: 79400013     	ldrh	w19, [x0]
    bae8: 79400034     	ldrh	w20, [x1]
    baec: 6b14027f     	cmp	w19, w20
    baf0: 540000e8     	b.hi	0xbb0c <syna_tcm_testing_0500_check_upper_bound+0x38>
    baf4: 6b14027f     	cmp	w19, w20
    baf8: 1a9f87e0     	cset	w0, ls
    bafc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    bb00: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bb04: d50323bf     	autiasp
    bb08: d65f03c0     	ret
    bb0c: 2a0203e8     	mov	w8, w2
    bb10: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bb10:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C643
    bb14: 91000000     	add	x0, x0, #0x0
		000000000000bb14:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C643
    bb18: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bb18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a40c
    bb1c: 91000021     	add	x1, x1, #0x0
		000000000000bb1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a40c
    bb20: 2a0303e2     	mov	w2, w3
    bb24: 2a0803e3     	mov	w3, w8
    bb28: 2a1303e4     	mov	w4, w19
    bb2c: 2a1403e5     	mov	w5, w20
    bb30: 94000000     	bl	0xbb30 <syna_tcm_testing_0500_check_upper_bound+0x5c>
		000000000000bb30:  R_AARCH64_CALL26	_printk
    bb34: 17fffff0     	b	0xbaf4 <syna_tcm_testing_0500_check_upper_bound+0x20>
