
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ba6c <syna_tcm_testing_0500_check_lower_bound>:
    ba6c: d503233f     	paciasp
    ba70: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    ba74: a9014ff4     	stp	x20, x19, [sp, #0x10]
    ba78: 910003fd     	mov	x29, sp
    ba7c: 79400013     	ldrh	w19, [x0]
    ba80: 79400034     	ldrh	w20, [x1]
    ba84: 6b14027f     	cmp	w19, w20
    ba88: 540000e3     	b.lo	0xbaa4 <syna_tcm_testing_0500_check_lower_bound+0x38>
    ba8c: 6b14027f     	cmp	w19, w20
    ba90: 1a9f37e0     	cset	w0, hs
    ba94: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    ba98: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    ba9c: d50323bf     	autiasp
    baa0: d65f03c0     	ret
    baa4: 2a0203e8     	mov	w8, w2
    baa8: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000baa8:  R_AARCH64_ADR_PREL_PG_HI21	unk_34372
    baac: 91000000     	add	x0, x0, #0x0
		000000000000baac:  R_AARCH64_ADD_ABS_LO12_NC	unk_34372
    bab0: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e84
    bab4: 91000021     	add	x1, x1, #0x0
		000000000000bab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e84
    bab8: 2a0303e2     	mov	w2, w3
    babc: 2a0803e3     	mov	w3, w8
    bac0: 2a1303e4     	mov	w4, w19
    bac4: 2a1403e5     	mov	w5, w20
    bac8: 94000000     	bl	0xbac8 <syna_tcm_testing_0500_check_lower_bound+0x5c>
		000000000000bac8:  R_AARCH64_CALL26	_printk
    bacc: 17fffff0     	b	0xba8c <syna_tcm_testing_0500_check_lower_bound+0x20>
