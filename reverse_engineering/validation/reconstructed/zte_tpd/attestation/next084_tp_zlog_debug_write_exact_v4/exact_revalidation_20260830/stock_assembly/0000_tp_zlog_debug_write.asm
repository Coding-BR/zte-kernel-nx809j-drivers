
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006c20 <tp_zlog_debug_write>:
    6c20: d503233f     	paciasp
    6c24: d10103ff     	sub	sp, sp, #0x40
    6c28: a9027bfd     	stp	x29, x30, [sp, #0x20]
    6c2c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    6c30: 910083fd     	add	x29, sp, #0x20
    6c34: d5384108     	mrs	x8, SP_EL0
    6c38: aa0103f4     	mov	x20, x1
    6c3c: 910023e0     	add	x0, sp, #0x8
    6c40: f9438908     	ldr	x8, [x8, #0x710]
    6c44: f100245f     	cmp	x2, #0x9
    6c48: f81f83a8     	stur	x8, [x29, #-0x8]
    6c4c: 52800128     	mov	w8, #0x9                // =9
    6c50: 9a883053     	csel	x19, x2, x8, lo
    6c54: 2a1f03e2     	mov	w2, wzr
    6c58: b90007ff     	str	wzr, [sp, #0x4]
    6c5c: aa1303e1     	mov	x1, x19
    6c60: 790023ff     	strh	wzr, [sp, #0x10]
    6c64: f90007ff     	str	xzr, [sp, #0x8]
    6c68: 94000000     	bl	0x6c68 <tp_zlog_debug_write+0x48>
		0000000000006c68:  R_AARCH64_CALL26	__check_object_size
    6c6c: 910023e0     	add	x0, sp, #0x8
    6c70: aa1403e1     	mov	x1, x20
    6c74: aa1303e2     	mov	x2, x19
    6c78: 97fff432     	bl	0x3d40 <_inline_copy_from_user>
    6c7c: 350000c0     	cbnz	w0, 0x6c94 <tp_zlog_debug_write+0x74>
    6c80: 910023e0     	add	x0, sp, #0x8
    6c84: 910013e2     	add	x2, sp, #0x4
    6c88: 2a1f03e1     	mov	w1, wzr
    6c8c: 94000000     	bl	0x6c8c <tp_zlog_debug_write+0x6c>
		0000000000006c8c:  R_AARCH64_CALL26	kstrtouint
    6c90: 340001a0     	cbz	w0, 0x6cc4 <tp_zlog_debug_write+0xa4>
    6c94: 928002b3     	mov	x19, #-0x16             // =-22
    6c98: d5384108     	mrs	x8, SP_EL0
    6c9c: f9438908     	ldr	x8, [x8, #0x710]
    6ca0: f85f83a9     	ldur	x9, [x29, #-0x8]
    6ca4: eb09011f     	cmp	x8, x9
    6ca8: 54000221     	b.ne	0x6cec <tp_zlog_debug_write+0xcc>
    6cac: aa1303e0     	mov	x0, x19
    6cb0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    6cb4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    6cb8: 910103ff     	add	sp, sp, #0x40
    6cbc: d50323bf     	autiasp
    6cc0: d65f03c0     	ret
    6cc4: b94007e0     	ldr	w0, [sp, #0x4]
    6cc8: 71003c1f     	cmp	w0, #0xf
    6ccc: 54fffe68     	b.hi	0x6c98 <tp_zlog_debug_write+0x78>
    6cd0: 52800028     	mov	w8, #0x1                // =1
    6cd4: 529dccc9     	mov	w9, #0xee66             // =61030
    6cd8: 1ac02108     	lsl	w8, w8, w0
    6cdc: 6a09011f     	tst	w8, w9
    6ce0: 54fffdc0     	b.eq	0x6c98 <tp_zlog_debug_write+0x78>
    6ce4: 94000000     	bl	0x6ce4 <tp_zlog_debug_write+0xc4>
		0000000000006ce4:  R_AARCH64_CALL26	tpd_zlog_record_notify
    6ce8: 17ffffec     	b	0x6c98 <tp_zlog_debug_write+0x78>
    6cec: 94000000     	bl	0x6cec <tp_zlog_debug_write+0xcc>
		0000000000006cec:  R_AARCH64_CALL26	__stack_chk_fail
