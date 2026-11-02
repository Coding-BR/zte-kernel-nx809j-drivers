
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002029c <syna_tcm_testing_check_array_data>:
   2029c: d503233f     	paciasp
   202a0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   202a4: f9000bf9     	str	x25, [sp, #0x10]
   202a8: a9025ff8     	stp	x24, x23, [sp, #0x20]
   202ac: a90357f6     	stp	x22, x21, [sp, #0x30]
   202b0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   202b4: 910003fd     	mov	x29, sp
   202b8: b40003e0     	cbz	x0, 0x20334 <syna_tcm_testing_check_array_data+0x98>
   202bc: aa0203f4     	mov	x20, x2
   202c0: b40003a2     	cbz	x2, 0x20334 <syna_tcm_testing_check_array_data+0x98>
   202c4: aa0103f6     	mov	x22, x1
   202c8: 710006df     	cmp	w22, #0x1
   202cc: 5400022b     	b.lt	0x20310 <syna_tcm_testing_check_array_data+0x74>
   202d0: aa0303f3     	mov	x19, x3
   202d4: aa0003f5     	mov	x21, x0
   202d8: aa1f03f7     	mov	x23, xzr
   202dc: 92407ad9     	and	x25, x22, #0x7fffffff
   202e0: 52800038     	mov	w24, #0x1               // =1
   202e4: eb16027f     	cmp	x19, x22
   202e8: 8b1702a0     	add	x0, x21, x23
   202ec: 2a1703e2     	mov	w2, w23
   202f0: 9a9733e8     	csel	x8, xzr, x23, lo
   202f4: 8b080281     	add	x1, x20, x8
   202f8: 94000017     	bl	0x20354 <tp_edge_report_limit_write>
		00000000000202f8:  R_AARCH64_CALL26	syna_tcm_testing_0100_check_data
   202fc: 910006f7     	add	x23, x23, #0x1
   20300: 0a180018     	and	w24, w0, w24
   20304: eb17033f     	cmp	x25, x23
   20308: 54fffee1     	b.ne	0x202e4 <syna_tcm_testing_check_array_data+0x48>
   2030c: 14000002     	b	0x20314 <syna_tcm_testing_check_array_data+0x78>
   20310: 52800038     	mov	w24, #0x1               // =1
   20314: 12000300     	and	w0, w24, #0x1
   20318: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   2031c: f9400bf9     	ldr	x25, [sp, #0x10]
   20320: a94357f6     	ldp	x22, x21, [sp, #0x30]
   20324: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   20328: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   2032c: d50323bf     	autiasp
   20330: d65f03c0     	ret
   20334: 90000000     	adrp	x0, 0x20000 <syna_tcm_testing_0002_check_config_id+0x5c>
		0000000000020334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf52
   20338: 91000000     	add	x0, x0, #0x0
		0000000000020338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf52
   2033c: 90000001     	adrp	x1, 0x20000 <syna_tcm_testing_0002_check_config_id+0x5c>
		000000000002033c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13b14
   20340: 91000021     	add	x1, x1, #0x0
		0000000000020340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13b14
   20344: 94000000     	bl	0x20344 <syna_tcm_testing_check_array_data+0xa8>
		0000000000020344:  R_AARCH64_CALL26	_printk
   20348: 2a1f03f8     	mov	w24, wzr
   2034c: 17fffff2     	b	0x20314 <syna_tcm_testing_check_array_data+0x78>
