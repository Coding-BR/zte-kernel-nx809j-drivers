
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000170b8 <syna_tcm_buf_alloc>:
   170b8: d503233f     	paciasp
   170bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   170c0: a9014ff4     	stp	x20, x19, [sp, #0x10]
   170c4: 910003fd     	mov	x29, sp
   170c8: b9400814     	ldr	w20, [x0, #0x8]
   170cc: aa0003f3     	mov	x19, x0
   170d0: f9400000     	ldr	x0, [x0]
   170d4: 71003e9f     	cmp	w20, #0xf
   170d8: 54000208     	b.hi	0x17118 <syna_tcm_buf_alloc+0x60>
   170dc: b40000c0     	cbz	x0, 0x170f4 <syna_tcm_buf_alloc+0x3c>
   170e0: aa0003f4     	mov	x20, x0
   170e4: 94000000     	bl	0x170e4 <syna_tcm_buf_alloc+0x2c>
		00000000000170e4:  R_AARCH64_CALL26	syna_request_managed_device
   170e8: b40002a0     	cbz	x0, 0x1713c <syna_tcm_buf_alloc+0x84>
   170ec: aa1403e1     	mov	x1, x20
   170f0: 94000000     	bl	0x170f0 <syna_tcm_buf_alloc+0x38>
		00000000000170f0:  R_AARCH64_CALL26	devm_kfree
   170f4: 94000000     	bl	0x170f4 <syna_tcm_buf_alloc+0x3c>
		00000000000170f4:  R_AARCH64_CALL26	syna_request_managed_device
   170f8: b4000300     	cbz	x0, 0x17158 <syna_tcm_buf_alloc+0xa0>
   170fc: 52800201     	mov	w1, #0x10               // =16
   17100: 5281b802     	mov	w2, #0xdc0              // =3520
   17104: 52800214     	mov	w20, #0x10              // =16
   17108: 94000000     	bl	0x17108 <syna_tcm_buf_alloc+0x50>
		0000000000017108:  R_AARCH64_CALL26	devm_kmalloc
   1710c: f9000260     	str	x0, [x19]
   17110: b4000300     	cbz	x0, 0x17170 <syna_tcm_buf_alloc+0xb8>
   17114: b9000a74     	str	w20, [x19, #0x8]
   17118: 2a1403e2     	mov	w2, w20
   1711c: 2a1f03e1     	mov	w1, wzr
   17120: 94000000     	bl	0x17120 <syna_tcm_buf_alloc+0x68>
		0000000000017120:  R_AARCH64_CALL26	memset
   17124: 2a1f03e0     	mov	w0, wzr
   17128: b9000e7f     	str	wzr, [x19, #0xc]
   1712c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   17130: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   17134: d50323bf     	autiasp
   17138: d65f03c0     	ret
   1713c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		000000000001713c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   17140: 91000000     	add	x0, x0, #0x0
		0000000000017140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   17144: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   17148: 91000021     	add	x1, x1, #0x0
		0000000000017148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1714c: 94000000     	bl	0x1714c <syna_tcm_buf_alloc+0x94>
		000000000001714c:  R_AARCH64_CALL26	_printk
   17150: 94000000     	bl	0x17150 <syna_tcm_buf_alloc+0x98>
		0000000000017150:  R_AARCH64_CALL26	syna_request_managed_device
   17154: b5fffd40     	cbnz	x0, 0x170fc <syna_tcm_buf_alloc+0x44>
   17158: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1715c: 91000000     	add	x0, x0, #0x0
		000000000001715c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   17160: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   17164: 91000021     	add	x1, x1, #0x0
		0000000000017164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   17168: 94000000     	bl	0x17168 <syna_tcm_buf_alloc+0xb0>
		0000000000017168:  R_AARCH64_CALL26	_printk
   1716c: f900027f     	str	xzr, [x19]
   17170: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   17174: 91000000     	add	x0, x0, #0x0
		0000000000017174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   17178: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1717c: 91000021     	add	x1, x1, #0x0
		000000000001717c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   17180: 52800202     	mov	w2, #0x10               // =16
   17184: 94000000     	bl	0x17184 <syna_tcm_buf_alloc+0xcc>
		0000000000017184:  R_AARCH64_CALL26	_printk
   17188: b9000a7f     	str	wzr, [x19, #0x8]
   1718c: 12801e40     	mov	w0, #-0xf3              // =-243
   17190: 17ffffe6     	b	0x17128 <syna_tcm_buf_alloc+0x70>
