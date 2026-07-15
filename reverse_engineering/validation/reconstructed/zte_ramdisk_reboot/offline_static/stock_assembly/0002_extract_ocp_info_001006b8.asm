
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000258 <extract_ocp_info>:
     258: d503233f     	paciasp
     25c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     260: a9015ff8     	stp	x24, x23, [sp, #0x10]
     264: a90257f6     	stp	x22, x21, [sp, #0x20]
     268: a9034ff4     	stp	x20, x19, [sp, #0x30]
     26c: 910003fd     	mov	x29, sp
     270: aa0103f3     	mov	x19, x1
     274: aa0003f5     	mov	x21, x0
     278: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x346
     27c: 91000021     	add	x1, x1, #0x0
		000000000000027c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x346
     280: aa1303e0     	mov	x0, x19
     284: aa0303f6     	mov	x22, x3
     288: aa0203f4     	mov	x20, x2
     28c: 94000000     	bl	0x28c <extract_ocp_info+0x34>
		000000000000028c:  R_AARCH64_CALL26	strstr
     290: aa0003f7     	mov	x23, x0
     294: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x244
     298: 91000021     	add	x1, x1, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x244
     29c: aa1303e0     	mov	x0, x19
     2a0: 94000000     	bl	0x2a0 <extract_ocp_info+0x48>
		00000000000002a0:  R_AARCH64_CALL26	strstr
     2a4: b40003d3     	cbz	x19, 0x31c <extract_ocp_info+0xc4>
     2a8: b4000277     	cbz	x23, 0x2f4 <extract_ocp_info+0x9c>
     2ac: b4000240     	cbz	x0, 0x2f4 <extract_ocp_info+0x9c>
     2b0: 910036f8     	add	x24, x23, #0xd
     2b4: eb180017     	subs	x23, x0, x24
     2b8: 540001e3     	b.lo	0x2f4 <extract_ocp_info+0x9c>
     2bc: 54000240     	b.eq	0x304 <extract_ocp_info+0xac>
     2c0: aa1303e0     	mov	x0, x19
     2c4: 94000000     	bl	0x2c4 <extract_ocp_info+0x6c>
		00000000000002c4:  R_AARCH64_CALL26	strlen
     2c8: eb1602ff     	cmp	x23, x22
     2cc: 540001c2     	b.hs	0x304 <extract_ocp_info+0xac>
     2d0: eb0002ff     	cmp	x23, x0
     2d4: 54000182     	b.hs	0x304 <extract_ocp_info+0xac>
     2d8: aa1403e0     	mov	x0, x20
     2dc: aa1803e1     	mov	x1, x24
     2e0: aa1703e2     	mov	x2, x23
     2e4: 94000000     	bl	0x2e4 <extract_ocp_info+0x8c>
		00000000000002e4:  R_AARCH64_CALL26	strncpy
     2e8: 2a1f03e0     	mov	w0, wzr
     2ec: 38376a9f     	strb	wzr, [x20, x23]
     2f0: 14000010     	b	0x330 <extract_ocp_info+0xd8>
     2f4: f94002a0     	ldr	x0, [x21]
     2f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177
     2fc: 91000021     	add	x1, x1, #0x0
		00000000000002fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177
     300: 14000004     	b	0x310 <extract_ocp_info+0xb8>
     304: f94002a0     	ldr	x0, [x21]
     308: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     30c: 91000021     	add	x1, x1, #0x0
		000000000000030c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     310: aa1303e2     	mov	x2, x19
     314: 94000000     	bl	0x314 <extract_ocp_info+0xbc>
		0000000000000314:  R_AARCH64_CALL26	_dev_err
     318: 14000005     	b	0x32c <extract_ocp_info+0xd4>
     31c: f94002a0     	ldr	x0, [x21]
     320: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e
     324: 91000021     	add	x1, x1, #0x0
		0000000000000324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e
     328: 94000000     	bl	0x328 <extract_ocp_info+0xd0>
		0000000000000328:  R_AARCH64_CALL26	_dev_err
     32c: 12800000     	mov	w0, #-0x1               // =-1
     330: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     334: a94257f6     	ldp	x22, x21, [sp, #0x20]
     338: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     33c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     340: d50323bf     	autiasp
     344: d65f03c0     	ret
