
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019444 <syna_tcm_v1_check_max_rw_size>:
   19444: d503233f     	paciasp
   19448: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1944c: 910003fd     	mov	x29, sp
   19450: b4000320     	cbz	x0, 0x194b4 <syna_tcm_v1_check_max_rw_size+0x70>
   19454: 39420008     	ldrb	w8, [x0, #0x80]
   19458: 7100051f     	cmp	w8, #0x1
   1945c: 54000321     	b.ne	0x194c0 <syna_tcm_v1_check_max_rw_size+0x7c>
   19460: 79412c09     	ldrh	w9, [x0, #0x96]
   19464: 34000349     	cbz	w9, 0x194cc <syna_tcm_v1_check_max_rw_size+0x88>
   19468: b9404008     	ldr	w8, [x0, #0x40]
   1946c: b940380b     	ldr	w11, [x0, #0x38]
   19470: 6b08013f     	cmp	w9, w8
   19474: 1a88312a     	csel	w10, w9, w8, lo
   19478: 7100011f     	cmp	w8, #0x0
   1947c: 1a8a0129     	csel	w9, w9, w10, eq
   19480: 6b09017f     	cmp	w11, w9
   19484: 54000040     	b.eq	0x1948c <syna_tcm_v1_check_max_rw_size+0x48>
   19488: b9003809     	str	w9, [x0, #0x38]
   1948c: 340000c8     	cbz	w8, 0x194a4 <syna_tcm_v1_check_max_rw_size+0x60>
   19490: b9403c09     	ldr	w9, [x0, #0x3c]
   19494: b9404408     	ldr	w8, [x0, #0x44]
   19498: 6b08013f     	cmp	w9, w8
   1949c: 54000049     	b.ls	0x194a4 <syna_tcm_v1_check_max_rw_size+0x60>
   194a0: b9003c08     	str	w8, [x0, #0x3c]
   194a4: 2a1f03e0     	mov	w0, wzr
   194a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   194ac: d50323bf     	autiasp
   194b0: d65f03c0     	ret
   194b4: 90000000     	adrp	x0, 0x19000 <syna_tcm_update_lockdown_config>
		00000000000194b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
   194b8: 91000000     	add	x0, x0, #0x0
		00000000000194b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
   194bc: 14000006     	b	0x194d4 <syna_tcm_v1_check_max_rw_size+0x90>
   194c0: 90000000     	adrp	x0, 0x19000 <syna_tcm_update_lockdown_config>
		00000000000194c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23b2
   194c4: 91000000     	add	x0, x0, #0x0
		00000000000194c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23b2
   194c8: 14000003     	b	0x194d4 <syna_tcm_v1_check_max_rw_size+0x90>
   194cc: 90000000     	adrp	x0, 0x19000 <syna_tcm_update_lockdown_config>
		00000000000194cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x257c
   194d0: 91000000     	add	x0, x0, #0x0
		00000000000194d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x257c
   194d4: 90000001     	adrp	x1, 0x19000 <syna_tcm_update_lockdown_config>
		00000000000194d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9b2
   194d8: 91000021     	add	x1, x1, #0x0
		00000000000194d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9b2
   194dc: 94000000     	bl	0x194dc <syna_tcm_v1_check_max_rw_size+0x98>
		00000000000194dc:  R_AARCH64_CALL26	_printk
   194e0: 12801e00     	mov	w0, #-0xf1              // =-241
   194e4: 17fffff1     	b	0x194a8 <syna_tcm_v1_check_max_rw_size+0x64>
