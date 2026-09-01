
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012e8 <aw22xxx_fw_init>:
    12e8: d503233f     	paciasp
    12ec: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    12f0: f9000bf3     	str	x19, [sp, #0x10]
    12f4: 910003fd     	mov	x29, sp
    12f8: aa0003f3     	mov	x19, x0
    12fc: 9109c000     	add	x0, x0, #0x270
    1300: 52800021     	mov	w1, #0x1                // =1
    1304: 52800022     	mov	w2, #0x1                // =1
    1308: 94000000     	bl	0x1308 <aw22xxx_fw_init+0x20>
		0000000000001308:  R_AARCH64_CALL26	hrtimer_init
    130c: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		000000000000130c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x38bc
    1310: 91000108     	add	x8, x8, #0x0
		0000000000001310:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x38bc
    1314: 91086269     	add	x9, x19, #0x218
    1318: f9014e68     	str	x8, [x19, #0x298]
    131c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1320: f9010a68     	str	x8, [x19, #0x210]
    1324: f9010e69     	str	x9, [x19, #0x218]
    1328: f9011269     	str	x9, [x19, #0x220]
    132c: 90000009     	adrp	x9, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		000000000000132c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3910
    1330: 91000129     	add	x9, x9, #0x0
		0000000000001330:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3910
    1334: f9011669     	str	x9, [x19, #0x228]
    1338: 9108e269     	add	x9, x19, #0x238
    133c: f9011a68     	str	x8, [x19, #0x230]
    1340: f9011e69     	str	x9, [x19, #0x238]
    1344: f9012269     	str	x9, [x19, #0x240]
    1348: 90000009     	adrp	x9, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001348:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x110
    134c: b9400129     	ldr	w9, [x9]
		000000000000134c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x110
    1350: 71002d3f     	cmp	w9, #0xb
    1354: 90000009     	adrp	x9, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001354:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3994
    1358: 91000129     	add	x9, x9, #0x0
		0000000000001358:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3994
    135c: f9012669     	str	x9, [x19, #0x248]
    1360: 54000101     	b.ne	0x1380 <aw22xxx_fw_init+0x98>
    1364: f9012a68     	str	x8, [x19, #0x250]
    1368: 91096268     	add	x8, x19, #0x258
    136c: f9012e68     	str	x8, [x19, #0x258]
    1370: f9013268     	str	x8, [x19, #0x260]
    1374: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001374:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3a58
    1378: 91000108     	add	x8, x8, #0x0
		0000000000001378:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3a58
    137c: f9013668     	str	x8, [x19, #0x268]
    1380: 90000000     	adrp	x0, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001380:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c
    1384: 91000000     	add	x0, x0, #0x0
		0000000000001384:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c
    1388: 90000001     	adrp	x1, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		0000000000001388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf27
    138c: 91000021     	add	x1, x1, #0x0
		000000000000138c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf27
    1390: 94000000     	bl	0x1390 <aw22xxx_fw_init+0xa8>
		0000000000001390:  R_AARCH64_CALL26	_printk
    1394: 52994001     	mov	w1, #0xca00             // =51712
    1398: 9109c260     	add	x0, x19, #0x270
    139c: aa1f03e2     	mov	x2, xzr
    13a0: 72a77341     	movk	w1, #0x3b9a, lsl #16
    13a4: 52800023     	mov	w3, #0x1                // =1
    13a8: 94000000     	bl	0x13a8 <aw22xxx_fw_init+0xc0>
		00000000000013a8:  R_AARCH64_CALL26	hrtimer_start_range_ns
    13ac: f9400bf3     	ldr	x19, [sp, #0x10]
    13b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    13b4: d50323bf     	autiasp
    13b8: d65f03c0     	ret
