
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bc98 <syna_input_agent_release>:
    bc98: d503233f     	paciasp
    bc9c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    bca0: f9000bf5     	str	x21, [sp, #0x10]
    bca4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    bca8: 910003fd     	mov	x29, sp
    bcac: b40002e1     	cbz	x1, 0xbd08 <syna_input_agent_release+0x70>
    bcb0: f9401033     	ldr	x19, [x1, #0x20]
    bcb4: b40002b3     	cbz	x19, 0xbd08 <syna_input_agent_release+0x70>
    bcb8: aa0103f4     	mov	x20, x1
    bcbc: 94000000     	bl	0xbcbc <syna_input_agent_release+0x24>
		000000000000bcbc:  R_AARCH64_CALL26	syna_release
    bcc0: f900129f     	str	xzr, [x20, #0x20]
    bcc4: f9400a74     	ldr	x20, [x19, #0x10]
    bcc8: b4000394     	cbz	x20, 0xbd38 <syna_input_agent_release+0xa0>
    bccc: 91004288     	add	x8, x20, #0x10
    bcd0: 14000010     	b	0xbd10 <syna_input_agent_release+0x78>
    bcd4: 12800009     	mov	w9, #-0x1               // =-1
    bcd8: b8690109     	ldaddl	w9, w9, [x8]
    bcdc: 7100053f     	cmp	w9, #0x1
    bce0: 54000281     	b.ne	0xbd30 <syna_input_agent_release+0x98>
    bce4: d50339bf     	dmb	ishld
    bce8: 2a0003f5     	mov	w21, w0
    bcec: f9400688     	ldr	x8, [x20, #0x8]
    bcf0: aa0803e0     	mov	x0, x8
    bcf4: 94000000     	bl	0xbcf4 <syna_input_agent_release+0x5c>
		000000000000bcf4:  R_AARCH64_CALL26	kfree
    bcf8: aa1403e0     	mov	x0, x20
    bcfc: 94000000     	bl	0xbcfc <syna_input_agent_release+0x64>
		000000000000bcfc:  R_AARCH64_CALL26	kfree
    bd00: 2a1503e0     	mov	w0, w21
    bd04: 1400000d     	b	0xbd38 <syna_input_agent_release+0xa0>
    bd08: 2a1f03e0     	mov	w0, wzr
    bd0c: 1400000f     	b	0xbd48 <syna_input_agent_release+0xb0>
    bd10: 5280002a     	mov	w10, #0x1               // =1
    bd14: f9800111     	prfm	pstl1strm, [x8]
    bd18: 885f7d09     	ldxr	w9, [x8]
    bd1c: 4b0a012b     	sub	w11, w9, w10
    bd20: 880cfd0b     	stlxr	w12, w11, [x8]
    bd24: 35ffffac     	cbnz	w12, 0xbd18 <syna_input_agent_release+0x80>
    bd28: 7100053f     	cmp	w9, #0x1
    bd2c: 54fffdc0     	b.eq	0xbce4 <syna_input_agent_release+0x4c>
    bd30: 7100013f     	cmp	w9, #0x0
    bd34: 5400014d     	b.le	0xbd5c <syna_input_agent_release+0xc4>
    bd38: 2a0003f4     	mov	w20, w0
    bd3c: aa1303e0     	mov	x0, x19
    bd40: 94000000     	bl	0xbd40 <syna_input_agent_release+0xa8>
		000000000000bd40:  R_AARCH64_CALL26	kfree
    bd44: 2a1403e0     	mov	w0, w20
    bd48: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    bd4c: f9400bf5     	ldr	x21, [sp, #0x10]
    bd50: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    bd54: d50323bf     	autiasp
    bd58: d65f03c0     	ret
    bd5c: 2a0003f4     	mov	w20, w0
    bd60: aa0803e0     	mov	x0, x8
    bd64: 52800061     	mov	w1, #0x3                // =3
    bd68: 94000000     	bl	0xbd68 <syna_input_agent_release+0xd0>
		000000000000bd68:  R_AARCH64_CALL26	refcount_warn_saturate
    bd6c: 2a1403e0     	mov	w0, w20
    bd70: 17fffff2     	b	0xbd38 <syna_input_agent_release+0xa0>
