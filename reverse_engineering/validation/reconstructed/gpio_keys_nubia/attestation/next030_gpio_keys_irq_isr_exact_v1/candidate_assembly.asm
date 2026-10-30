
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f74 <gpio_keys_irq_isr>:
     f74: b940bc28     	ldr	w8, [x1, #0xbc]
     f78: 6b00011f     	cmp	w8, w0
     f7c: 54000861     	b.ne	0x1088 <gpio_keys_irq_isr+0x114>
     f80: d503233f     	paciasp
     f84: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     f88: a90157f6     	stp	x22, x21, [sp, #0x10]
     f8c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     f90: 910003fd     	mov	x29, sp
     f94: f9400435     	ldr	x21, [x1, #0x8]
     f98: 91041020     	add	x0, x1, #0x104
     f9c: aa0103f3     	mov	x19, x1
     fa0: 94000000     	bl	0xfa0 <gpio_keys_irq_isr+0x2c>
		0000000000000fa0:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     fa4: 39442668     	ldrb	w8, [x19, #0x109]
     fa8: aa0003f4     	mov	x20, x0
     fac: 36000088     	tbz	w8, #0x0, 0xfbc <gpio_keys_irq_isr+0x48>
     fb0: b9404a60     	ldr	w0, [x19, #0x48]
     fb4: 35000320     	cbnz	w0, 0x1018 <gpio_keys_irq_isr+0xa4>
     fb8: 1400002b     	b	0x1064 <gpio_keys_irq_isr+0xf0>
     fbc: f9400268     	ldr	x8, [x19]
     fc0: b9401d08     	ldr	w8, [x8, #0x1c]
     fc4: 340000c8     	cbz	w8, 0xfdc <gpio_keys_irq_isr+0x68>
     fc8: f9400668     	ldr	x8, [x19, #0x8]
     fcc: 2a1f03e1     	mov	w1, wzr
     fd0: 2a1f03e2     	mov	w2, wzr
     fd4: f9414900     	ldr	x0, [x8, #0x290]
     fd8: 94000000     	bl	0xfd8 <gpio_keys_irq_isr+0x64>
		0000000000000fd8:  R_AARCH64_CALL26	pm_wakeup_dev_event
     fdc: f9400e68     	ldr	x8, [x19, #0x18]
     fe0: aa1503e0     	mov	x0, x21
     fe4: 52800021     	mov	w1, #0x1                // =1
     fe8: 52800023     	mov	w3, #0x1                // =1
     fec: 52800036     	mov	w22, #0x1               // =1
     ff0: 79400102     	ldrh	w2, [x8]
     ff4: 94000000     	bl	0xff4 <gpio_keys_irq_isr+0x80>
		0000000000000ff4:  R_AARCH64_CALL26	input_event
     ff8: aa1503e0     	mov	x0, x21
     ffc: 2a1f03e1     	mov	w1, wzr
    1000: 2a1f03e2     	mov	w2, wzr
    1004: 2a1f03e3     	mov	w3, wzr
    1008: 94000000     	bl	0x1008 <gpio_keys_irq_isr+0x94>
		0000000000001008:  R_AARCH64_CALL26	input_event
    100c: b9404a60     	ldr	w0, [x19, #0x48]
    1010: 34000140     	cbz	w0, 0x1038 <gpio_keys_irq_isr+0xc4>
    1014: 39042676     	strb	w22, [x19, #0x109]
    1018: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x8c>
		0000000000001018:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    101c: f9400115     	ldr	x21, [x8]
		000000000000101c:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1020: 94000000     	bl	0x1020 <gpio_keys_irq_isr+0xac>
		0000000000001020:  R_AARCH64_CALL26	__msecs_to_jiffies
    1024: aa0003e8     	mov	x8, x0
    1028: 91008260     	add	x0, x19, #0x20
    102c: 8b150101     	add	x1, x8, x21
    1030: 94000000     	bl	0x1030 <gpio_keys_irq_isr+0xbc>
		0000000000001030:  R_AARCH64_CALL26	mod_timer
    1034: 1400000c     	b	0x1064 <gpio_keys_irq_isr+0xf0>
    1038: f9400e68     	ldr	x8, [x19, #0x18]
    103c: aa1503e0     	mov	x0, x21
    1040: 52800021     	mov	w1, #0x1                // =1
    1044: 2a1f03e3     	mov	w3, wzr
    1048: 79400102     	ldrh	w2, [x8]
    104c: 94000000     	bl	0x104c <gpio_keys_irq_isr+0xd8>
		000000000000104c:  R_AARCH64_CALL26	input_event
    1050: aa1503e0     	mov	x0, x21
    1054: 2a1f03e1     	mov	w1, wzr
    1058: 2a1f03e2     	mov	w2, wzr
    105c: 2a1f03e3     	mov	w3, wzr
    1060: 94000000     	bl	0x1060 <gpio_keys_irq_isr+0xec>
		0000000000001060:  R_AARCH64_CALL26	input_event
    1064: 91041260     	add	x0, x19, #0x104
    1068: aa1403e1     	mov	x1, x20
    106c: 94000000     	bl	0x106c <gpio_keys_irq_isr+0xf8>
		000000000000106c:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1070: 52800020     	mov	w0, #0x1                // =1
    1074: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1078: a94157f6     	ldp	x22, x21, [sp, #0x10]
    107c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1080: d50323bf     	autiasp
    1084: d65f03c0     	ret
    1088: d4210000     	brk	#0x800
