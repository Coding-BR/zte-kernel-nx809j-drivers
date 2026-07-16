
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000124c <gpio_keys_irq_isr>:
    124c: b940bc28     	ldr	w8, [x1, #0xbc]
    1250: 6b00011f     	cmp	w8, w0
    1254: 54000861     	b.ne	0x1360 <gpio_keys_irq_isr+0x114>
    1258: d503233f     	paciasp
    125c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1260: a90157f6     	stp	x22, x21, [sp, #0x10]
    1264: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1268: 910003fd     	mov	x29, sp
    126c: f9400435     	ldr	x21, [x1, #0x8]
    1270: 91041020     	add	x0, x1, #0x104
    1274: aa0103f3     	mov	x19, x1
    1278: 94000000     	bl	0x1278 <gpio_keys_irq_isr+0x2c>
		0000000000001278:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    127c: 39442668     	ldrb	w8, [x19, #0x109]
    1280: aa0003f4     	mov	x20, x0
    1284: 36000088     	tbz	w8, #0x0, 0x1294 <gpio_keys_irq_isr+0x48>
    1288: b9404a60     	ldr	w0, [x19, #0x48]
    128c: 35000320     	cbnz	w0, 0x12f0 <gpio_keys_irq_isr+0xa4>
    1290: 1400002b     	b	0x133c <gpio_keys_irq_isr+0xf0>
    1294: f9400268     	ldr	x8, [x19]
    1298: b9401d08     	ldr	w8, [x8, #0x1c]
    129c: 340000c8     	cbz	w8, 0x12b4 <gpio_keys_irq_isr+0x68>
    12a0: f9400668     	ldr	x8, [x19, #0x8]
    12a4: 2a1f03e1     	mov	w1, wzr
    12a8: 2a1f03e2     	mov	w2, wzr
    12ac: f9414900     	ldr	x0, [x8, #0x290]
    12b0: 94000000     	bl	0x12b0 <gpio_keys_irq_isr+0x64>
		00000000000012b0:  R_AARCH64_CALL26	pm_wakeup_dev_event
    12b4: f9400e68     	ldr	x8, [x19, #0x18]
    12b8: aa1503e0     	mov	x0, x21
    12bc: 52800021     	mov	w1, #0x1                // =1
    12c0: 52800023     	mov	w3, #0x1                // =1
    12c4: 52800036     	mov	w22, #0x1               // =1
    12c8: 79400102     	ldrh	w2, [x8]
    12cc: 94000000     	bl	0x12cc <gpio_keys_irq_isr+0x80>
		00000000000012cc:  R_AARCH64_CALL26	input_event
    12d0: aa1503e0     	mov	x0, x21
    12d4: 2a1f03e1     	mov	w1, wzr
    12d8: 2a1f03e2     	mov	w2, wzr
    12dc: 2a1f03e3     	mov	w3, wzr
    12e0: 94000000     	bl	0x12e0 <gpio_keys_irq_isr+0x94>
		00000000000012e0:  R_AARCH64_CALL26	input_event
    12e4: b9404a60     	ldr	w0, [x19, #0x48]
    12e8: 34000140     	cbz	w0, 0x1310 <gpio_keys_irq_isr+0xc4>
    12ec: 39042676     	strb	w22, [x19, #0x109]
    12f0: 90000008     	adrp	x8, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		00000000000012f0:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    12f4: f9400115     	ldr	x21, [x8]
		00000000000012f4:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    12f8: 94000000     	bl	0x12f8 <gpio_keys_irq_isr+0xac>
		00000000000012f8:  R_AARCH64_CALL26	__msecs_to_jiffies
    12fc: aa0003e8     	mov	x8, x0
    1300: 91008260     	add	x0, x19, #0x20
    1304: 8b150101     	add	x1, x8, x21
    1308: 94000000     	bl	0x1308 <gpio_keys_irq_isr+0xbc>
		0000000000001308:  R_AARCH64_CALL26	mod_timer
    130c: 1400000c     	b	0x133c <gpio_keys_irq_isr+0xf0>
    1310: f9400e68     	ldr	x8, [x19, #0x18]
    1314: aa1503e0     	mov	x0, x21
    1318: 52800021     	mov	w1, #0x1                // =1
    131c: 2a1f03e3     	mov	w3, wzr
    1320: 79400102     	ldrh	w2, [x8]
    1324: 94000000     	bl	0x1324 <gpio_keys_irq_isr+0xd8>
		0000000000001324:  R_AARCH64_CALL26	input_event
    1328: aa1503e0     	mov	x0, x21
    132c: 2a1f03e1     	mov	w1, wzr
    1330: 2a1f03e2     	mov	w2, wzr
    1334: 2a1f03e3     	mov	w3, wzr
    1338: 94000000     	bl	0x1338 <gpio_keys_irq_isr+0xec>
		0000000000001338:  R_AARCH64_CALL26	input_event
    133c: 91041260     	add	x0, x19, #0x104
    1340: aa1403e1     	mov	x1, x20
    1344: 94000000     	bl	0x1344 <gpio_keys_irq_isr+0xf8>
		0000000000001344:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1348: 52800020     	mov	w0, #0x1                // =1
    134c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1350: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1354: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1358: d50323bf     	autiasp
    135c: d65f03c0     	ret
    1360: d4210000     	brk	#0x800
