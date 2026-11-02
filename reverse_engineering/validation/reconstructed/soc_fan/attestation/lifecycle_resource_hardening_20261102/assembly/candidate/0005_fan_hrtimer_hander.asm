
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001290 <fan_hrtimer_hander>:
    1290: d503233f     	paciasp
    1294: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1298: f9000bf3     	str	x19, [sp, #0x10]
    129c: 910003fd     	mov	x29, sp
    12a0: 90000013     	adrp	x19, 0x1000 <nb_fan_parse_dt+0x268>
		00000000000012a0:  R_AARCH64_ADR_PREL_PG_HI21	chip
    12a4: f9400268     	ldr	x8, [x19]
		00000000000012a4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12a8: f9400508     	ldr	x8, [x8, #0x8]
    12ac: 39400909     	ldrb	w9, [x8, #0x2]
    12b0: 7100093f     	cmp	w9, #0x2
    12b4: 540004e0     	b.eq	0x1350 <fan_hrtimer_hander+0xc0>
    12b8: 7100053f     	cmp	w9, #0x1
    12bc: 540000c0     	b.eq	0x12d4 <fan_hrtimer_hander+0x44>
    12c0: 2a1f03e0     	mov	w0, wzr
    12c4: f9400bf3     	ldr	x19, [sp, #0x10]
    12c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    12cc: d50323bf     	autiasp
    12d0: d65f03c0     	ret
    12d4: b900051f     	str	wzr, [x8, #0x4]
    12d8: 52800049     	mov	w9, #0x2                // =2
    12dc: 528ca001     	mov	w1, #0x6500             // =25856
    12e0: f9400268     	ldr	x8, [x19]
		00000000000012e0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12e4: 72a3b9a1     	movk	w1, #0x1dcd, lsl #16
    12e8: aa1f03e2     	mov	x2, xzr
    12ec: 52800023     	mov	w3, #0x1                // =1
    12f0: f9400508     	ldr	x8, [x8, #0x8]
    12f4: 39000909     	strb	w9, [x8, #0x2]
    12f8: f9400268     	ldr	x8, [x19]
		00000000000012f8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12fc: f9400508     	ldr	x8, [x8, #0x8]
    1300: 9100a100     	add	x0, x8, #0x28
    1304: 94000000     	bl	0x1304 <fan_hrtimer_hander+0x74>
		0000000000001304:  R_AARCH64_CALL26	hrtimer_start_range_ns
    1308: f9400268     	ldr	x8, [x19]
		0000000000001308:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    130c: f9400508     	ldr	x8, [x8, #0x8]
    1310: b9401d00     	ldr	w0, [x8, #0x1c]
    1314: 94000000     	bl	0x1314 <fan_hrtimer_hander+0x84>
		0000000000001314:  R_AARCH64_CALL26	enable_irq
    1318: f9400268     	ldr	x8, [x19]
		0000000000001318:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    131c: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000131c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131
    1320: 91000000     	add	x0, x0, #0x0
		0000000000001320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131
    1324: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001324:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1328: 91000021     	add	x1, x1, #0x0
		0000000000001328:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    132c: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		000000000000132c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
    1330: 91000042     	add	x2, x2, #0x0
		0000000000001330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
    1334: f9400508     	ldr	x8, [x8, #0x8]
    1338: 52801043     	mov	w3, #0x82               // =130
    133c: 39400104     	ldrb	w4, [x8]
    1340: b9400505     	ldr	w5, [x8, #0x4]
    1344: 94000000     	bl	0x1344 <fan_hrtimer_hander+0xb4>
		0000000000001344:  R_AARCH64_CALL26	_printk
    1348: 52800020     	mov	w0, #0x1                // =1
    134c: 17ffffde     	b	0x12c4 <fan_hrtimer_hander+0x34>
    1350: 52800069     	mov	w9, #0x3                // =3
    1354: 39000909     	strb	w9, [x8, #0x2]
    1358: f9400268     	ldr	x8, [x19]
		0000000000001358:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    135c: f9400509     	ldr	x9, [x8, #0x8]
    1360: b940052a     	ldr	w10, [x9, #0x4]
    1364: b900092a     	str	w10, [x9, #0x8]
    1368: f9400508     	ldr	x8, [x8, #0x8]
    136c: b9401d00     	ldr	w0, [x8, #0x1c]
    1370: 94000000     	bl	0x1370 <fan_hrtimer_hander+0xe0>
		0000000000001370:  R_AARCH64_CALL26	disable_irq_nosync
    1374: f9400268     	ldr	x8, [x19]
		0000000000001374:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1378: 90000000     	adrp	x0, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54c
    137c: 91000000     	add	x0, x0, #0x0
		000000000000137c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54c
    1380: 90000001     	adrp	x1, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    1384: 91000021     	add	x1, x1, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    1388: 90000002     	adrp	x2, 0x1000 <nb_fan_parse_dt+0x268>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x971
    138c: 91000042     	add	x2, x2, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x971
    1390: f9400508     	ldr	x8, [x8, #0x8]
    1394: 52801123     	mov	w3, #0x89               // =137
    1398: 39400104     	ldrb	w4, [x8]
    139c: b9400505     	ldr	w5, [x8, #0x4]
    13a0: 94000000     	bl	0x13a0 <fan_hrtimer_hander+0x110>
		00000000000013a0:  R_AARCH64_CALL26	_printk
    13a4: 17ffffc7     	b	0x12c0 <fan_hrtimer_hander+0x30>
