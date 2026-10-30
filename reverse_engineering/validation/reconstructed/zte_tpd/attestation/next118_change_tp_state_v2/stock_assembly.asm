
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009a98 <change_tp_state>:
    9a98: d503233f     	paciasp
    9a9c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9aa0: a90157f6     	stp	x22, x21, [sp, #0x10]
    9aa4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9aa8: 910003fd     	mov	x29, sp
    9aac: 90000015     	adrp	x21, 0x9000 <tp_ghost_check+0x488>
		0000000000009aac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9ab0: 2a0003f3     	mov	w19, w0
    9ab4: f94002b4     	ldr	x20, [x21]
		0000000000009ab4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9ab8: 91330280     	add	x0, x20, #0xcc0
    9abc: 94000000     	bl	0x9abc <change_tp_state+0x24>
		0000000000009abc:  R_AARCH64_CALL26	mutex_lock
    9ac0: 90000016     	adrp	x22, 0x9000 <tp_ghost_check+0x488>
		0000000000009ac0:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    9ac4: 71000e7f     	cmp	w19, #0x3
    9ac8: b94002c8     	ldr	w8, [x22]
		0000000000009ac8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    9acc: 54000a08     	b.hi	0x9c0c <change_tp_state+0x174>
    9ad0: 71000d1f     	cmp	w8, #0x3
    9ad4: 540009c2     	b.hs	0x9c0c <change_tp_state+0x174>
    9ad8: 90000009     	adrp	x9, 0x9000 <tp_ghost_check+0x488>
		0000000000009ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe78
    9adc: 91000129     	add	x9, x9, #0x0
		0000000000009adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe78
    9ae0: 9000000a     	adrp	x10, 0x9000 <tp_ghost_check+0x488>
		0000000000009ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xe60
    9ae4: 9100014a     	add	x10, x10, #0x0
		0000000000009ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xe60
    9ae8: f8735922     	ldr	x2, [x9, w19, uxtw #3]
    9aec: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbfef
    9af0: 91000000     	add	x0, x0, #0x0
		0000000000009af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbfef
    9af4: f8685941     	ldr	x1, [x10, w8, uxtw #3]
    9af8: 94000000     	bl	0x9af8 <change_tp_state+0x60>
		0000000000009af8:  R_AARCH64_CALL26	_printk
    9afc: b94002c8     	ldr	w8, [x22]
		0000000000009afc:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    9b00: 7100091f     	cmp	w8, #0x2
    9b04: 54000120     	b.eq	0x9b28 <change_tp_state+0x90>
    9b08: 7100051f     	cmp	w8, #0x1
    9b0c: 54000280     	b.eq	0x9b5c <change_tp_state+0xc4>
    9b10: 35000668     	cbnz	w8, 0x9bdc <change_tp_state+0x144>
    9b14: 71000e7f     	cmp	w19, #0x3
    9b18: 54000120     	b.eq	0x9b3c <change_tp_state+0xa4>
    9b1c: 7100067f     	cmp	w19, #0x1
    9b20: 54000380     	b.eq	0x9b90 <change_tp_state+0xf8>
    9b24: 1400002b     	b	0x9bd0 <change_tp_state+0x138>
    9b28: 34000473     	cbz	w19, 0x9bb4 <change_tp_state+0x11c>
    9b2c: 71000a7f     	cmp	w19, #0x2
    9b30: 540001e0     	b.eq	0x9b6c <change_tp_state+0xd4>
    9b34: 71000e7f     	cmp	w19, #0x3
    9b38: 540004c1     	b.ne	0x9bd0 <change_tp_state+0x138>
    9b3c: 52800028     	mov	w8, #0x1                // =1
    9b40: 90000009     	adrp	x9, 0x9000 <tp_ghost_check+0x488>
		0000000000009b40:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
    9b44: 91000129     	add	x9, x9, #0x0
		0000000000009b44:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x8
    9b48: b90002c8     	str	w8, [x22]
		0000000000009b48:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    9b4c: f94002a8     	ldr	x8, [x21]
		0000000000009b4c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9b50: b900013f     	str	wzr, [x9]
    9b54: b900793f     	str	wzr, [x9, #0x78]
    9b58: 14000013     	b	0x9ba4 <change_tp_state+0x10c>
    9b5c: 7100067f     	cmp	w19, #0x1
    9b60: 54000180     	b.eq	0x9b90 <change_tp_state+0xf8>
    9b64: 71000a7f     	cmp	w19, #0x2
    9b68: 54000341     	b.ne	0x9bd0 <change_tp_state+0x138>
    9b6c: b90002df     	str	wzr, [x22]
		0000000000009b6c:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    9b70: 52800400     	mov	w0, #0x20               // =32
    9b74: f94002a8     	ldr	x8, [x21]
		0000000000009b74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9b78: f9425901     	ldr	x1, [x8, #0x4b0]
    9b7c: 91270102     	add	x2, x8, #0x9c0
    9b80: 94000000     	bl	0x9b80 <change_tp_state+0xe8>
		0000000000009b80:  R_AARCH64_CALL26	queue_work_on
    9b84: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009b84:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
    9b88: b900011f     	str	wzr, [x8]
		0000000000009b88:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
    9b8c: 1400000a     	b	0x9bb4 <change_tp_state+0x11c>
    9b90: 52800048     	mov	w8, #0x2                // =2
    9b94: 90000009     	adrp	x9, 0x9000 <tp_ghost_check+0x488>
		0000000000009b94:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
    9b98: b90002c8     	str	w8, [x22]
		0000000000009b98:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    9b9c: f94002a8     	ldr	x8, [x21]
		0000000000009b9c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9ba0: b900013f     	str	wzr, [x9]
		0000000000009ba0:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
    9ba4: f9425901     	ldr	x1, [x8, #0x4b0]
    9ba8: 91268102     	add	x2, x8, #0x9a0
    9bac: 52800400     	mov	w0, #0x20               // =32
    9bb0: 94000000     	bl	0x9bb0 <change_tp_state+0x118>
		0000000000009bb0:  R_AARCH64_CALL26	queue_work_on
    9bb4: 91330280     	add	x0, x20, #0xcc0
    9bb8: 94000000     	bl	0x9bb8 <change_tp_state+0x120>
		0000000000009bb8:  R_AARCH64_CALL26	mutex_unlock
    9bbc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9bc0: a94157f6     	ldp	x22, x21, [sp, #0x10]
    9bc4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9bc8: d50323bf     	autiasp
    9bcc: d65f03c0     	ret
    9bd0: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x806c
    9bd4: 91000000     	add	x0, x0, #0x0
		0000000000009bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x806c
    9bd8: 1400000b     	b	0x9c04 <change_tp_state+0x16c>
    9bdc: b90002df     	str	wzr, [x22]
		0000000000009bdc:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    9be0: 52800400     	mov	w0, #0x20               // =32
    9be4: f94002a8     	ldr	x8, [x21]
		0000000000009be4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9be8: f9425901     	ldr	x1, [x8, #0x4b0]
    9bec: 91270102     	add	x2, x8, #0x9c0
    9bf0: 94000000     	bl	0x9bf0 <change_tp_state+0x158>
		0000000000009bf0:  R_AARCH64_CALL26	queue_work_on
    9bf4: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009bf4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x8
    9bf8: 90000000     	adrp	x0, 0x9000 <tp_ghost_check+0x488>
		0000000000009bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1838
    9bfc: 91000000     	add	x0, x0, #0x0
		0000000000009bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1838
    9c00: b900011f     	str	wzr, [x8]
		0000000000009c00:  R_AARCH64_LDST32_ABS_LO12_NC	ufp_tp_ops+0x8
    9c04: 94000000     	bl	0x9c04 <change_tp_state+0x16c>
		0000000000009c04:  R_AARCH64_CALL26	_printk
    9c08: 17ffffeb     	b	0x9bb4 <change_tp_state+0x11c>
    9c0c: d42aa240     	brk	#0x5512
