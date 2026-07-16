
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001168 <gpio_keys_gpio_isr>:
    1168: d503233f     	paciasp
    116c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1170: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1174: 910003fd     	mov	x29, sp
    1178: b940bc28     	ldr	w8, [x1, #0xbc]
    117c: aa0103f3     	mov	x19, x1
    1180: 6b00011f     	cmp	w8, w0
    1184: 54000080     	b.eq	0x1194 <gpio_keys_gpio_isr+0x2c>
    1188: b940c268     	ldr	w8, [x19, #0xc0]
    118c: 6b00011f     	cmp	w8, w0
    1190: 54000401     	b.ne	0x1210 <gpio_keys_gpio_isr+0xa8>
    1194: f9400274     	ldr	x20, [x19]
    1198: b9401e88     	ldr	w8, [x20, #0x1c]
    119c: 340001e8     	cbz	w8, 0x11d8 <gpio_keys_gpio_isr+0x70>
    11a0: f9400668     	ldr	x8, [x19, #0x8]
    11a4: f9414900     	ldr	x0, [x8, #0x290]
    11a8: 94000000     	bl	0x11a8 <gpio_keys_gpio_isr+0x40>
		00000000000011a8:  R_AARCH64_CALL26	pm_stay_awake
    11ac: 39442a68     	ldrb	w8, [x19, #0x10a]
    11b0: 7100051f     	cmp	w8, #0x1
    11b4: 54000121     	b.ne	0x11d8 <gpio_keys_gpio_isr+0x70>
    11b8: b9401a88     	ldr	w8, [x20, #0x18]
    11bc: 7100051f     	cmp	w8, #0x1
    11c0: 540000c8     	b.hi	0x11d8 <gpio_keys_gpio_isr+0x70>
    11c4: f9400660     	ldr	x0, [x19, #0x8]
    11c8: b9400282     	ldr	w2, [x20]
    11cc: 52800021     	mov	w1, #0x1                // =1
    11d0: 52800023     	mov	w3, #0x1                // =1
    11d4: 94000000     	bl	0x11d4 <gpio_keys_gpio_isr+0x6c>
		00000000000011d4:  R_AARCH64_CALL26	input_event
    11d8: 90000008     	adrp	x8, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		00000000000011d8:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    11dc: b940ba60     	ldr	w0, [x19, #0xb8]
    11e0: f9400114     	ldr	x20, [x8]
		00000000000011e0:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    11e4: 94000000     	bl	0x11e4 <gpio_keys_gpio_isr+0x7c>
		00000000000011e4:  R_AARCH64_CALL26	__msecs_to_jiffies
    11e8: aa0003e3     	mov	x3, x0
    11ec: 91014262     	add	x2, x19, #0x50
    11f0: 52800400     	mov	w0, #0x20               // =32
    11f4: aa1403e1     	mov	x1, x20
    11f8: 94000000     	bl	0x11f8 <gpio_keys_gpio_isr+0x90>
		00000000000011f8:  R_AARCH64_CALL26	mod_delayed_work_on
    11fc: 52800020     	mov	w0, #0x1                // =1
    1200: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1204: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1208: d50323bf     	autiasp
    120c: d65f03c0     	ret
    1210: d4210000     	brk	#0x800
