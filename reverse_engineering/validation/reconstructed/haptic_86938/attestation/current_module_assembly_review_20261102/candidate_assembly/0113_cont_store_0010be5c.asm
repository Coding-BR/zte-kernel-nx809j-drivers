
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000061d4 <cont_store>:
    61d4: d503233f     	paciasp
    61d8: d10103ff     	sub	sp, sp, #0x40
    61dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    61e0: f90013f5     	str	x21, [sp, #0x20]
    61e4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    61e8: 910043fd     	add	x29, sp, #0x10
    61ec: d5384109     	mrs	x9, SP_EL0
    61f0: aa0203e8     	mov	x8, x2
    61f4: 910013e2     	add	x2, sp, #0x4
    61f8: f9438929     	ldr	x9, [x9, #0x710]
    61fc: 2a1f03e1     	mov	w1, wzr
    6200: aa0303f3     	mov	x19, x3
    6204: f90007e9     	str	x9, [sp, #0x8]
    6208: f9404c15     	ldr	x21, [x0, #0x98]
    620c: aa0803e0     	mov	x0, x8
    6210: b90007ff     	str	wzr, [sp, #0x4]
    6214: 94000000     	bl	0x6214 <cont_store+0x40>
		0000000000006214:  R_AARCH64_CALL26	kstrtouint
    6218: 37f80480     	tbnz	w0, #0x1f, 0x62a8 <cont_store+0xd4>
    621c: f94292a8     	ldr	x8, [x21, #0x520]
    6220: d102a2b4     	sub	x20, x21, #0xa8
    6224: aa1403e0     	mov	x0, x20
    6228: f9401d08     	ldr	x8, [x8, #0x38]
    622c: b85fc110     	ldur	w16, [x8, #-0x4]
    6230: 72810611     	movk	w17, #0x830
    6234: 72b08f51     	movk	w17, #0x847a, lsl #16
    6238: 6b11021f     	cmp	w16, w17
    623c: 54000040     	b.eq	0x6244 <cont_store+0x70>
    6240: d4304500     	brk	#0x8228
    6244: d63f0100     	blr	x8
    6248: b94007e8     	ldr	w8, [sp, #0x4]
    624c: 34000308     	cbz	w8, 0x62ac <cont_store+0xd8>
    6250: f94292a8     	ldr	x8, [x21, #0x520]
    6254: aa1403e0     	mov	x0, x20
    6258: 52800021     	mov	w1, #0x1                // =1
    625c: f9408d08     	ldr	x8, [x8, #0x118]
    6260: b85fc110     	ldur	w16, [x8, #-0x4]
    6264: 728dd2b1     	movk	w17, #0x6e95
    6268: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    626c: 6b11021f     	cmp	w16, w17
    6270: 54000040     	b.eq	0x6278 <cont_store+0xa4>
    6274: d4304500     	brk	#0x8228
    6278: d63f0100     	blr	x8
    627c: f94292a8     	ldr	x8, [x21, #0x520]
    6280: aa1403e0     	mov	x0, x20
    6284: f9402508     	ldr	x8, [x8, #0x48]
    6288: b85fc110     	ldur	w16, [x8, #-0x4]
    628c: 72810611     	movk	w17, #0x830
    6290: 72b08f51     	movk	w17, #0x847a, lsl #16
    6294: 6b11021f     	cmp	w16, w17
    6298: 54000040     	b.eq	0x62a0 <cont_store+0xcc>
    629c: d4304500     	brk	#0x8228
    62a0: d63f0100     	blr	x8
    62a4: 14000002     	b	0x62ac <cont_store+0xd8>
    62a8: 93407c13     	sxtw	x19, w0
    62ac: d5384108     	mrs	x8, SP_EL0
    62b0: f9438908     	ldr	x8, [x8, #0x710]
    62b4: f94007e9     	ldr	x9, [sp, #0x8]
    62b8: eb09011f     	cmp	x8, x9
    62bc: 54000101     	b.ne	0x62dc <cont_store+0x108>
    62c0: aa1303e0     	mov	x0, x19
    62c4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    62c8: f94013f5     	ldr	x21, [sp, #0x20]
    62cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    62d0: 910103ff     	add	sp, sp, #0x40
    62d4: d50323bf     	autiasp
    62d8: d65f03c0     	ret
    62dc: 94000000     	bl	0x62dc <cont_store+0x108>
		00000000000062dc:  R_AARCH64_CALL26	__stack_chk_fail
