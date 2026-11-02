
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001288 <fan_hrtimer_hander>:
    1288: d503233f     	paciasp
    128c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1290: f9000bf3     	str	x19, [sp, #0x10]
    1294: 910003fd     	mov	x29, sp
    1298: 90000013     	adrp	x19, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001298:  R_AARCH64_ADR_PREL_PG_HI21	chip
    129c: f9400268     	ldr	x8, [x19]
		000000000000129c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12a0: f9400508     	ldr	x8, [x8, #0x8]
    12a4: 39400909     	ldrb	w9, [x8, #0x2]
    12a8: 7100093f     	cmp	w9, #0x2
    12ac: 540004e0     	b.eq	0x1348 <fan_hrtimer_hander+0xc0>
    12b0: 7100053f     	cmp	w9, #0x1
    12b4: 540000c0     	b.eq	0x12cc <fan_hrtimer_hander+0x44>
    12b8: 2a1f03e0     	mov	w0, wzr
    12bc: f9400bf3     	ldr	x19, [sp, #0x10]
    12c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    12c4: d50323bf     	autiasp
    12c8: d65f03c0     	ret
    12cc: b900051f     	str	wzr, [x8, #0x4]
    12d0: 52800049     	mov	w9, #0x2                // =2
    12d4: 528ca001     	mov	w1, #0x6500             // =25856
    12d8: f9400268     	ldr	x8, [x19]
		00000000000012d8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12dc: 72a3b9a1     	movk	w1, #0x1dcd, lsl #16
    12e0: aa1f03e2     	mov	x2, xzr
    12e4: 52800023     	mov	w3, #0x1                // =1
    12e8: f9400508     	ldr	x8, [x8, #0x8]
    12ec: 39000909     	strb	w9, [x8, #0x2]
    12f0: f9400268     	ldr	x8, [x19]
		00000000000012f0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12f4: f9400508     	ldr	x8, [x8, #0x8]
    12f8: 9100a100     	add	x0, x8, #0x28
    12fc: 94000000     	bl	0x12fc <fan_hrtimer_hander+0x74>
		00000000000012fc:  R_AARCH64_CALL26	hrtimer_start_range_ns
    1300: f9400268     	ldr	x8, [x19]
		0000000000001300:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1304: f9400508     	ldr	x8, [x8, #0x8]
    1308: b9401d00     	ldr	w0, [x8, #0x1c]
    130c: 94000000     	bl	0x130c <fan_hrtimer_hander+0x84>
		000000000000130c:  R_AARCH64_CALL26	enable_irq
    1310: f9400268     	ldr	x8, [x19]
		0000000000001310:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1314: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131
    1318: 91000000     	add	x0, x0, #0x0
		0000000000001318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131
    131c: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1320: 91000021     	add	x1, x1, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1324: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
    1328: 91000042     	add	x2, x2, #0x0
		0000000000001328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
    132c: f9400508     	ldr	x8, [x8, #0x8]
    1330: 52801043     	mov	w3, #0x82               // =130
    1334: 39400104     	ldrb	w4, [x8]
    1338: b9400505     	ldr	w5, [x8, #0x4]
    133c: 94000000     	bl	0x133c <fan_hrtimer_hander+0xb4>
		000000000000133c:  R_AARCH64_CALL26	_printk
    1340: 52800020     	mov	w0, #0x1                // =1
    1344: 17ffffde     	b	0x12bc <fan_hrtimer_hander+0x34>
    1348: 52800069     	mov	w9, #0x3                // =3
    134c: 39000909     	strb	w9, [x8, #0x2]
    1350: f9400268     	ldr	x8, [x19]
		0000000000001350:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1354: f9400509     	ldr	x9, [x8, #0x8]
    1358: b940052a     	ldr	w10, [x9, #0x4]
    135c: b900092a     	str	w10, [x9, #0x8]
    1360: f9400508     	ldr	x8, [x8, #0x8]
    1364: b9401d00     	ldr	w0, [x8, #0x1c]
    1368: 94000000     	bl	0x1368 <fan_hrtimer_hander+0xe0>
		0000000000001368:  R_AARCH64_CALL26	disable_irq_nosync
    136c: f9400268     	ldr	x8, [x19]
		000000000000136c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1370: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54c
    1374: 91000000     	add	x0, x0, #0x0
		0000000000001374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54c
    1378: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    137c: 91000021     	add	x1, x1, #0x0
		000000000000137c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1380: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
    1384: 91000042     	add	x2, x2, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
    1388: f9400508     	ldr	x8, [x8, #0x8]
    138c: 52801123     	mov	w3, #0x89               // =137
    1390: 39400104     	ldrb	w4, [x8]
    1394: b9400505     	ldr	w5, [x8, #0x4]
    1398: 94000000     	bl	0x1398 <fan_hrtimer_hander+0x110>
		0000000000001398:  R_AARCH64_CALL26	_printk
    139c: 17ffffc7     	b	0x12b8 <fan_hrtimer_hander+0x30>
