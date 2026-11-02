
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f5d0 <syna_tcm_testing_check_array_data>:
    f5d0: d503233f     	paciasp
    f5d4: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    f5d8: f9000bf9     	str	x25, [sp, #0x10]
    f5dc: a9025ff8     	stp	x24, x23, [sp, #0x20]
    f5e0: a90357f6     	stp	x22, x21, [sp, #0x30]
    f5e4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    f5e8: 910003fd     	mov	x29, sp
    f5ec: b40003e0     	cbz	x0, 0xf668 <syna_tcm_testing_check_array_data+0x98>
    f5f0: aa0203f4     	mov	x20, x2
    f5f4: b40003a2     	cbz	x2, 0xf668 <syna_tcm_testing_check_array_data+0x98>
    f5f8: aa0103f6     	mov	x22, x1
    f5fc: 710006df     	cmp	w22, #0x1
    f600: 5400022b     	b.lt	0xf644 <syna_tcm_testing_check_array_data+0x74>
    f604: aa0303f3     	mov	x19, x3
    f608: aa0003f5     	mov	x21, x0
    f60c: aa1f03f7     	mov	x23, xzr
    f610: 92407ad9     	and	x25, x22, #0x7fffffff
    f614: 52800038     	mov	w24, #0x1               // =1
    f618: eb16027f     	cmp	x19, x22
    f61c: 8b1702a0     	add	x0, x21, x23
    f620: 2a1703e2     	mov	w2, w23
    f624: 9a9733e8     	csel	x8, xzr, x23, lo
    f628: 8b080281     	add	x1, x20, x8
    f62c: 94000017     	bl	0xf688 <syna_tcm_testing_0100_check_data>
		000000000000f62c:  R_AARCH64_CALL26	syna_tcm_testing_0100_check_data
    f630: 910006f7     	add	x23, x23, #0x1
    f634: 0a180018     	and	w24, w0, w24
    f638: eb17033f     	cmp	x25, x23
    f63c: 54fffee1     	b.ne	0xf618 <syna_tcm_testing_check_array_data+0x48>
    f640: 14000002     	b	0xf648 <syna_tcm_testing_check_array_data+0x78>
    f644: 52800038     	mov	w24, #0x1               // =1
    f648: 12000300     	and	w0, w24, #0x1
    f64c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    f650: f9400bf9     	ldr	x25, [sp, #0x10]
    f654: a94357f6     	ldp	x22, x21, [sp, #0x30]
    f658: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    f65c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    f660: d50323bf     	autiasp
    f664: d65f03c0     	ret
    f668: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227e
    f66c: 91000000     	add	x0, x0, #0x0
		000000000000f66c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227e
    f670: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e68
    f674: 91000021     	add	x1, x1, #0x0
		000000000000f674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e68
    f678: 94000000     	bl	0xf678 <syna_tcm_testing_check_array_data+0xa8>
		000000000000f678:  R_AARCH64_CALL26	_printk
    f67c: 2a1f03f8     	mov	w24, wzr
    f680: 17fffff2     	b	0xf648 <syna_tcm_testing_check_array_data+0x78>
