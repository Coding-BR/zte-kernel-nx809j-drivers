
/input/aw86320.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ff8 <speed_store>:
    1ff8: d503233f     	paciasp
    1ffc: d10143ff     	sub	sp, sp, #0x50
    2000: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2004: f9001bf5     	str	x21, [sp, #0x30]
    2008: a9044ff4     	stp	x20, x19, [sp, #0x40]
    200c: 910083fd     	add	x29, sp, #0x20
    2010: d5384108     	mrs	x8, SP_EL0
    2014: aa0103f4     	mov	x20, x1
    2018: 910023e0     	add	x0, sp, #0x8
    201c: f9438908     	ldr	x8, [x8, #0x710]
    2020: f100245f     	cmp	x2, #0x9
    2024: f81f83a8     	stur	x8, [x29, #-0x8]
    2028: 90000008     	adrp	x8, 0x2000 <speed_store+0x8>
		0000000000002028:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_bss_base
    202c: f9400115     	ldr	x21, [x8]
		000000000000202c:  R_AARCH64_LDST64_ABS_LO12_NC	aw86320_bss_base
    2030: 52800128     	mov	w8, #0x9                // =9
    2034: b90007ff     	str	wzr, [sp, #0x4]
    2038: 9a883053     	csel	x19, x2, x8, lo
    203c: 2a1f03e2     	mov	w2, wzr
    2040: 790023ff     	strh	wzr, [sp, #0x10]
    2044: aa1303e1     	mov	x1, x19
    2048: f90007ff     	str	xzr, [sp, #0x8]
    204c: 94000000     	bl	0x204c <speed_store+0x54>
		000000000000204c:  R_AARCH64_CALL26	__check_object_size
    2050: 910023e0     	add	x0, sp, #0x8
    2054: aa1403e1     	mov	x1, x20
    2058: aa1303e2     	mov	x2, x19
    205c: 97ffff70     	bl	0x1e1c <_inline_copy_from_user>
		000000000000205c:  R_AARCH64_CALL26	_inline_copy_from_user
    2060: 340001c0     	cbz	w0, 0x2098 <speed_store+0xa0>
    2064: 928002b3     	mov	x19, #-0x16             // =-22
    2068: d5384108     	mrs	x8, SP_EL0
    206c: f9438908     	ldr	x8, [x8, #0x710]
    2070: f85f83a9     	ldur	x9, [x29, #-0x8]
    2074: eb09011f     	cmp	x8, x9
    2078: 54000921     	b.ne	0x219c <speed_store+0x1a4>
    207c: aa1303e0     	mov	x0, x19
    2080: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    2084: f9401bf5     	ldr	x21, [sp, #0x30]
    2088: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    208c: 910143ff     	add	sp, sp, #0x50
    2090: d50323bf     	autiasp
    2094: d65f03c0     	ret
    2098: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		0000000000002098:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x928
    209c: 91000000     	add	x0, x0, #0x0
		000000000000209c:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x928
    20a0: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		00000000000020a0:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    20a4: 91000021     	add	x1, x1, #0x0
		00000000000020a4:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    20a8: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		00000000000020a8:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x327
    20ac: 91000063     	add	x3, x3, #0x0
		00000000000020ac:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x327
    20b0: 910023e4     	add	x4, sp, #0x8
    20b4: 52806762     	mov	w2, #0x33b              // =827
    20b8: 94000000     	bl	0x20b8 <speed_store+0xc0>
		00000000000020b8:  R_AARCH64_CALL26	_printk
    20bc: b9400be8     	ldr	w8, [sp, #0x8]
    20c0: 528d2d0a     	mov	w10, #0x6968            // =26984
    20c4: 79401be9     	ldrh	w9, [sp, #0xc]
    20c8: 72ad0cea     	movk	w10, #0x6867, lsl #16
    20cc: 6b0a011f     	cmp	w8, w10
    20d0: 7a4a0920     	ccmp	w9, #0xa, #0x0, eq
    20d4: 54000320     	b.eq	0x2138 <speed_store+0x140>
    20d8: b9400be8     	ldr	w8, [sp, #0x8]
    20dc: 528d2da9     	mov	w9, #0x696d             // =26989
    20e0: 394033ea     	ldrb	w10, [sp, #0xc]
    20e4: 72a14c89     	movk	w9, #0xa64, lsl #16
    20e8: 4a090108     	eor	w8, w8, w9
    20ec: 2a0a0108     	orr	w8, w8, w10
    20f0: 340002a8     	cbz	w8, 0x2144 <speed_store+0x14c>
    20f4: b9400be8     	ldr	w8, [sp, #0x8]
    20f8: 528ded89     	mov	w9, #0x6f6c             // =28524
    20fc: 394033ea     	ldrb	w10, [sp, #0xc]
    2100: 72a14ee9     	movk	w9, #0xa77, lsl #16
    2104: 4a090108     	eor	w8, w8, w9
    2108: 2a0a0108     	orr	w8, w8, w10
    210c: 34000228     	cbz	w8, 0x2150 <speed_store+0x158>
    2110: 910023e0     	add	x0, sp, #0x8
    2114: 910013e2     	add	x2, sp, #0x4
    2118: 2a1f03e1     	mov	w1, wzr
    211c: 94000000     	bl	0x211c <speed_store+0x124>
		000000000000211c:  R_AARCH64_CALL26	kstrtouint
    2120: 35fffa20     	cbnz	w0, 0x2064 <speed_store+0x6c>
    2124: b94007e4     	ldr	w4, [sp, #0x4]
    2128: 52800b48     	mov	w8, #0x5a               // =90
    212c: 7101689f     	cmp	w4, #0x5a
    2130: 1a883085     	csel	w5, w4, w8, lo
    2134: 1400000a     	b	0x215c <speed_store+0x164>
    2138: 52800a05     	mov	w5, #0x50               // =80
    213c: 52800a04     	mov	w4, #0x50               // =80
    2140: 14000006     	b	0x2158 <speed_store+0x160>
    2144: 528008c5     	mov	w5, #0x46               // =70
    2148: 528008c4     	mov	w4, #0x46               // =70
    214c: 14000003     	b	0x2158 <speed_store+0x160>
    2150: 52800785     	mov	w5, #0x3c               // =60
    2154: 52800784     	mov	w4, #0x3c               // =60
    2158: b90007e5     	str	w5, [sp, #0x4]
    215c: 90000000     	adrp	x0, 0x2000 <speed_store+0x8>
		000000000000215c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x1d5
    2160: 91000000     	add	x0, x0, #0x0
		0000000000002160:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x1d5
    2164: 90000001     	adrp	x1, 0x2000 <speed_store+0x8>
		0000000000002164:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0xb9a
    2168: 91000021     	add	x1, x1, #0x0
		0000000000002168:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0xb9a
    216c: 90000003     	adrp	x3, 0x2000 <speed_store+0x8>
		000000000000216c:  R_AARCH64_ADR_PREL_PG_HI21	aw86320_rodata_str_base+0x327
    2170: 91000063     	add	x3, x3, #0x0
		0000000000002170:  R_AARCH64_ADD_ABS_LO12_NC	aw86320_rodata_str_base+0x327
    2174: 52806a22     	mov	w2, #0x351              // =849
    2178: b9000aa5     	str	w5, [x21, #0x8]
    217c: 94000000     	bl	0x217c <speed_store+0x184>
		000000000000217c:  R_AARCH64_CALL26	_printk
    2180: b94012a8     	ldr	w8, [x21, #0x10]
    2184: 7100051f     	cmp	w8, #0x1
    2188: 54fff70b     	b.lt	0x2068 <speed_store+0x70>
    218c: 294102a1     	ldp	w1, w0, [x21, #0x8]
    2190: 79402aa2     	ldrh	w2, [x21, #0x14]
    2194: 94000000     	bl	0x2194 <speed_store+0x19c>
		0000000000002194:  R_AARCH64_CALL26	aw86320_play_atsin0
    2198: 17ffffb4     	b	0x2068 <speed_store+0x70>
    219c: 94000000     	bl	0x219c <speed_store+0x1a4>
		000000000000219c:  R_AARCH64_CALL26	__stack_chk_fail
