
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000176dc <syna_tcm_testing_check_array_data>:
   176dc: d503233f     	paciasp
   176e0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   176e4: f9000bf9     	str	x25, [sp, #0x10]
   176e8: a9025ff8     	stp	x24, x23, [sp, #0x20]
   176ec: a90357f6     	stp	x22, x21, [sp, #0x30]
   176f0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   176f4: 910003fd     	mov	x29, sp
   176f8: b40003e0     	cbz	x0, 0x17774 <syna_tcm_testing_check_array_data+0x98>
   176fc: aa0203f4     	mov	x20, x2
   17700: b40003a2     	cbz	x2, 0x17774 <syna_tcm_testing_check_array_data+0x98>
   17704: aa0103f6     	mov	x22, x1
   17708: 710006df     	cmp	w22, #0x1
   1770c: 5400022b     	b.lt	0x17750 <syna_tcm_testing_check_array_data+0x74>
   17710: aa0303f3     	mov	x19, x3
   17714: aa0003f5     	mov	x21, x0
   17718: aa1f03f7     	mov	x23, xzr
   1771c: 92407ad9     	and	x25, x22, #0x7fffffff
   17720: 52800038     	mov	w24, #0x1               // =1
   17724: eb16027f     	cmp	x19, x22
   17728: 8b1702a0     	add	x0, x21, x23
   1772c: 2a1703e2     	mov	w2, w23
   17730: 9a9733e8     	csel	x8, xzr, x23, lo
   17734: 8b080281     	add	x1, x20, x8
   17738: 94000017     	bl	0x17794 <syna_tcm_testing_0100_check_data>
   1773c: 910006f7     	add	x23, x23, #0x1
   17740: 0a180018     	and	w24, w0, w24
   17744: eb17033f     	cmp	x25, x23
   17748: 54fffee1     	b.ne	0x17724 <syna_tcm_testing_check_array_data+0x48>
   1774c: 14000002     	b	0x17754 <syna_tcm_testing_check_array_data+0x78>
   17750: 52800038     	mov	w24, #0x1               // =1
   17754: 12000300     	and	w0, w24, #0x1
   17758: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1775c: f9400bf9     	ldr	x25, [sp, #0x10]
   17760: a94357f6     	ldp	x22, x21, [sp, #0x30]
   17764: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   17768: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1776c: d50323bf     	autiasp
   17770: d65f03c0     	ret
   17774: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2205
   17778: 91000000     	add	x0, x0, #0x0
		0000000000017778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2205
   1777c: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		000000000001777c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c2d
   17780: 91000021     	add	x1, x1, #0x0
		0000000000017780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c2d
   17784: 94000000     	bl	0x17784 <syna_tcm_testing_check_array_data+0xa8>
		0000000000017784:  R_AARCH64_CALL26	_printk
   17788: 2a1f03f8     	mov	w24, wzr
   1778c: 17fffff2     	b	0x17754 <syna_tcm_testing_check_array_data+0x78>
