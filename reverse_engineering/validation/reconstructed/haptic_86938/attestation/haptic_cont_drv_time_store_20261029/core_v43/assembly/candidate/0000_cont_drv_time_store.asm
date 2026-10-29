
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000984 <cont_drv_time_store>:
     984: d503233f     	paciasp
     988: d10143ff     	sub	sp, sp, #0x50
     98c: a9027bfd     	stp	x29, x30, [sp, #0x20]
     990: f9001bf5     	str	x21, [sp, #0x30]
     994: a9044ff4     	stp	x20, x19, [sp, #0x40]
     998: 910083fd     	add	x29, sp, #0x20
     99c: d5384109     	mrs	x9, SP_EL0
     9a0: aa0203e8     	mov	x8, x2
     9a4: aa0303f3     	mov	x19, x3
     9a8: f9438929     	ldr	x9, [x9, #0x710]
     9ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1eb
     9b0: 91000021     	add	x1, x1, #0x0
		00000000000009b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1eb
     9b4: 910043e2     	add	x2, sp, #0x10
     9b8: f81f83a9     	stur	x9, [x29, #-0x8]
     9bc: 910043e9     	add	x9, sp, #0x10
     9c0: f9404c15     	ldr	x21, [x0, #0x98]
     9c4: b27e0123     	orr	x3, x9, #0x4
     9c8: aa0803e0     	mov	x0, x8
     9cc: f9000bff     	str	xzr, [sp, #0x10]
     9d0: 94000000     	bl	0x9d0 <cont_drv_time_store+0x4c>
		00000000000009d0:  R_AARCH64_CALL26	sscanf
     9d4: 7100081f     	cmp	w0, #0x2
     9d8: 54000221     	b.ne	0xa1c <cont_drv_time_store+0x98>
     9dc: 394043e8     	ldrb	w8, [sp, #0x10]
     9e0: 910922a0     	add	x0, x21, #0x248
     9e4: d102a2b4     	sub	x20, x21, #0xa8
     9e8: 390fe2a8     	strb	w8, [x21, #0x3f8]
     9ec: 394053e9     	ldrb	w9, [sp, #0x14]
     9f0: 390fe6a9     	strb	w9, [x21, #0x3f9]
     9f4: 390033e8     	strb	w8, [sp, #0xc]
     9f8: 390037e9     	strb	w9, [sp, #0xd]
     9fc: 94000000     	bl	0x9fc <cont_drv_time_store+0x78>
		00000000000009fc:  R_AARCH64_CALL26	mutex_lock
     a00: 910033e2     	add	x2, sp, #0xc
     a04: aa1403e0     	mov	x0, x20
     a08: 528003e1     	mov	w1, #0x1f               // =31
     a0c: 52800043     	mov	w3, #0x2                // =2
     a10: 94000000     	bl	0xa10 <cont_drv_time_store+0x8c>
		0000000000000a10:  R_AARCH64_CALL26	i2c_w_bytes
     a14: 910922a0     	add	x0, x21, #0x248
     a18: 94000000     	bl	0xa18 <cont_drv_time_store+0x94>
		0000000000000a18:  R_AARCH64_CALL26	mutex_unlock
     a1c: d5384108     	mrs	x8, SP_EL0
     a20: f9438908     	ldr	x8, [x8, #0x710]
     a24: f85f83a9     	ldur	x9, [x29, #-0x8]
     a28: eb09011f     	cmp	x8, x9
     a2c: 54000101     	b.ne	0xa4c <cont_drv_time_store+0xc8>
     a30: aa1303e0     	mov	x0, x19
     a34: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     a38: f9401bf5     	ldr	x21, [sp, #0x30]
     a3c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     a40: 910143ff     	add	sp, sp, #0x50
     a44: d50323bf     	autiasp
     a48: d65f03c0     	ret
     a4c: 94000000     	bl	0xa4c <cont_drv_time_store+0xc8>
		0000000000000a4c:  R_AARCH64_CALL26	__stack_chk_fail
