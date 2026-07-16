
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001114 <gpio_keys_gpio_isr>:
    1114: d503233f     	paciasp
    1118: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    111c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1120: 910003fd     	mov	x29, sp
    1124: b940bc28     	ldr	w8, [x1, #0xbc]
    1128: aa0103f3     	mov	x19, x1
    112c: 6b00011f     	cmp	w8, w0
    1130: 54000080     	b.eq	0x1140 <gpio_keys_gpio_isr+0x2c>
    1134: b940c268     	ldr	w8, [x19, #0xc0]
    1138: 6b00011f     	cmp	w8, w0
    113c: 54000401     	b.ne	0x11bc <gpio_keys_gpio_isr+0xa8>
    1140: f9400274     	ldr	x20, [x19]
    1144: b9401e88     	ldr	w8, [x20, #0x1c]
    1148: 340001e8     	cbz	w8, 0x1184 <gpio_keys_gpio_isr+0x70>
    114c: f9400668     	ldr	x8, [x19, #0x8]
    1150: f9414900     	ldr	x0, [x8, #0x290]
    1154: 94000000     	bl	0x1154 <gpio_keys_gpio_isr+0x40>
		0000000000001154:  R_AARCH64_CALL26	pm_stay_awake
    1158: 39442a68     	ldrb	w8, [x19, #0x10a]
    115c: 7100051f     	cmp	w8, #0x1
    1160: 54000121     	b.ne	0x1184 <gpio_keys_gpio_isr+0x70>
    1164: b9401a88     	ldr	w8, [x20, #0x18]
    1168: 7100051f     	cmp	w8, #0x1
    116c: 540000c8     	b.hi	0x1184 <gpio_keys_gpio_isr+0x70>
    1170: f9400660     	ldr	x0, [x19, #0x8]
    1174: b9400282     	ldr	w2, [x20]
    1178: 52800021     	mov	w1, #0x1                // =1
    117c: 52800023     	mov	w3, #0x1                // =1
    1180: 94000000     	bl	0x1180 <gpio_keys_gpio_isr+0x6c>
		0000000000001180:  R_AARCH64_CALL26	input_event
    1184: 90000008     	adrp	x8, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		0000000000001184:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1188: b940ba60     	ldr	w0, [x19, #0xb8]
    118c: f9400114     	ldr	x20, [x8]
		000000000000118c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    1190: 94000000     	bl	0x1190 <gpio_keys_gpio_isr+0x7c>
		0000000000001190:  R_AARCH64_CALL26	__msecs_to_jiffies
    1194: aa0003e3     	mov	x3, x0
    1198: 91014262     	add	x2, x19, #0x50
    119c: 52800400     	mov	w0, #0x20               // =32
    11a0: aa1403e1     	mov	x1, x20
    11a4: 94000000     	bl	0x11a4 <gpio_keys_gpio_isr+0x90>
		00000000000011a4:  R_AARCH64_CALL26	mod_delayed_work_on
    11a8: 52800020     	mov	w0, #0x1                // =1
    11ac: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    11b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    11b4: d50323bf     	autiasp
    11b8: d65f03c0     	ret
    11bc: d4210000     	brk	#0x800
