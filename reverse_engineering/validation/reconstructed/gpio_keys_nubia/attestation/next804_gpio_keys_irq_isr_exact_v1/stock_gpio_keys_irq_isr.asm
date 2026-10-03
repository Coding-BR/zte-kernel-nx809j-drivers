
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001298 <gpio_keys_irq_isr>:
    1298: b940bc28     	ldr	w8, [x1, #0xbc]
    129c: 6b00011f     	cmp	w8, w0
    12a0: 54000861     	b.ne	0x13ac <gpio_keys_irq_isr+0x114>
    12a4: d503233f     	paciasp
    12a8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    12ac: a90157f6     	stp	x22, x21, [sp, #0x10]
    12b0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    12b4: 910003fd     	mov	x29, sp
    12b8: f9400435     	ldr	x21, [x1, #0x8]
    12bc: 91041020     	add	x0, x1, #0x104
    12c0: aa0103f3     	mov	x19, x1
    12c4: 94000000     	bl	0x12c4 <gpio_keys_irq_isr+0x2c>
		00000000000012c4:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    12c8: 39442668     	ldrb	w8, [x19, #0x109]
    12cc: aa0003f4     	mov	x20, x0
    12d0: 36000088     	tbz	w8, #0x0, 0x12e0 <gpio_keys_irq_isr+0x48>
    12d4: b9404a60     	ldr	w0, [x19, #0x48]
    12d8: 35000320     	cbnz	w0, 0x133c <gpio_keys_irq_isr+0xa4>
    12dc: 1400002b     	b	0x1388 <gpio_keys_irq_isr+0xf0>
    12e0: f9400268     	ldr	x8, [x19]
    12e4: b9401d08     	ldr	w8, [x8, #0x1c]
    12e8: 340000c8     	cbz	w8, 0x1300 <gpio_keys_irq_isr+0x68>
    12ec: f9400668     	ldr	x8, [x19, #0x8]
    12f0: 2a1f03e1     	mov	w1, wzr
    12f4: 2a1f03e2     	mov	w2, wzr
    12f8: f9414900     	ldr	x0, [x8, #0x290]
    12fc: 94000000     	bl	0x12fc <gpio_keys_irq_isr+0x64>
		00000000000012fc:  R_AARCH64_CALL26	pm_wakeup_dev_event
    1300: f9400e68     	ldr	x8, [x19, #0x18]
    1304: aa1503e0     	mov	x0, x21
    1308: 52800021     	mov	w1, #0x1                // =1
    130c: 52800023     	mov	w3, #0x1                // =1
    1310: 52800036     	mov	w22, #0x1               // =1
    1314: 79400102     	ldrh	w2, [x8]
    1318: 94000000     	bl	0x1318 <gpio_keys_irq_isr+0x80>
		0000000000001318:  R_AARCH64_CALL26	input_event
    131c: aa1503e0     	mov	x0, x21
    1320: 2a1f03e1     	mov	w1, wzr
    1324: 2a1f03e2     	mov	w2, wzr
    1328: 2a1f03e3     	mov	w3, wzr
    132c: 94000000     	bl	0x132c <gpio_keys_irq_isr+0x94>
		000000000000132c:  R_AARCH64_CALL26	input_event
    1330: b9404a60     	ldr	w0, [x19, #0x48]
    1334: 34000140     	cbz	w0, 0x135c <gpio_keys_irq_isr+0xc4>
    1338: 39042676     	strb	w22, [x19, #0x109]
    133c: 90000008     	adrp	x8, 0x1000 <gpio_keys_gpio_report_event+0x94>
		000000000000133c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    1340: f9400115     	ldr	x21, [x8]
		0000000000001340:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1344: 94000000     	bl	0x1344 <gpio_keys_irq_isr+0xac>
		0000000000001344:  R_AARCH64_CALL26	__msecs_to_jiffies
    1348: aa0003e8     	mov	x8, x0
    134c: 91008260     	add	x0, x19, #0x20
    1350: 8b150101     	add	x1, x8, x21
    1354: 94000000     	bl	0x1354 <gpio_keys_irq_isr+0xbc>
		0000000000001354:  R_AARCH64_CALL26	mod_timer
    1358: 1400000c     	b	0x1388 <gpio_keys_irq_isr+0xf0>
    135c: f9400e68     	ldr	x8, [x19, #0x18]
    1360: aa1503e0     	mov	x0, x21
    1364: 52800021     	mov	w1, #0x1                // =1
    1368: 2a1f03e3     	mov	w3, wzr
    136c: 79400102     	ldrh	w2, [x8]
    1370: 94000000     	bl	0x1370 <gpio_keys_irq_isr+0xd8>
		0000000000001370:  R_AARCH64_CALL26	input_event
    1374: aa1503e0     	mov	x0, x21
    1378: 2a1f03e1     	mov	w1, wzr
    137c: 2a1f03e2     	mov	w2, wzr
    1380: 2a1f03e3     	mov	w3, wzr
    1384: 94000000     	bl	0x1384 <gpio_keys_irq_isr+0xec>
		0000000000001384:  R_AARCH64_CALL26	input_event
    1388: 91041260     	add	x0, x19, #0x104
    138c: aa1403e1     	mov	x1, x20
    1390: 94000000     	bl	0x1390 <gpio_keys_irq_isr+0xf8>
		0000000000001390:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1394: 52800020     	mov	w0, #0x1                // =1
    1398: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    139c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    13a0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    13a4: d50323bf     	autiasp
    13a8: d65f03c0     	ret
    13ac: d4210000     	brk	#0x800
