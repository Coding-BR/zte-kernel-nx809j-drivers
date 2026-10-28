
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f1c <fan_pwm_store>:
     f1c: d503233f     	paciasp
     f20: d10183ff     	sub	sp, sp, #0x60
     f24: a9037bfd     	stp	x29, x30, [sp, #0x30]
     f28: a90457f6     	stp	x22, x21, [sp, #0x40]
     f2c: a9054ff4     	stp	x20, x19, [sp, #0x50]
     f30: 9100c3fd     	add	x29, sp, #0x30
     f34: d5384108     	mrs	x8, SP_EL0
     f38: aa0203e0     	mov	x0, x2
     f3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
     f40: 91000021     	add	x1, x1, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
     f44: f9438908     	ldr	x8, [x8, #0x710]
     f48: 910033e2     	add	x2, sp, #0xc
     f4c: aa0303f3     	mov	x19, x3
     f50: f81f83a8     	stur	x8, [x29, #-0x8]
     f54: b9000fff     	str	wzr, [sp, #0xc]
     f58: 94000000     	bl	0xf58 <fan_pwm_store+0x3c>
		0000000000000f58:  R_AARCH64_CALL26	sscanf
     f5c: b9400fe4     	ldr	w4, [sp, #0xc]
     f60: 7101949f     	cmp	w4, #0x65
     f64: 540005e2     	b.hs	0x1020 <fan_pwm_store+0x104>
     f68: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000f68:  R_AARCH64_ADR_PREL_PG_HI21	chip
     f6c: f94002c8     	ldr	x8, [x22]
		0000000000000f6c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     f70: 91006100     	add	x0, x8, #0x18
     f74: 94000000     	bl	0xf74 <fan_pwm_store+0x58>
		0000000000000f74:  R_AARCH64_CALL26	mutex_lock
     f78: f94002c8     	ldr	x8, [x22]
		0000000000000f78:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     f7c: 394033f4     	ldrb	w20, [sp, #0xc]
     f80: 52803209     	mov	w9, #0x190              // =400
     f84: 910043e2     	add	x2, sp, #0x10
     f88: f9400508     	ldr	x8, [x8, #0x8]
     f8c: 9ba97e89     	umull	x9, w20, w9
     f90: f9403501     	ldr	x1, [x8, #0x68]
     f94: f9400c20     	ldr	x0, [x1, #0x18]
     f98: f9402028     	ldr	x8, [x1, #0x40]
     f9c: f941c80a     	ldr	x10, [x0, #0x390]
     fa0: f90013e8     	str	x8, [sp, #0x20]
     fa4: 52800028     	mov	w8, #0x1                // =1
     fa8: 390093e8     	strb	w8, [sp, #0x24]
     fac: 52938808     	mov	w8, #0x9c40             // =40000
     fb0: f9400d4a     	ldr	x10, [x10, #0x18]
     fb4: a90127e8     	stp	x8, x9, [sp, #0x10]
     fb8: b85fc150     	ldur	w16, [x10, #-0x4]
     fbc: 7292fa11     	movk	w17, #0x97d0
     fc0: 72bbba11     	movk	w17, #0xddd0, lsl #16
     fc4: 6b11021f     	cmp	w16, w17
     fc8: 54000040     	b.eq	0xfd0 <fan_pwm_store+0xb4>
     fcc: d4304540     	brk	#0x822a
     fd0: d63f0140     	blr	x10
     fd4: 2a0003f5     	mov	w21, w0
     fd8: 37f803c0     	tbnz	w0, #0x1f, 0x1050 <fan_pwm_store+0x134>
     fdc: 34000515     	cbz	w21, 0x107c <fan_pwm_store+0x160>
     fe0: f94002c8     	ldr	x8, [x22]
		0000000000000fe0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     fe4: 91006100     	add	x0, x8, #0x18
     fe8: 94000000     	bl	0xfe8 <fan_pwm_store+0xcc>
		0000000000000fe8:  R_AARCH64_CALL26	mutex_unlock
     fec: 93407eb3     	sxtw	x19, w21
     ff0: d5384108     	mrs	x8, SP_EL0
     ff4: f9438908     	ldr	x8, [x8, #0x710]
     ff8: f85f83a9     	ldur	x9, [x29, #-0x8]
     ffc: eb09011f     	cmp	x8, x9
    1000: 540005a1     	b.ne	0x10b4 <fan_pwm_store+0x198>
    1004: aa1303e0     	mov	x0, x19
    1008: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    100c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1010: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1014: 910183ff     	add	sp, sp, #0x60
    1018: d50323bf     	autiasp
    101c: d65f03c0     	ret
    1020: 90000000     	adrp	x0, 0x1000 <fan_pwm_store+0xe4>
		0000000000001020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22d
    1024: 91000000     	add	x0, x0, #0x0
		0000000000001024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22d
    1028: 90000001     	adrp	x1, 0x1000 <fan_pwm_store+0xe4>
		0000000000001028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
    102c: 91000021     	add	x1, x1, #0x0
		000000000000102c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
    1030: 90000002     	adrp	x2, 0x1000 <fan_pwm_store+0xe4>
		0000000000001030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54d
    1034: 91000042     	add	x2, x2, #0x0
		0000000000001034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54d
    1038: 52803023     	mov	w3, #0x181              // =385
    103c: 2a1f03e5     	mov	w5, wzr
    1040: 52800c86     	mov	w6, #0x64               // =100
    1044: 94000000     	bl	0x1044 <fan_pwm_store+0x128>
		0000000000001044:  R_AARCH64_CALL26	_printk
    1048: 928002b3     	mov	x19, #-0x16             // =-22
    104c: 17ffffe9     	b	0xff0 <fan_pwm_store+0xd4>
    1050: 90000000     	adrp	x0, 0x1000 <fan_pwm_store+0xe4>
		0000000000001050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x119
    1054: 91000000     	add	x0, x0, #0x0
		0000000000001054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x119
    1058: 90000001     	adrp	x1, 0x1000 <fan_pwm_store+0xe4>
		0000000000001058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
    105c: 91000021     	add	x1, x1, #0x0
		000000000000105c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
    1060: 90000002     	adrp	x2, 0x1000 <fan_pwm_store+0xe4>
		0000000000001060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c9
    1064: 91000042     	add	x2, x2, #0x0
		0000000000001064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c9
    1068: 52801aa3     	mov	w3, #0xd5               // =213
    106c: 2a1403e4     	mov	w4, w20
    1070: 2a1503e5     	mov	w5, w21
    1074: 94000000     	bl	0x1074 <fan_pwm_store+0x158>
		0000000000001074:  R_AARCH64_CALL26	_printk
    1078: 17ffffda     	b	0xfe0 <fan_pwm_store+0xc4>
    107c: f94002c8     	ldr	x8, [x22]
		000000000000107c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1080: 91006100     	add	x0, x8, #0x18
    1084: 94000000     	bl	0x1084 <fan_pwm_store+0x168>
		0000000000001084:  R_AARCH64_CALL26	mutex_unlock
    1088: b9400fe4     	ldr	w4, [sp, #0xc]
    108c: 90000000     	adrp	x0, 0x1000 <fan_pwm_store+0xe4>
		000000000000108c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179
    1090: 91000000     	add	x0, x0, #0x0
		0000000000001090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179
    1094: 90000001     	adrp	x1, 0x1000 <fan_pwm_store+0xe4>
		0000000000001094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
    1098: 91000021     	add	x1, x1, #0x0
		0000000000001098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
    109c: 90000002     	adrp	x2, 0x1000 <fan_pwm_store+0xe4>
		000000000000109c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54d
    10a0: 91000042     	add	x2, x2, #0x0
		00000000000010a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54d
    10a4: 52803183     	mov	w3, #0x18c              // =396
    10a8: 2a1f03e5     	mov	w5, wzr
    10ac: 94000000     	bl	0x10ac <fan_pwm_store+0x190>
		00000000000010ac:  R_AARCH64_CALL26	_printk
    10b0: 17ffffd0     	b	0xff0 <fan_pwm_store+0xd4>
    10b4: 94000000     	bl	0x10b4 <fan_pwm_store+0x198>
		00000000000010b4:  R_AARCH64_CALL26	__stack_chk_fail
