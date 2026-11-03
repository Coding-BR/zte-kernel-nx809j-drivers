
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000803c <reg_store>:
    803c: d503233f     	paciasp
    8040: d10103ff     	sub	sp, sp, #0x40
    8044: a9027bfd     	stp	x29, x30, [sp, #0x20]
    8048: a9034ff4     	stp	x20, x19, [sp, #0x30]
    804c: 910083fd     	add	x29, sp, #0x20
    8050: d5384109     	mrs	x9, SP_EL0
    8054: aa0203e8     	mov	x8, x2
    8058: aa0303f3     	mov	x19, x3
    805c: f9438929     	ldr	x9, [x9, #0x710]
    8060: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d6
    8064: 91000021     	add	x1, x1, #0x0
		0000000000008064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d6
    8068: 910043e2     	add	x2, sp, #0x10
    806c: f81f83a9     	stur	x9, [x29, #-0x8]
    8070: 910043e9     	add	x9, sp, #0x10
    8074: f9404c14     	ldr	x20, [x0, #0x98]
    8078: b27e0123     	orr	x3, x9, #0x4
    807c: aa0803e0     	mov	x0, x8
    8080: f9000bff     	str	xzr, [sp, #0x10]
    8084: 94000000     	bl	0x8084 <reg_store+0x48>
		0000000000008084:  R_AARCH64_CALL26	sscanf
    8088: 7100081f     	cmp	w0, #0x2
    808c: 540000e1     	b.ne	0x80a8 <reg_store+0x6c>
    8090: 294223e1     	ldp	w1, w8, [sp, #0x10]
    8094: d102a280     	sub	x0, x20, #0xa8
    8098: 910033e2     	add	x2, sp, #0xc
    809c: 52800023     	mov	w3, #0x1                // =1
    80a0: 390033e8     	strb	w8, [sp, #0xc]
    80a4: 94000000     	bl	0x80a4 <reg_store+0x68>
		00000000000080a4:  R_AARCH64_CALL26	i2c_w_bytes
    80a8: d5384108     	mrs	x8, SP_EL0
    80ac: f9438908     	ldr	x8, [x8, #0x710]
    80b0: f85f83a9     	ldur	x9, [x29, #-0x8]
    80b4: eb09011f     	cmp	x8, x9
    80b8: 540000e1     	b.ne	0x80d4 <reg_store+0x98>
    80bc: aa1303e0     	mov	x0, x19
    80c0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    80c4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    80c8: 910103ff     	add	sp, sp, #0x40
    80cc: d50323bf     	autiasp
    80d0: d65f03c0     	ret
    80d4: 94000000     	bl	0x80d4 <reg_store+0x98>
		00000000000080d4:  R_AARCH64_CALL26	__stack_chk_fail
