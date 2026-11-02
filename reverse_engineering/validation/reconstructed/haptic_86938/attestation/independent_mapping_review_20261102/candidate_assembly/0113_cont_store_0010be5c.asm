
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006204 <cont_store>:
    6204: d503233f     	paciasp
    6208: d10103ff     	sub	sp, sp, #0x40
    620c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6210: f90013f5     	str	x21, [sp, #0x20]
    6214: a9034ff4     	stp	x20, x19, [sp, #0x30]
    6218: 910043fd     	add	x29, sp, #0x10
    621c: d5384109     	mrs	x9, SP_EL0
    6220: aa0203e8     	mov	x8, x2
    6224: 910013e2     	add	x2, sp, #0x4
    6228: f9438929     	ldr	x9, [x9, #0x710]
    622c: 2a1f03e1     	mov	w1, wzr
    6230: aa0303f3     	mov	x19, x3
    6234: f90007e9     	str	x9, [sp, #0x8]
    6238: f9404c15     	ldr	x21, [x0, #0x98]
    623c: aa0803e0     	mov	x0, x8
    6240: b90007ff     	str	wzr, [sp, #0x4]
    6244: 94000000     	bl	0x6244 <cont_store+0x40>
		0000000000006244:  R_AARCH64_CALL26	kstrtouint
    6248: 37f80480     	tbnz	w0, #0x1f, 0x62d8 <cont_store+0xd4>
    624c: f94292a8     	ldr	x8, [x21, #0x520]
    6250: d102a2b4     	sub	x20, x21, #0xa8
    6254: aa1403e0     	mov	x0, x20
    6258: f9401d08     	ldr	x8, [x8, #0x38]
    625c: b85fc110     	ldur	w16, [x8, #-0x4]
    6260: 72810611     	movk	w17, #0x830
    6264: 72b08f51     	movk	w17, #0x847a, lsl #16
    6268: 6b11021f     	cmp	w16, w17
    626c: 54000040     	b.eq	0x6274 <cont_store+0x70>
    6270: d4304500     	brk	#0x8228
    6274: d63f0100     	blr	x8
    6278: b94007e8     	ldr	w8, [sp, #0x4]
    627c: 34000308     	cbz	w8, 0x62dc <cont_store+0xd8>
    6280: f94292a8     	ldr	x8, [x21, #0x520]
    6284: aa1403e0     	mov	x0, x20
    6288: 52800021     	mov	w1, #0x1                // =1
    628c: f9408d08     	ldr	x8, [x8, #0x118]
    6290: b85fc110     	ldur	w16, [x8, #-0x4]
    6294: 728dd2b1     	movk	w17, #0x6e95
    6298: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    629c: 6b11021f     	cmp	w16, w17
    62a0: 54000040     	b.eq	0x62a8 <cont_store+0xa4>
    62a4: d4304500     	brk	#0x8228
    62a8: d63f0100     	blr	x8
    62ac: f94292a8     	ldr	x8, [x21, #0x520]
    62b0: aa1403e0     	mov	x0, x20
    62b4: f9402508     	ldr	x8, [x8, #0x48]
    62b8: b85fc110     	ldur	w16, [x8, #-0x4]
    62bc: 72810611     	movk	w17, #0x830
    62c0: 72b08f51     	movk	w17, #0x847a, lsl #16
    62c4: 6b11021f     	cmp	w16, w17
    62c8: 54000040     	b.eq	0x62d0 <cont_store+0xcc>
    62cc: d4304500     	brk	#0x8228
    62d0: d63f0100     	blr	x8
    62d4: 14000002     	b	0x62dc <cont_store+0xd8>
    62d8: 93407c13     	sxtw	x19, w0
    62dc: d5384108     	mrs	x8, SP_EL0
    62e0: f9438908     	ldr	x8, [x8, #0x710]
    62e4: f94007e9     	ldr	x9, [sp, #0x8]
    62e8: eb09011f     	cmp	x8, x9
    62ec: 54000101     	b.ne	0x630c <cont_store+0x108>
    62f0: aa1303e0     	mov	x0, x19
    62f4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    62f8: f94013f5     	ldr	x21, [sp, #0x20]
    62fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6300: 910103ff     	add	sp, sp, #0x40
    6304: d50323bf     	autiasp
    6308: d65f03c0     	ret
    630c: 94000000     	bl	0x630c <cont_store+0x108>
		000000000000630c:  R_AARCH64_CALL26	__stack_chk_fail
