
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bb3c <syna_tcm_testing_0A00_check_lower_bound>:
    bb3c: d503233f     	paciasp
    bb40: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bb44: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bb48: 910003fd     	mov	x29, sp
    bb4c: 79c00013     	ldrsh	w19, [x0]
    bb50: 79c00034     	ldrsh	w20, [x1]
    bb54: 6b14027f     	cmp	w19, w20
    bb58: 540000eb     	b.lt	0xbb74 <syna_tcm_testing_0A00_check_lower_bound+0x38>
    bb5c: 6b14027f     	cmp	w19, w20
    bb60: 1a9fb7e0     	cset	w0, ge
    bb64: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    bb68: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bb6c: d50323bf     	autiasp
    bb70: d65f03c0     	ret
    bb74: 2a0203e8     	mov	w8, w2
    bb78: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bb78:  R_AARCH64_ADR_PREL_PG_HI21	unk_34372
    bb7c: 91000000     	add	x0, x0, #0x0
		000000000000bb7c:  R_AARCH64_ADD_ABS_LO12_NC	unk_34372
    bb80: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bb80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ace6
    bb84: 91000021     	add	x1, x1, #0x0
		000000000000bb84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ace6
    bb88: 2a0303e2     	mov	w2, w3
    bb8c: 2a0803e3     	mov	w3, w8
    bb90: 2a1303e4     	mov	w4, w19
    bb94: 2a1403e5     	mov	w5, w20
    bb98: 94000000     	bl	0xbb98 <syna_tcm_testing_0A00_check_lower_bound+0x5c>
		000000000000bb98:  R_AARCH64_CALL26	_printk
    bb9c: 17fffff0     	b	0xbb5c <syna_tcm_testing_0A00_check_lower_bound+0x20>
