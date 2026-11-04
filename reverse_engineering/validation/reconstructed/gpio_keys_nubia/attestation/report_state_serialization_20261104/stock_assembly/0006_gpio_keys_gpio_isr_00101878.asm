
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001160 <gpio_keys_gpio_isr>:
    1160: d503233f     	paciasp
    1164: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1168: a9014ff4     	stp	x20, x19, [sp, #0x10]
    116c: 910003fd     	mov	x29, sp
    1170: b940bc28     	ldr	w8, [x1, #0xbc]
    1174: aa0103f3     	mov	x19, x1
    1178: 6b00011f     	cmp	w8, w0
    117c: 54000080     	b.eq	0x118c <gpio_keys_gpio_isr+0x2c>
    1180: b940c268     	ldr	w8, [x19, #0xc0]
    1184: 6b00011f     	cmp	w8, w0
    1188: 54000401     	b.ne	0x1208 <gpio_keys_gpio_isr+0xa8>
    118c: f9400274     	ldr	x20, [x19]
    1190: b9401e88     	ldr	w8, [x20, #0x1c]
    1194: 340001e8     	cbz	w8, 0x11d0 <gpio_keys_gpio_isr+0x70>
    1198: f9400668     	ldr	x8, [x19, #0x8]
    119c: f9414900     	ldr	x0, [x8, #0x290]
    11a0: 94000000     	bl	0x11a0 <gpio_keys_gpio_isr+0x40>
		00000000000011a0:  R_AARCH64_CALL26	pm_stay_awake
    11a4: 39442a68     	ldrb	w8, [x19, #0x10a]
    11a8: 7100051f     	cmp	w8, #0x1
    11ac: 54000121     	b.ne	0x11d0 <gpio_keys_gpio_isr+0x70>
    11b0: b9401a88     	ldr	w8, [x20, #0x18]
    11b4: 7100051f     	cmp	w8, #0x1
    11b8: 540000c8     	b.hi	0x11d0 <gpio_keys_gpio_isr+0x70>
    11bc: f9400660     	ldr	x0, [x19, #0x8]
    11c0: b9400282     	ldr	w2, [x20]
    11c4: 52800021     	mov	w1, #0x1                // =1
    11c8: 52800023     	mov	w3, #0x1                // =1
    11cc: 94000000     	bl	0x11cc <gpio_keys_gpio_isr+0x6c>
		00000000000011cc:  R_AARCH64_CALL26	input_event
    11d0: 90000008     	adrp	x8, 0x1000 <gpio_keys_gpio_report_event+0x94>
		00000000000011d0:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    11d4: b940ba60     	ldr	w0, [x19, #0xb8]
    11d8: f9400114     	ldr	x20, [x8]
		00000000000011d8:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    11dc: 94000000     	bl	0x11dc <gpio_keys_gpio_isr+0x7c>
		00000000000011dc:  R_AARCH64_CALL26	__msecs_to_jiffies
    11e0: aa0003e3     	mov	x3, x0
    11e4: 91014262     	add	x2, x19, #0x50
    11e8: 52800400     	mov	w0, #0x20               // =32
    11ec: aa1403e1     	mov	x1, x20
    11f0: 94000000     	bl	0x11f0 <gpio_keys_gpio_isr+0x90>
		00000000000011f0:  R_AARCH64_CALL26	mod_delayed_work_on
    11f4: 52800020     	mov	w0, #0x1                // =1
    11f8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    11fc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1200: d50323bf     	autiasp
    1204: d65f03c0     	ret
    1208: d4210000     	brk	#0x800
