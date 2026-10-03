
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005c7c <tp_game_partition_read>:
    5c7c: d503233f     	paciasp
    5c80: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    5c84: f9000bfc     	str	x28, [sp, #0x10]
    5c88: a90257f6     	stp	x22, x21, [sp, #0x20]
    5c8c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    5c90: 910003fd     	mov	x29, sp
    5c94: d11043ff     	sub	sp, sp, #0x410
    5c98: d5384108     	mrs	x8, SP_EL0
    5c9c: aa0203f4     	mov	x20, x2
    5ca0: aa0103f5     	mov	x21, x1
    5ca4: f9438908     	ldr	x8, [x8, #0x710]
    5ca8: 910023e0     	add	x0, sp, #0x8
    5cac: 2a1f03e1     	mov	w1, wzr
    5cb0: 52808002     	mov	w2, #0x400              // =1024
    5cb4: aa0303f3     	mov	x19, x3
    5cb8: f81f83a8     	stur	x8, [x29, #-0x8]
    5cbc: 94000000     	bl	0x5cbc <tp_game_partition_read+0x40>
		0000000000005cbc:  R_AARCH64_CALL26	memset
    5cc0: f9400268     	ldr	x8, [x19]
    5cc4: b40001c8     	cbz	x8, 0x5cfc <tp_game_partition_read+0x80>
    5cc8: aa1f03e0     	mov	x0, xzr
    5ccc: d5384108     	mrs	x8, SP_EL0
    5cd0: f9438908     	ldr	x8, [x8, #0x710]
    5cd4: f85f83a9     	ldur	x9, [x29, #-0x8]
    5cd8: eb09011f     	cmp	x8, x9
    5cdc: 540003a1     	b.ne	0x5d50 <tp_game_partition_read+0xd4>
    5ce0: 911043ff     	add	sp, sp, #0x410
    5ce4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    5ce8: f9400bfc     	ldr	x28, [sp, #0x10]
    5cec: a94257f6     	ldp	x22, x21, [sp, #0x20]
    5cf0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    5cf4: d50323bf     	autiasp
    5cf8: d65f03c0     	ret
    5cfc: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005cfc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5d00: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa52a
    5d04: 91000000     	add	x0, x0, #0x0
		0000000000005d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa52a
    5d08: f9400116     	ldr	x22, [x8]
		0000000000005d08:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5d0c: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e35
    5d10: 91000021     	add	x1, x1, #0x0
		0000000000005d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e35
    5d14: 910106c2     	add	x2, x22, #0x41
    5d18: 94000000     	bl	0x5d18 <tp_game_partition_read+0x9c>
		0000000000005d18:  R_AARCH64_CALL26	_printk
    5d1c: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e59
    5d20: 91000042     	add	x2, x2, #0x0
		0000000000005d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e59
    5d24: 910023e0     	add	x0, sp, #0x8
    5d28: 910106c3     	add	x3, x22, #0x41
    5d2c: 52808001     	mov	w1, #0x400              // =1024
    5d30: 94000000     	bl	0x5d30 <tp_game_partition_read+0xb4>
		0000000000005d30:  R_AARCH64_CALL26	snprintf
    5d34: 93407c04     	sxtw	x4, w0
    5d38: 910023e3     	add	x3, sp, #0x8
    5d3c: aa1403e1     	mov	x1, x20
    5d40: aa1503e0     	mov	x0, x21
    5d44: aa1303e2     	mov	x2, x19
    5d48: 94000000     	bl	0x5d48 <tp_game_partition_read+0xcc>
		0000000000005d48:  R_AARCH64_CALL26	simple_read_from_buffer
    5d4c: 17ffffe0     	b	0x5ccc <tp_game_partition_read+0x50>
    5d50: 94000000     	bl	0x5d50 <tp_game_partition_read+0xd4>
		0000000000005d50:  R_AARCH64_CALL26	__stack_chk_fail
