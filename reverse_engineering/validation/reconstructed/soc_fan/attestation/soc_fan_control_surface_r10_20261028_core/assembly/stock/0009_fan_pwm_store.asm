
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000116c <fan_pwm_store>:
    116c: d503233f     	paciasp
    1170: d10183ff     	sub	sp, sp, #0x60
    1174: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1178: a90457f6     	stp	x22, x21, [sp, #0x40]
    117c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1180: 9100c3fd     	add	x29, sp, #0x30
    1184: d5384108     	mrs	x8, SP_EL0
    1188: aa0203e0     	mov	x0, x2
    118c: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		000000000000118c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e5
    1190: 91000021     	add	x1, x1, #0x0
		0000000000001190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e5
    1194: f9438908     	ldr	x8, [x8, #0x710]
    1198: 910033e2     	add	x2, sp, #0xc
    119c: aa0303f3     	mov	x19, x3
    11a0: f81f83a8     	stur	x8, [x29, #-0x8]
    11a4: b9000fff     	str	wzr, [sp, #0xc]
    11a8: 94000000     	bl	0x11a8 <fan_pwm_store+0x3c>
		00000000000011a8:  R_AARCH64_CALL26	sscanf
    11ac: b9400fe4     	ldr	w4, [sp, #0xc]
    11b0: 7101949f     	cmp	w4, #0x65
    11b4: 540005e2     	b.hs	0x1270 <fan_pwm_store+0x104>
    11b8: 90000016     	adrp	x22, 0x1000 <fan_level_show+0x28>
		00000000000011b8:  R_AARCH64_ADR_PREL_PG_HI21	chip
    11bc: f94002c8     	ldr	x8, [x22]
		00000000000011bc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    11c0: 91006100     	add	x0, x8, #0x18
    11c4: 94000000     	bl	0x11c4 <fan_pwm_store+0x58>
		00000000000011c4:  R_AARCH64_CALL26	mutex_lock
    11c8: f94002c8     	ldr	x8, [x22]
		00000000000011c8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    11cc: 394033f4     	ldrb	w20, [sp, #0xc]
    11d0: 52803209     	mov	w9, #0x190              // =400
    11d4: 910043e2     	add	x2, sp, #0x10
    11d8: f9400508     	ldr	x8, [x8, #0x8]
    11dc: 9ba97e89     	umull	x9, w20, w9
    11e0: f9403501     	ldr	x1, [x8, #0x68]
    11e4: f9400c20     	ldr	x0, [x1, #0x18]
    11e8: f9402028     	ldr	x8, [x1, #0x40]
    11ec: f941c80a     	ldr	x10, [x0, #0x390]
    11f0: f90013e8     	str	x8, [sp, #0x20]
    11f4: 52800028     	mov	w8, #0x1                // =1
    11f8: 390093e8     	strb	w8, [sp, #0x24]
    11fc: 52938808     	mov	w8, #0x9c40             // =40000
    1200: f9400d4a     	ldr	x10, [x10, #0x18]
    1204: a90127e8     	stp	x8, x9, [sp, #0x10]
    1208: b85fc150     	ldur	w16, [x10, #-0x4]
    120c: 7292fa11     	movk	w17, #0x97d0
    1210: 72bbba11     	movk	w17, #0xddd0, lsl #16
    1214: 6b11021f     	cmp	w16, w17
    1218: 54000040     	b.eq	0x1220 <fan_pwm_store+0xb4>
    121c: d4304540     	brk	#0x822a
    1220: d63f0140     	blr	x10
    1224: 2a0003f5     	mov	w21, w0
    1228: 37f803c0     	tbnz	w0, #0x1f, 0x12a0 <fan_pwm_store+0x134>
    122c: 34000515     	cbz	w21, 0x12cc <fan_pwm_store+0x160>
    1230: f94002c8     	ldr	x8, [x22]
		0000000000001230:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1234: 91006100     	add	x0, x8, #0x18
    1238: 94000000     	bl	0x1238 <fan_pwm_store+0xcc>
		0000000000001238:  R_AARCH64_CALL26	mutex_unlock
    123c: 93407eb3     	sxtw	x19, w21
    1240: d5384108     	mrs	x8, SP_EL0
    1244: f9438908     	ldr	x8, [x8, #0x710]
    1248: f85f83a9     	ldur	x9, [x29, #-0x8]
    124c: eb09011f     	cmp	x8, x9
    1250: 540005a1     	b.ne	0x1304 <fan_pwm_store+0x198>
    1254: aa1303e0     	mov	x0, x19
    1258: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    125c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1260: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1264: 910183ff     	add	sp, sp, #0x60
    1268: d50323bf     	autiasp
    126c: d65f03c0     	ret
    1270: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		0000000000001270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d9
    1274: 91000000     	add	x0, x0, #0x0
		0000000000001274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d9
    1278: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		0000000000001278:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    127c: 91000021     	add	x1, x1, #0x0
		000000000000127c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1280: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		0000000000001280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87a
    1284: 91000042     	add	x2, x2, #0x0
		0000000000001284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87a
    1288: 52803023     	mov	w3, #0x181              // =385
    128c: 2a1f03e5     	mov	w5, wzr
    1290: 52800c86     	mov	w6, #0x64               // =100
    1294: 94000000     	bl	0x1294 <fan_pwm_store+0x128>
		0000000000001294:  R_AARCH64_CALL26	_printk
    1298: 928002b3     	mov	x19, #-0x16             // =-22
    129c: 17ffffe9     	b	0x1240 <fan_pwm_store+0xd4>
    12a0: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		00000000000012a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261
    12a4: 91000000     	add	x0, x0, #0x0
		00000000000012a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261
    12a8: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		00000000000012a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    12ac: 91000021     	add	x1, x1, #0x0
		00000000000012ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    12b0: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		00000000000012b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x624
    12b4: 91000042     	add	x2, x2, #0x0
		00000000000012b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x624
    12b8: 52801aa3     	mov	w3, #0xd5               // =213
    12bc: 2a1403e4     	mov	w4, w20
    12c0: 2a1503e5     	mov	w5, w21
    12c4: 94000000     	bl	0x12c4 <fan_pwm_store+0x158>
		00000000000012c4:  R_AARCH64_CALL26	_printk
    12c8: 17ffffda     	b	0x1230 <fan_pwm_store+0xc4>
    12cc: f94002c8     	ldr	x8, [x22]
		00000000000012cc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12d0: 91006100     	add	x0, x8, #0x18
    12d4: 94000000     	bl	0x12d4 <fan_pwm_store+0x168>
		00000000000012d4:  R_AARCH64_CALL26	mutex_unlock
    12d8: b9400fe4     	ldr	w4, [sp, #0xc]
    12dc: 90000000     	adrp	x0, 0x1000 <fan_level_show+0x28>
		00000000000012dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ff
    12e0: 91000000     	add	x0, x0, #0x0
		00000000000012e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ff
    12e4: 90000001     	adrp	x1, 0x1000 <fan_level_show+0x28>
		00000000000012e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    12e8: 91000021     	add	x1, x1, #0x0
		00000000000012e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    12ec: 90000002     	adrp	x2, 0x1000 <fan_level_show+0x28>
		00000000000012ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87a
    12f0: 91000042     	add	x2, x2, #0x0
		00000000000012f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87a
    12f4: 52803183     	mov	w3, #0x18c              // =396
    12f8: 2a1f03e5     	mov	w5, wzr
    12fc: 94000000     	bl	0x12fc <fan_pwm_store+0x190>
		00000000000012fc:  R_AARCH64_CALL26	_printk
    1300: 17ffffd0     	b	0x1240 <fan_pwm_store+0xd4>
    1304: 94000000     	bl	0x1304 <fan_pwm_store+0x198>
		0000000000001304:  R_AARCH64_CALL26	__stack_chk_fail
