
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025444 <tpd_get_singleaodgesture>:
   25444: d503233f     	paciasp
   25448: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2544c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25450: 910003fd     	mov	x29, sp
   25454: f946dc08     	ldr	x8, [x0, #0xdb8]
   25458: 90000014     	adrp	x20, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa82
   2545c: 91000294     	add	x20, x20, #0x0
		000000000002545c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa82
   25460: aa0003f3     	mov	x19, x0
   25464: aa1403e1     	mov	x1, x20
   25468: b945b502     	ldr	w2, [x8, #0x5b4]
   2546c: b9045002     	str	w2, [x0, #0x450]
   25470: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x110c
   25474: 91000000     	add	x0, x0, #0x0
		0000000000025474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x110c
   25478: 94000000     	bl	0x25478 <tpd_get_singleaodgesture+0x34>
		0000000000025478:  R_AARCH64_CALL26	_printk
   2547c: b9445262     	ldr	w2, [x19, #0x450]
   25480: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e2e
   25484: 91000000     	add	x0, x0, #0x0
		0000000000025484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e2e
   25488: aa1403e1     	mov	x1, x20
   2548c: 94000000     	bl	0x2548c <tpd_get_singleaodgesture+0x48>
		000000000002548c:  R_AARCH64_CALL26	_printk
   25490: 2a1f03e0     	mov	w0, wzr
   25494: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   25498: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   2549c: d50323bf     	autiasp
   254a0: d65f03c0     	ret
