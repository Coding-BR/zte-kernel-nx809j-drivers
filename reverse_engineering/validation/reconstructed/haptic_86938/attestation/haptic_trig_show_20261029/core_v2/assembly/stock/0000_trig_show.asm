
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000039f8 <trig_show>:
    39f8: d503233f     	paciasp
    39fc: d10183ff     	sub	sp, sp, #0x60
    3a00: a9027bfd     	stp	x29, x30, [sp, #0x20]
    3a04: f9001bf7     	str	x23, [sp, #0x30]
    3a08: a90457f6     	stp	x22, x21, [sp, #0x40]
    3a0c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    3a10: 910083fd     	add	x29, sp, #0x20
    3a14: f9404c15     	ldr	x21, [x0, #0x98]
    3a18: 90000014     	adrp	x20, 0x3000 <aw8693x_get_wav_loop+0x30>
		0000000000003a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20f1
    3a1c: 91000294     	add	x20, x20, #0x0
		0000000000003a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20f1
    3a20: aa0203f3     	mov	x19, x2
    3a24: aa0203e0     	mov	x0, x2
    3a28: 52820001     	mov	w1, #0x1000             // =4096
    3a2c: 3954fea4     	ldrb	w4, [x21, #0x53f]
    3a30: 395502a5     	ldrb	w5, [x21, #0x540]
    3a34: 395506a6     	ldrb	w6, [x21, #0x541]
    3a38: 39550ea7     	ldrb	w7, [x21, #0x543]
    3a3c: 39550aa8     	ldrb	w8, [x21, #0x542]
    3a40: 395512a9     	ldrb	w9, [x21, #0x544]
    3a44: 3954f6aa     	ldrb	w10, [x21, #0x53d]
    3a48: 3954faab     	ldrb	w11, [x21, #0x53e]
    3a4c: aa1403e2     	mov	x2, x20
    3a50: 52800023     	mov	w3, #0x1                // =1
    3a54: b9000be9     	str	w9, [sp, #0x8]
    3a58: 52820016     	mov	w22, #0x1000            // =4096
    3a5c: b9001beb     	str	w11, [sp, #0x18]
    3a60: b90013ea     	str	w10, [sp, #0x10]
    3a64: b90003e8     	str	w8, [sp]
    3a68: 94000000     	bl	0x3a68 <trig_show+0x70>
		0000000000003a68:  R_AARCH64_CALL26	snprintf
    3a6c: 93407c17     	sxtw	x23, w0
    3a70: 395532a4     	ldrb	w4, [x21, #0x54c]
    3a74: 395536a5     	ldrb	w5, [x21, #0x54d]
    3a78: 39553aa6     	ldrb	w6, [x21, #0x54e]
    3a7c: 395542a7     	ldrb	w7, [x21, #0x550]
    3a80: aa1403e2     	mov	x2, x20
    3a84: 39553ea8     	ldrb	w8, [x21, #0x54f]
    3a88: 395546a9     	ldrb	w9, [x21, #0x551]
    3a8c: cb1702c1     	sub	x1, x22, x23
    3a90: 39552aaa     	ldrb	w10, [x21, #0x54a]
    3a94: 39552eab     	ldrb	w11, [x21, #0x54b]
    3a98: 8b170260     	add	x0, x19, x23
    3a9c: 52800043     	mov	w3, #0x2                // =2
    3aa0: b9000be9     	str	w9, [sp, #0x8]
    3aa4: b9001beb     	str	w11, [sp, #0x18]
    3aa8: b90013ea     	str	w10, [sp, #0x10]
    3aac: b90003e8     	str	w8, [sp]
    3ab0: 94000000     	bl	0x3ab0 <trig_show+0xb8>
		0000000000003ab0:  R_AARCH64_CALL26	snprintf
    3ab4: 8b20c2f7     	add	x23, x23, w0, sxtw
    3ab8: 395566a4     	ldrb	w4, [x21, #0x559]
    3abc: 39556aa5     	ldrb	w5, [x21, #0x55a]
    3ac0: 39556ea6     	ldrb	w6, [x21, #0x55b]
    3ac4: 395576a7     	ldrb	w7, [x21, #0x55d]
    3ac8: aa1403e2     	mov	x2, x20
    3acc: 395572a8     	ldrb	w8, [x21, #0x55c]
    3ad0: 39557aa9     	ldrb	w9, [x21, #0x55e]
    3ad4: cb1702c1     	sub	x1, x22, x23
    3ad8: 39555eaa     	ldrb	w10, [x21, #0x557]
    3adc: 395562ab     	ldrb	w11, [x21, #0x558]
    3ae0: 8b170260     	add	x0, x19, x23
    3ae4: 52800063     	mov	w3, #0x3                // =3
    3ae8: b9000be9     	str	w9, [sp, #0x8]
    3aec: b9001beb     	str	w11, [sp, #0x18]
    3af0: b90013ea     	str	w10, [sp, #0x10]
    3af4: b90003e8     	str	w8, [sp]
    3af8: 94000000     	bl	0x3af8 <trig_show+0x100>
		0000000000003af8:  R_AARCH64_CALL26	snprintf
    3afc: 8b20c2e0     	add	x0, x23, w0, sxtw
    3b00: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    3b04: f9401bf7     	ldr	x23, [sp, #0x30]
    3b08: a94457f6     	ldp	x22, x21, [sp, #0x40]
    3b0c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    3b10: 910183ff     	add	sp, sp, #0x60
    3b14: d50323bf     	autiasp
    3b18: d65f03c0     	ret
