
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e3f4 <syna_sysfs_pwr_store>:
    e3f4: d503233f     	paciasp
    e3f8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    e3fc: a90157f6     	stp	x22, x21, [sp, #0x10]
    e400: a9024ff4     	stp	x20, x19, [sp, #0x20]
    e404: 910003fd     	mov	x29, sp
    e408: f9400c08     	ldr	x8, [x0, #0x18]
    e40c: aa0303f3     	mov	x19, x3
    e410: f9400d14     	ldr	x20, [x8, #0x18]
    e414: f9404e96     	ldr	x22, [x20, #0x98]
    e418: 39560ac8     	ldrb	w8, [x22, #0x582]
    e41c: 36000448     	tbz	w8, #0x0, 0xe4a4 <syna_sysfs_pwr_store+0xb0>
    e420: aa0203f5     	mov	x21, x2
    e424: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x18c>
		000000000000e424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cc
    e428: 91000021     	add	x1, x1, #0x0
		000000000000e428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cc
    e42c: aa0203e0     	mov	x0, x2
    e430: 528000c2     	mov	w2, #0x6                // =6
    e434: 94000000     	bl	0xe434 <syna_sysfs_pwr_store+0x40>
		000000000000e434:  R_AARCH64_CALL26	strncmp
    e438: 34000300     	cbz	w0, 0xe498 <syna_sysfs_pwr_store+0xa4>
    e43c: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x18c>
		000000000000e43c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26c9
    e440: 91000021     	add	x1, x1, #0x0
		000000000000e440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26c9
    e444: aa1503e0     	mov	x0, x21
    e448: 528000e2     	mov	w2, #0x7                // =7
    e44c: 94000000     	bl	0xe44c <syna_sysfs_pwr_store+0x58>
		000000000000e44c:  R_AARCH64_CALL26	strncmp
    e450: 35000360     	cbnz	w0, 0xe4bc <syna_sysfs_pwr_store+0xc8>
    e454: f94366c8     	ldr	x8, [x22, #0x6c8]
    e458: b4000128     	cbz	x8, 0xe47c <syna_sysfs_pwr_store+0x88>
    e45c: aa1403e0     	mov	x0, x20
    e460: b85fc110     	ldur	w16, [x8, #-0x4]
    e464: 72878171     	movk	w17, #0x3c0b
    e468: 72a54e11     	movk	w17, #0x2a70, lsl #16
    e46c: 6b11021f     	cmp	w16, w17
    e470: 54000040     	b.eq	0xe478 <syna_sysfs_pwr_store+0x84>
    e474: d4304500     	brk	#0x8228
    e478: d63f0100     	blr	x8
    e47c: 93407e73     	sxtw	x19, w19
    e480: aa1303e0     	mov	x0, x19
    e484: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    e488: a94157f6     	ldp	x22, x21, [sp, #0x10]
    e48c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    e490: d50323bf     	autiasp
    e494: d65f03c0     	ret
    e498: f94362c8     	ldr	x8, [x22, #0x6c0]
    e49c: b5fffe08     	cbnz	x8, 0xe45c <syna_sysfs_pwr_store+0x68>
    e4a0: 17fffff7     	b	0xe47c <syna_sysfs_pwr_store+0x88>
    e4a4: 90000000     	adrp	x0, 0xe000 <syna_sysfs_info_show+0x18c>
		000000000000e4a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2154
    e4a8: 91000000     	add	x0, x0, #0x0
		000000000000e4a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2154
    e4ac: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x18c>
		000000000000e4ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3744
    e4b0: 91000021     	add	x1, x1, #0x0
		000000000000e4b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3744
    e4b4: 94000000     	bl	0xe4b4 <syna_sysfs_pwr_store+0xc0>
		000000000000e4b4:  R_AARCH64_CALL26	_printk
    e4b8: 17fffff2     	b	0xe480 <syna_sysfs_pwr_store+0x8c>
    e4bc: 90000000     	adrp	x0, 0xe000 <syna_sysfs_info_show+0x18c>
		000000000000e4bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x884
    e4c0: 91000000     	add	x0, x0, #0x0
		000000000000e4c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x884
    e4c4: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x18c>
		000000000000e4c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3744
    e4c8: 91000021     	add	x1, x1, #0x0
		000000000000e4c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3744
    e4cc: aa1503e2     	mov	x2, x21
    e4d0: 94000000     	bl	0xe4d0 <syna_sysfs_pwr_store+0xdc>
		000000000000e4d0:  R_AARCH64_CALL26	_printk
    e4d4: 928002b3     	mov	x19, #-0x16             // =-22
    e4d8: 17ffffea     	b	0xe480 <syna_sysfs_pwr_store+0x8c>
