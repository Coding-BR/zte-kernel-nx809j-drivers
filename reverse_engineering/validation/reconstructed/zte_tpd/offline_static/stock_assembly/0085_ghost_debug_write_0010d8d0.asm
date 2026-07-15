
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007048 <ghost_debug_write>:
    7048: d503233f     	paciasp
    704c: d103c3ff     	sub	sp, sp, #0xf0
    7050: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
    7054: f90063f7     	str	x23, [sp, #0xc0]
    7058: a90d57f6     	stp	x22, x21, [sp, #0xd0]
    705c: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
    7060: 9102c3fd     	add	x29, sp, #0xb0
    7064: d5384108     	mrs	x8, SP_EL0
    7068: 910103f6     	add	x22, sp, #0x40
    706c: f9438908     	ldr	x8, [x8, #0x710]
    7070: f101905f     	cmp	x2, #0x64
    7074: f81f83a8     	stur	x8, [x29, #-0x8]
    7078: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007078:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    707c: f9400115     	ldr	x21, [x8]
		000000000000707c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7080: 52800c88     	mov	w8, #0x64               // =100
    7084: b900a3ff     	str	wzr, [sp, #0xa0]
    7088: 9a883053     	csel	x19, x2, x8, lo
    708c: a9057edf     	stp	xzr, xzr, [x22, #0x50]
    7090: a9087fff     	stp	xzr, xzr, [sp, #0x80]
    7094: a9077fff     	stp	xzr, xzr, [sp, #0x70]
    7098: a9067fff     	stp	xzr, xzr, [sp, #0x60]
    709c: a9057fff     	stp	xzr, xzr, [sp, #0x50]
    70a0: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    70a4: b9000fff     	str	wzr, [sp, #0xc]
    70a8: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    70ac: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    70b0: f9000fff     	str	xzr, [sp, #0x18]
    70b4: b4000161     	cbz	x1, 0x70e0 <ghost_debug_write+0x98>
    70b8: aa0103f4     	mov	x20, x1
    70bc: 910103e0     	add	x0, sp, #0x40
    70c0: aa1303e1     	mov	x1, x19
    70c4: 2a1f03e2     	mov	w2, wzr
    70c8: 94000000     	bl	0x70c8 <ghost_debug_write+0x80>
		00000000000070c8:  R_AARCH64_CALL26	__check_object_size
    70cc: 910103e0     	add	x0, sp, #0x40
    70d0: aa1403e1     	mov	x1, x20
    70d4: aa1303e2     	mov	x2, x19
    70d8: 97fff31a     	bl	0x3d40 <_inline_copy_from_user>
    70dc: b5000860     	cbnz	x0, 0x71e8 <ghost_debug_write+0x1a0>
    70e0: 90000001     	adrp	x1, 0x7000 <ghost_debug_read+0x30c>
		00000000000070e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1d
    70e4: 91000021     	add	x1, x1, #0x0
		00000000000070e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1d
    70e8: 910043e0     	add	x0, sp, #0x10
    70ec: f9000bf6     	str	x22, [sp, #0x10]
    70f0: 94000000     	bl	0x70f0 <ghost_debug_write+0xa8>
		00000000000070f0:  R_AARCH64_CALL26	strsep
    70f4: b40003c0     	cbz	x0, 0x716c <ghost_debug_write+0x124>
    70f8: 2a1f03f6     	mov	w22, wzr
    70fc: 910063f7     	add	x23, sp, #0x18
    7100: 90000014     	adrp	x20, 0x7000 <ghost_debug_read+0x30c>
		0000000000007100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1d
    7104: 91000294     	add	x20, x20, #0x0
		0000000000007104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1d
    7108: 910033e2     	add	x2, sp, #0xc
    710c: 52800141     	mov	w1, #0xa                // =10
    7110: 94000000     	bl	0x7110 <ghost_debug_write+0xc8>
		0000000000007110:  R_AARCH64_CALL26	kstrtouint
    7114: 350000c0     	cbnz	w0, 0x712c <ghost_debug_write+0xe4>
    7118: 71004edf     	cmp	w22, #0x13
    711c: 54000708     	b.hi	0x71fc <ghost_debug_write+0x1b4>
    7120: b9400fe8     	ldr	w8, [sp, #0xc]
    7124: 78365ae8     	strh	w8, [x23, w22, uxtw #1]
    7128: 110006d6     	add	w22, w22, #0x1
    712c: 910043e0     	add	x0, sp, #0x10
    7130: aa1403e1     	mov	x1, x20
    7134: 94000000     	bl	0x7134 <ghost_debug_write+0xec>
		0000000000007134:  R_AARCH64_CALL26	strsep
    7138: b4000060     	cbz	x0, 0x7144 <ghost_debug_write+0xfc>
    713c: 71002adf     	cmp	w22, #0xa
    7140: 54fffe43     	b.lo	0x7108 <ghost_debug_write+0xc0>
    7144: 794047eb     	ldrh	w11, [sp, #0x22]
    7148: 79404bea     	ldrh	w10, [sp, #0x24]
    714c: 79404fe9     	ldrh	w9, [sp, #0x26]
    7150: 794053e8     	ldrh	w8, [sp, #0x28]
    7154: 394083ec     	ldrb	w12, [sp, #0x20]
    7158: 39407bed     	ldrb	w13, [sp, #0x1e]
    715c: 394073ee     	ldrb	w14, [sp, #0x1c]
    7160: 39406bef     	ldrb	w15, [sp, #0x1a]
    7164: 394063f0     	ldrb	w16, [sp, #0x18]
    7168: 1400000a     	b	0x7190 <ghost_debug_write+0x148>
    716c: 2a1f03e8     	mov	w8, wzr
    7170: 2a1f03e9     	mov	w9, wzr
    7174: 2a1f03ea     	mov	w10, wzr
    7178: 2a1f03eb     	mov	w11, wzr
    717c: 2a1f03ec     	mov	w12, wzr
    7180: 2a1f03ed     	mov	w13, wzr
    7184: 2a1f03ee     	mov	w14, wzr
    7188: 2a1f03ef     	mov	w15, wzr
    718c: 2a1f03f0     	mov	w16, wzr
    7190: 391246b0     	strb	w16, [x21, #0x491]
    7194: 39124aaf     	strb	w15, [x21, #0x492]
    7198: 39124eae     	strb	w14, [x21, #0x493]
    719c: 391252ad     	strb	w13, [x21, #0x494]
    71a0: 391256ac     	strb	w12, [x21, #0x495]
    71a4: b9049aab     	str	w11, [x21, #0x498]
    71a8: b9049eaa     	str	w10, [x21, #0x49c]
    71ac: b904a2a9     	str	w9, [x21, #0x4a0]
    71b0: b904a6a8     	str	w8, [x21, #0x4a4]
    71b4: d5384108     	mrs	x8, SP_EL0
    71b8: f9438908     	ldr	x8, [x8, #0x710]
    71bc: f85f83a9     	ldur	x9, [x29, #-0x8]
    71c0: eb09011f     	cmp	x8, x9
    71c4: 540001e1     	b.ne	0x7200 <ghost_debug_write+0x1b8>
    71c8: aa1303e0     	mov	x0, x19
    71cc: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
    71d0: f94063f7     	ldr	x23, [sp, #0xc0]
    71d4: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
    71d8: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
    71dc: 9103c3ff     	add	sp, sp, #0xf0
    71e0: d50323bf     	autiasp
    71e4: d65f03c0     	ret
    71e8: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		00000000000071e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x696
    71ec: 91000000     	add	x0, x0, #0x0
		00000000000071ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x696
    71f0: 94000000     	bl	0x71f0 <ghost_debug_write+0x1a8>
		00000000000071f0:  R_AARCH64_CALL26	_printk
    71f4: 928002b3     	mov	x19, #-0x16             // =-22
    71f8: 17ffffef     	b	0x71b4 <ghost_debug_write+0x16c>
    71fc: d4200020     	brk	#0x1
    7200: 94000000     	bl	0x7200 <ghost_debug_write+0x1b8>
		0000000000007200:  R_AARCH64_CALL26	__stack_chk_fail
