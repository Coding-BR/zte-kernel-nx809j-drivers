
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002dcc <aw22xxx_imax_show>:
    2dcc: d503233f     	paciasp
    2dd0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    2dd4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    2dd8: a90257f6     	stp	x22, x21, [sp, #0x20]
    2ddc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2de0: 910003fd     	mov	x29, sp
    2de4: 90000015     	adrp	x21, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1528
    2de8: 910002b5     	add	x21, x21, #0x0
		0000000000002de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1528
    2dec: 90000014     	adrp	x20, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002dec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x4e8
    2df0: 91000294     	add	x20, x20, #0x0
		0000000000002df0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x4e8
    2df4: f9404c16     	ldr	x22, [x0, #0x98]
    2df8: aa0203f3     	mov	x19, x2
    2dfc: aa0203e0     	mov	x0, x2
    2e00: 52820001     	mov	w1, #0x1000             // =4096
    2e04: aa1503e2     	mov	x2, x21
    2e08: 2a1f03e3     	mov	w3, wzr
    2e0c: aa1403e4     	mov	x4, x20
    2e10: 52820017     	mov	w23, #0x1000            // =4096
    2e14: 94000000     	bl	0x2e14 <aw22xxx_imax_show+0x48>
		0000000000002e14:  R_AARCH64_CALL26	snprintf
    2e18: 93407c18     	sxtw	x24, w0
    2e1c: 91008284     	add	x4, x20, #0x20
    2e20: aa1503e2     	mov	x2, x21
    2e24: 52800023     	mov	w3, #0x1                // =1
    2e28: cb1802e1     	sub	x1, x23, x24
    2e2c: 8b180260     	add	x0, x19, x24
    2e30: 94000000     	bl	0x2e30 <aw22xxx_imax_show+0x64>
		0000000000002e30:  R_AARCH64_CALL26	snprintf
    2e34: 8b20c318     	add	x24, x24, w0, sxtw
    2e38: 91010284     	add	x4, x20, #0x40
    2e3c: aa1503e2     	mov	x2, x21
    2e40: 52800043     	mov	w3, #0x2                // =2
    2e44: cb1802e1     	sub	x1, x23, x24
    2e48: 8b180260     	add	x0, x19, x24
    2e4c: 94000000     	bl	0x2e4c <aw22xxx_imax_show+0x80>
		0000000000002e4c:  R_AARCH64_CALL26	snprintf
    2e50: 8b20c318     	add	x24, x24, w0, sxtw
    2e54: 91018284     	add	x4, x20, #0x60
    2e58: aa1503e2     	mov	x2, x21
    2e5c: 52800063     	mov	w3, #0x3                // =3
    2e60: cb1802e1     	sub	x1, x23, x24
    2e64: 8b180260     	add	x0, x19, x24
    2e68: 94000000     	bl	0x2e68 <aw22xxx_imax_show+0x9c>
		0000000000002e68:  R_AARCH64_CALL26	snprintf
    2e6c: 8b20c318     	add	x24, x24, w0, sxtw
    2e70: 91020284     	add	x4, x20, #0x80
    2e74: aa1503e2     	mov	x2, x21
    2e78: 52800083     	mov	w3, #0x4                // =4
    2e7c: cb1802e1     	sub	x1, x23, x24
    2e80: 8b180260     	add	x0, x19, x24
    2e84: 94000000     	bl	0x2e84 <aw22xxx_imax_show+0xb8>
		0000000000002e84:  R_AARCH64_CALL26	snprintf
    2e88: 8b20c318     	add	x24, x24, w0, sxtw
    2e8c: 91028284     	add	x4, x20, #0xa0
    2e90: aa1503e2     	mov	x2, x21
    2e94: 528000a3     	mov	w3, #0x5                // =5
    2e98: cb1802e1     	sub	x1, x23, x24
    2e9c: 8b180260     	add	x0, x19, x24
    2ea0: 94000000     	bl	0x2ea0 <aw22xxx_imax_show+0xd4>
		0000000000002ea0:  R_AARCH64_CALL26	snprintf
    2ea4: 8b20c318     	add	x24, x24, w0, sxtw
    2ea8: 91030284     	add	x4, x20, #0xc0
    2eac: aa1503e2     	mov	x2, x21
    2eb0: 528000c3     	mov	w3, #0x6                // =6
    2eb4: cb1802e1     	sub	x1, x23, x24
    2eb8: 8b180260     	add	x0, x19, x24
    2ebc: 94000000     	bl	0x2ebc <aw22xxx_imax_show+0xf0>
		0000000000002ebc:  R_AARCH64_CALL26	snprintf
    2ec0: 8b20c318     	add	x24, x24, w0, sxtw
    2ec4: 91038284     	add	x4, x20, #0xe0
    2ec8: aa1503e2     	mov	x2, x21
    2ecc: 528000e3     	mov	w3, #0x7                // =7
    2ed0: cb1802e1     	sub	x1, x23, x24
    2ed4: 8b180260     	add	x0, x19, x24
    2ed8: 94000000     	bl	0x2ed8 <aw22xxx_imax_show+0x10c>
		0000000000002ed8:  R_AARCH64_CALL26	snprintf
    2edc: 8b20c318     	add	x24, x24, w0, sxtw
    2ee0: 91040284     	add	x4, x20, #0x100
    2ee4: aa1503e2     	mov	x2, x21
    2ee8: 52800103     	mov	w3, #0x8                // =8
    2eec: cb1802e1     	sub	x1, x23, x24
    2ef0: 8b180260     	add	x0, x19, x24
    2ef4: 94000000     	bl	0x2ef4 <aw22xxx_imax_show+0x128>
		0000000000002ef4:  R_AARCH64_CALL26	snprintf
    2ef8: 8b20c318     	add	x24, x24, w0, sxtw
    2efc: 91048284     	add	x4, x20, #0x120
    2f00: aa1503e2     	mov	x2, x21
    2f04: 52800123     	mov	w3, #0x9                // =9
    2f08: cb1802e1     	sub	x1, x23, x24
    2f0c: 8b180260     	add	x0, x19, x24
    2f10: 94000000     	bl	0x2f10 <aw22xxx_imax_show+0x144>
		0000000000002f10:  R_AARCH64_CALL26	snprintf
    2f14: 8b20c318     	add	x24, x24, w0, sxtw
    2f18: 91050284     	add	x4, x20, #0x140
    2f1c: aa1503e2     	mov	x2, x21
    2f20: 52800143     	mov	w3, #0xa                // =10
    2f24: cb1802e1     	sub	x1, x23, x24
    2f28: 8b180260     	add	x0, x19, x24
    2f2c: 94000000     	bl	0x2f2c <aw22xxx_imax_show+0x160>
		0000000000002f2c:  R_AARCH64_CALL26	snprintf
    2f30: 8b20c318     	add	x24, x24, w0, sxtw
    2f34: 91058284     	add	x4, x20, #0x160
    2f38: aa1503e2     	mov	x2, x21
    2f3c: 52800163     	mov	w3, #0xb                // =11
    2f40: cb1802e1     	sub	x1, x23, x24
    2f44: 8b180260     	add	x0, x19, x24
    2f48: 94000000     	bl	0x2f48 <aw22xxx_imax_show+0x17c>
		0000000000002f48:  R_AARCH64_CALL26	snprintf
    2f4c: 8b20c318     	add	x24, x24, w0, sxtw
    2f50: 91060284     	add	x4, x20, #0x180
    2f54: aa1503e2     	mov	x2, x21
    2f58: 52800183     	mov	w3, #0xc                // =12
    2f5c: cb1802e1     	sub	x1, x23, x24
    2f60: 8b180260     	add	x0, x19, x24
    2f64: 94000000     	bl	0x2f64 <aw22xxx_imax_show+0x198>
		0000000000002f64:  R_AARCH64_CALL26	snprintf
    2f68: b942e2c3     	ldr	w3, [x22, #0x2e0]
    2f6c: 7100387f     	cmp	w3, #0xe
    2f70: 54000202     	b.hs	0x2fb0 <aw22xxx_imax_show+0x1e4>
    2f74: 8b20c315     	add	x21, x24, w0, sxtw
    2f78: 52820008     	mov	w8, #0x1000             // =4096
    2f7c: 8b031684     	add	x4, x20, x3, lsl #5
    2f80: 90000002     	adrp	x2, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    2f84: 91000042     	add	x2, x2, #0x0
		0000000000002f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    2f88: cb150101     	sub	x1, x8, x21
    2f8c: 8b150260     	add	x0, x19, x21
    2f90: 94000000     	bl	0x2f90 <aw22xxx_imax_show+0x1c4>
		0000000000002f90:  R_AARCH64_CALL26	snprintf
    2f94: 8b20c2a0     	add	x0, x21, w0, sxtw
    2f98: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2f9c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    2fa0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    2fa4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    2fa8: d50323bf     	autiasp
    2fac: d65f03c0     	ret
    2fb0: d42aa240     	brk	#0x5512
