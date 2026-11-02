
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000466c <aw22xxx_get_fwname>:
    466c: d503233f     	paciasp
    4670: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    4674: f9000bf7     	str	x23, [sp, #0x10]
    4678: a90257f6     	stp	x22, x21, [sp, #0x20]
    467c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4680: 910003fd     	mov	x29, sp
    4684: 53187c16     	lsr	w22, w0, #24
    4688: 90000017     	adrp	x23, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004688:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x90e
    468c: 910002f7     	add	x23, x23, #0x0
		000000000000468c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x90e
    4690: 2a0003f3     	mov	w19, w0
    4694: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004694:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x178a
    4698: 91000000     	add	x0, x0, #0x0
		0000000000004698:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x178a
    469c: aa1703e1     	mov	x1, x23
    46a0: 52810422     	mov	w2, #0x821              // =2081
    46a4: 2a1603e3     	mov	w3, w22
    46a8: 94000000     	bl	0x46a8 <aw22xxx_get_fwname+0x3c>
		00000000000046a8:  R_AARCH64_CALL26	_printk
    46ac: 530c5e74     	ubfx	w20, w19, #12, #12
    46b0: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		00000000000046b0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x13d
    46b4: 91000000     	add	x0, x0, #0x0
		00000000000046b4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x13d
    46b8: aa1703e1     	mov	x1, x23
    46bc: 52810462     	mov	w2, #0x823              // =2083
    46c0: 2a1403e3     	mov	w3, w20
    46c4: 94000000     	bl	0x46c4 <aw22xxx_get_fwname+0x58>
		00000000000046c4:  R_AARCH64_CALL26	_printk
    46c8: 12002e75     	and	w21, w19, #0xfff
    46cc: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		00000000000046cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1601
    46d0: 91000000     	add	x0, x0, #0x0
		00000000000046d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1601
    46d4: aa1703e1     	mov	x1, x23
    46d8: 528104a2     	mov	w2, #0x825              // =2085
    46dc: 2a1503e3     	mov	w3, w21
    46e0: 94000000     	bl	0x46e0 <aw22xxx_get_fwname+0x74>
		00000000000046e0:  R_AARCH64_CALL26	_printk
    46e4: 710006df     	cmp	w22, #0x1
    46e8: 5400024c     	b.gt	0x4730 <aw22xxx_get_fwname+0xc4>
    46ec: 34000536     	cbz	w22, 0x4790 <aw22xxx_get_fwname+0x124>
    46f0: 710006df     	cmp	w22, #0x1
    46f4: 54000421     	b.ne	0x4778 <aw22xxx_get_fwname+0x10c>
    46f8: 90000013     	adrp	x19, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		00000000000046f8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_dyn_name
    46fc: 91000273     	add	x19, x19, #0x0
		00000000000046fc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_dyn_name
    4700: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004700:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd30
    4704: 91000021     	add	x1, x1, #0x0
		0000000000004704:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd30
    4708: aa1303e0     	mov	x0, x19
    470c: 2a1403e2     	mov	w2, w20
    4710: 2a1503e3     	mov	w3, w21
    4714: 94000000     	bl	0x4714 <aw22xxx_get_fwname+0xa8>
		0000000000004714:  R_AARCH64_CALL26	sprintf
    4718: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004718:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6a2
    471c: 91000000     	add	x0, x0, #0x0
		000000000000471c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6a2
    4720: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004720:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x90e
    4724: 91000021     	add	x1, x1, #0x0
		0000000000004724:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x90e
    4728: 52810662     	mov	w2, #0x833              // =2099
    472c: 14000030     	b	0x47ec <aw22xxx_get_fwname+0x180>
    4730: 71000adf     	cmp	w22, #0x2
    4734: 54000420     	b.eq	0x47b8 <aw22xxx_get_fwname+0x14c>
    4738: 71000edf     	cmp	w22, #0x3
    473c: 540001e1     	b.ne	0x4778 <aw22xxx_get_fwname+0x10c>
    4740: 90000013     	adrp	x19, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004740:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_dyn_name
    4744: 91000273     	add	x19, x19, #0x0
		0000000000004744:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_dyn_name
    4748: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004748:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x840
    474c: 91000021     	add	x1, x1, #0x0
		000000000000474c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x840
    4750: aa1303e0     	mov	x0, x19
    4754: 2a1403e2     	mov	w2, w20
    4758: 2a1503e3     	mov	w3, w21
    475c: 94000000     	bl	0x475c <aw22xxx_get_fwname+0xf0>
		000000000000475c:  R_AARCH64_CALL26	sprintf
    4760: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004760:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6a2
    4764: 91000000     	add	x0, x0, #0x0
		0000000000004764:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6a2
    4768: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004768:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x90e
    476c: 91000021     	add	x1, x1, #0x0
		000000000000476c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x90e
    4770: 52810762     	mov	w2, #0x83b              // =2107
    4774: 1400001e     	b	0x47ec <aw22xxx_get_fwname+0x180>
    4778: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004778:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd02
    477c: 91000000     	add	x0, x0, #0x0
		000000000000477c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd02
    4780: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004780:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x90e
    4784: 91000021     	add	x1, x1, #0x0
		0000000000004784:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x90e
    4788: 528107c2     	mov	w2, #0x83e              // =2110
    478c: 14000008     	b	0x47ac <aw22xxx_get_fwname+0x140>
    4790: 710032bf     	cmp	w21, #0xc
    4794: 540003c3     	b.lo	0x480c <aw22xxx_get_fwname+0x1a0>
    4798: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004798:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd02
    479c: 91000000     	add	x0, x0, #0x0
		000000000000479c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd02
    47a0: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		00000000000047a0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x90e
    47a4: 91000021     	add	x1, x1, #0x0
		00000000000047a4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x90e
    47a8: 52810542     	mov	w2, #0x82a              // =2090
    47ac: 2a1303e3     	mov	w3, w19
    47b0: 94000000     	bl	0x47b0 <aw22xxx_get_fwname+0x144>
		00000000000047b0:  R_AARCH64_CALL26	_printk
    47b4: 14000010     	b	0x47f4 <aw22xxx_get_fwname+0x188>
    47b8: 90000013     	adrp	x19, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		00000000000047b8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_dyn_name
    47bc: 91000273     	add	x19, x19, #0x0
		00000000000047bc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_dyn_name
    47c0: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		00000000000047c0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x161f
    47c4: 91000021     	add	x1, x1, #0x0
		00000000000047c4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x161f
    47c8: aa1303e0     	mov	x0, x19
    47cc: 2a1403e2     	mov	w2, w20
    47d0: 2a1503e3     	mov	w3, w21
    47d4: 94000000     	bl	0x47d4 <aw22xxx_get_fwname+0x168>
		00000000000047d4:  R_AARCH64_CALL26	sprintf
    47d8: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		00000000000047d8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6a2
    47dc: 91000000     	add	x0, x0, #0x0
		00000000000047dc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6a2
    47e0: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		00000000000047e0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x90e
    47e4: 91000021     	add	x1, x1, #0x0
		00000000000047e4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x90e
    47e8: 528106e2     	mov	w2, #0x837              // =2103
    47ec: aa1303e3     	mov	x3, x19
    47f0: 94000000     	bl	0x47f0 <aw22xxx_get_fwname+0x184>
		00000000000047f0:  R_AARCH64_CALL26	_printk
    47f4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    47f8: f9400bf7     	ldr	x23, [sp, #0x10]
    47fc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    4800: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    4804: d50323bf     	autiasp
    4808: d65f03c0     	ret
    480c: 90000008     	adrp	x8, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		000000000000480c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_cfg_name
    4810: f9400108     	ldr	x8, [x8]
		0000000000004810:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_cfg_name
    4814: f8735913     	ldr	x19, [x8, w19, uxtw #3]
    4818: aa1303e0     	mov	x0, x19
    481c: 94000000     	bl	0x481c <aw22xxx_get_fwname+0x1b0>
		000000000000481c:  R_AARCH64_CALL26	strlen
    4820: 91000402     	add	x2, x0, #0x1
    4824: f101045f     	cmp	x2, #0x41
    4828: 540001a2     	b.hs	0x485c <aw22xxx_get_fwname+0x1f0>
    482c: 90000014     	adrp	x20, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		000000000000482c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_dyn_name
    4830: 91000294     	add	x20, x20, #0x0
		0000000000004830:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_dyn_name
    4834: aa1303e1     	mov	x1, x19
    4838: aa1403e0     	mov	x0, x20
    483c: 94000000     	bl	0x483c <aw22xxx_get_fwname+0x1d0>
		000000000000483c:  R_AARCH64_CALL26	memcpy
    4840: 90000000     	adrp	x0, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004840:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6a2
    4844: 91000000     	add	x0, x0, #0x0
		0000000000004844:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6a2
    4848: 90000001     	adrp	x1, 0x4000 <aw22xxx_cfg_update_wait_from_dyn_name+0x10c>
		0000000000004848:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x90e
    484c: 91000021     	add	x1, x1, #0x0
		000000000000484c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x90e
    4850: 528105c2     	mov	w2, #0x82e              // =2094
    4854: aa1403e3     	mov	x3, x20
    4858: 17ffffe6     	b	0x47f0 <aw22xxx_get_fwname+0x184>
    485c: 528003e0     	mov	w0, #0x1f               // =31
    4860: 52800801     	mov	w1, #0x40               // =64
    4864: 94000000     	bl	0x4864 <aw22xxx_get_fwname+0x1f8>
		0000000000004864:  R_AARCH64_CALL26	__fortify_panic
