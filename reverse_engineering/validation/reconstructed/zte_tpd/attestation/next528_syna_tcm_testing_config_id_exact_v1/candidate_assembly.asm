
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000201e4 <syna_tcm_testing_config_id>:
   201e4: d503233f     	paciasp
   201e8: d101c3ff     	sub	sp, sp, #0x70
   201ec: a9047bfd     	stp	x29, x30, [sp, #0x40]
   201f0: a90557f6     	stp	x22, x21, [sp, #0x50]
   201f4: a9064ff4     	stp	x20, x19, [sp, #0x60]
   201f8: 910103fd     	add	x29, sp, #0x40
   201fc: d5384108     	mrs	x8, SP_EL0
   20200: f9438908     	ldr	x8, [x8, #0x710]
   20204: f81f83a8     	stur	x8, [x29, #-0x8]
   20208: 12801408     	mov	w8, #-0xa1              // =-161
   2020c: b4000040     	cbz	x0, 0x20214 <syna_tcm_testing_config_id+0x30>
   20210: b50001a1     	cbnz	x1, 0x20244 <syna_tcm_testing_config_id+0x60>
   20214: d5384109     	mrs	x9, SP_EL0
   20218: f9438929     	ldr	x9, [x9, #0x710]
   2021c: f85f83aa     	ldur	x10, [x29, #-0x8]
   20220: eb0a013f     	cmp	x9, x10
   20224: 54000a81     	b.ne	0x20374 <syna_tcm_testing_config_id+0x190>
   20228: 2a0803e0     	mov	w0, w8
   2022c: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   20230: a94557f6     	ldp	x22, x21, [sp, #0x50]
   20234: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   20238: 9101c3ff     	add	sp, sp, #0x70
   2023c: d50323bf     	autiasp
   20240: d65f03c0     	ret
   20244: 2a0203f5     	mov	w21, w2
   20248: aa0103f3     	mov	x19, x1
   2024c: 910023e1     	add	x1, sp, #0x8
   20250: 2a1f03e2     	mov	w2, wzr
   20254: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   20258: 910023f4     	add	x20, sp, #0x8
   2025c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   20260: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   20264: 94000000     	bl	0x20264 <syna_tcm_testing_config_id+0x80>
		0000000000020264:  R_AARCH64_CALL26	syna_tcm_get_app_info
   20268: 36f80160     	tbz	w0, #0x1f, 0x20294 <syna_tcm_testing_config_id+0xb0>
   2026c: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x4f0>
		000000000002026c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9c7
   20270: 91000000     	add	x0, x0, #0x0
		0000000000020270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9c7
   20274: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x4f0>
		0000000000020274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6ea
   20278: 91000021     	add	x1, x1, #0x0
		0000000000020278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6ea
   2027c: 94000000     	bl	0x2027c <syna_tcm_testing_config_id+0x98>
		000000000002027c:  R_AARCH64_CALL26	_printk
   20280: 3900427f     	strb	wzr, [x19, #0x10]
   20284: 12801453     	mov	w19, #-0xa3             // =-163
   20288: 90000002     	adrp	x2, 0x20000 <syna_dev_resume+0x4f0>
		0000000000020288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc091
   2028c: 91000042     	add	x2, x2, #0x0
		000000000002028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc091
   20290: 14000032     	b	0x20358 <syna_tcm_testing_config_id+0x174>
   20294: f9406e68     	ldr	x8, [x19, #0xd8]
   20298: aa1303e9     	mov	x9, x19
   2029c: b4000248     	cbz	x8, 0x202e4 <syna_tcm_testing_config_id+0x100>
   202a0: 2a0003f6     	mov	w22, w0
   202a4: aa0803e0     	mov	x0, x8
   202a8: 94000034     	bl	0x20378 <syna_tcm_testing_config_id+0x194>
   202ac: aa1303e9     	mov	x9, x19
   202b0: 2a0003e8     	mov	w8, w0
   202b4: 2a1603e0     	mov	w0, w22
   202b8: 37f80168     	tbnz	w8, #0x1f, 0x202e4 <syna_tcm_testing_config_id+0x100>
   202bc: f9406d28     	ldr	x8, [x9, #0xd8]
   202c0: 91004282     	add	x2, x20, #0x10
   202c4: f9400100     	ldr	x0, [x8]
   202c8: b9400901     	ldr	w1, [x8, #0x8]
   202cc: 94000062     	bl	0x20454 <tp_edge_report_limit_write+0xd8>
   202d0: f9406e68     	ldr	x8, [x19, #0xd8]
   202d4: aa1303e9     	mov	x9, x19
   202d8: 2a1603e0     	mov	w0, w22
   202dc: 5280020a     	mov	w10, #0x10              // =16
   202e0: b9000d0a     	str	w10, [x8, #0xc]
   202e4: 360000f5     	tbz	w21, #0x0, 0x20300 <syna_tcm_testing_config_id+0x11c>
   202e8: 52800028     	mov	w8, #0x1                // =1
   202ec: 2a0003f3     	mov	w19, w0
   202f0: 90000002     	adrp	x2, 0x20000 <syna_dev_resume+0x4f0>
		00000000000202f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf061
   202f4: 91000042     	add	x2, x2, #0x0
		00000000000202f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf061
   202f8: 39004128     	strb	w8, [x9, #0x10]
   202fc: 14000017     	b	0x20358 <syna_tcm_testing_config_id+0x174>
   20300: f9401d28     	ldr	x8, [x9, #0x38]
   20304: b4000188     	cbz	x8, 0x20334 <syna_tcm_testing_config_id+0x150>
   20308: b9400902     	ldr	w2, [x8, #0x8]
   2030c: 34000142     	cbz	w2, 0x20334 <syna_tcm_testing_config_id+0x150>
   20310: f9400101     	ldr	x1, [x8]
   20314: 2a0003f5     	mov	w21, w0
   20318: 91004280     	add	x0, x20, #0x10
   2031c: 94000063     	bl	0x204a8 <tp_edge_report_limit_write+0x12c>
   20320: 2a0003e8     	mov	w8, w0
   20324: aa1303e9     	mov	x9, x19
   20328: 2a1503e0     	mov	w0, w21
   2032c: 12000108     	and	w8, w8, #0x1
   20330: 39004268     	strb	w8, [x19, #0x10]
   20334: 39404128     	ldrb	w8, [x9, #0x10]
   20338: 12801429     	mov	w9, #-0xa2              // =-162
   2033c: 7100011f     	cmp	w8, #0x0
   20340: 90000008     	adrp	x8, 0x20000 <syna_dev_resume+0x4f0>
		0000000000020340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc091
   20344: 91000108     	add	x8, x8, #0x0
		0000000000020344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc091
   20348: 1a891013     	csel	w19, w0, w9, ne
   2034c: 90000009     	adrp	x9, 0x20000 <syna_dev_resume+0x4f0>
		000000000002034c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf061
   20350: 91000129     	add	x9, x9, #0x0
		0000000000020350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf061
   20354: 9a881122     	csel	x2, x9, x8, ne
   20358: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x4f0>
		0000000000020358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe72
   2035c: 91000000     	add	x0, x0, #0x0
		000000000002035c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe72
   20360: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x4f0>
		0000000000020360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6ea
   20364: 91000021     	add	x1, x1, #0x0
		0000000000020364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6ea
   20368: 94000000     	bl	0x20368 <syna_tcm_testing_config_id+0x184>
		0000000000020368:  R_AARCH64_CALL26	_printk
   2036c: 2a1303e8     	mov	w8, w19
   20370: 17ffffa9     	b	0x20214 <syna_tcm_testing_config_id+0x30>
   20374: 94000000     	bl	0x20374 <syna_tcm_testing_config_id+0x190>
		0000000000020374:  R_AARCH64_CALL26	__stack_chk_fail
