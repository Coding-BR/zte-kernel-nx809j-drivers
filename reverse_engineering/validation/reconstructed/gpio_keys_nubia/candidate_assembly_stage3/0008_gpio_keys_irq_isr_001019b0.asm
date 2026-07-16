
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012a0 <gpio_keys_irq_isr>:
    12a0: b940bc28     	ldr	w8, [x1, #0xbc]
    12a4: 6b00011f     	cmp	w8, w0
    12a8: 54000861     	b.ne	0x13b4 <gpio_keys_irq_isr+0x114>
    12ac: d503233f     	paciasp
    12b0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    12b4: a90157f6     	stp	x22, x21, [sp, #0x10]
    12b8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    12bc: 910003fd     	mov	x29, sp
    12c0: f9400435     	ldr	x21, [x1, #0x8]
    12c4: 91041020     	add	x0, x1, #0x104
    12c8: aa0103f3     	mov	x19, x1
    12cc: 94000000     	bl	0x12cc <gpio_keys_irq_isr+0x2c>
		00000000000012cc:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    12d0: 39442668     	ldrb	w8, [x19, #0x109]
    12d4: aa0003f4     	mov	x20, x0
    12d8: 36000088     	tbz	w8, #0x0, 0x12e8 <gpio_keys_irq_isr+0x48>
    12dc: b9404a60     	ldr	w0, [x19, #0x48]
    12e0: 35000320     	cbnz	w0, 0x1344 <gpio_keys_irq_isr+0xa4>
    12e4: 1400002b     	b	0x1390 <gpio_keys_irq_isr+0xf0>
    12e8: f9400268     	ldr	x8, [x19]
    12ec: b9401d08     	ldr	w8, [x8, #0x1c]
    12f0: 340000c8     	cbz	w8, 0x1308 <gpio_keys_irq_isr+0x68>
    12f4: f9400668     	ldr	x8, [x19, #0x8]
    12f8: 2a1f03e1     	mov	w1, wzr
    12fc: 2a1f03e2     	mov	w2, wzr
    1300: f9414900     	ldr	x0, [x8, #0x290]
    1304: 94000000     	bl	0x1304 <gpio_keys_irq_isr+0x64>
		0000000000001304:  R_AARCH64_CALL26	pm_wakeup_dev_event
    1308: f9400e68     	ldr	x8, [x19, #0x18]
    130c: aa1503e0     	mov	x0, x21
    1310: 52800021     	mov	w1, #0x1                // =1
    1314: 52800023     	mov	w3, #0x1                // =1
    1318: 52800036     	mov	w22, #0x1               // =1
    131c: 79400102     	ldrh	w2, [x8]
    1320: 94000000     	bl	0x1320 <gpio_keys_irq_isr+0x80>
		0000000000001320:  R_AARCH64_CALL26	input_event
    1324: aa1503e0     	mov	x0, x21
    1328: 2a1f03e1     	mov	w1, wzr
    132c: 2a1f03e2     	mov	w2, wzr
    1330: 2a1f03e3     	mov	w3, wzr
    1334: 94000000     	bl	0x1334 <gpio_keys_irq_isr+0x94>
		0000000000001334:  R_AARCH64_CALL26	input_event
    1338: b9404a60     	ldr	w0, [x19, #0x48]
    133c: 34000140     	cbz	w0, 0x1364 <gpio_keys_irq_isr+0xc4>
    1340: 39042676     	strb	w22, [x19, #0x109]
    1344: 90000008     	adrp	x8, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		0000000000001344:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    1348: f9400115     	ldr	x21, [x8]
		0000000000001348:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    134c: 94000000     	bl	0x134c <gpio_keys_irq_isr+0xac>
		000000000000134c:  R_AARCH64_CALL26	__msecs_to_jiffies
    1350: aa0003e8     	mov	x8, x0
    1354: 91008260     	add	x0, x19, #0x20
    1358: 8b150101     	add	x1, x8, x21
    135c: 94000000     	bl	0x135c <gpio_keys_irq_isr+0xbc>
		000000000000135c:  R_AARCH64_CALL26	mod_timer
    1360: 1400000c     	b	0x1390 <gpio_keys_irq_isr+0xf0>
    1364: f9400e68     	ldr	x8, [x19, #0x18]
    1368: aa1503e0     	mov	x0, x21
    136c: 52800021     	mov	w1, #0x1                // =1
    1370: 2a1f03e3     	mov	w3, wzr
    1374: 79400102     	ldrh	w2, [x8]
    1378: 94000000     	bl	0x1378 <gpio_keys_irq_isr+0xd8>
		0000000000001378:  R_AARCH64_CALL26	input_event
    137c: aa1503e0     	mov	x0, x21
    1380: 2a1f03e1     	mov	w1, wzr
    1384: 2a1f03e2     	mov	w2, wzr
    1388: 2a1f03e3     	mov	w3, wzr
    138c: 94000000     	bl	0x138c <gpio_keys_irq_isr+0xec>
		000000000000138c:  R_AARCH64_CALL26	input_event
    1390: 91041260     	add	x0, x19, #0x104
    1394: aa1403e1     	mov	x1, x20
    1398: 94000000     	bl	0x1398 <gpio_keys_irq_isr+0xf8>
		0000000000001398:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    139c: 52800020     	mov	w0, #0x1                // =1
    13a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    13a4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    13a8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    13ac: d50323bf     	autiasp
    13b0: d65f03c0     	ret
    13b4: d4210000     	brk	#0x800
