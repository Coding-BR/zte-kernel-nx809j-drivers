
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fe8 <gpio_keys_irq_isr>:
     fe8: b940bc28     	ldr	w8, [x1, #0xbc]
     fec: 6b00011f     	cmp	w8, w0
     ff0: 54000861     	b.ne	0x10fc <gpio_keys_irq_isr+0x114>
     ff4: d503233f     	paciasp
     ff8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     ffc: a90157f6     	stp	x22, x21, [sp, #0x10]
    1000: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1004: 910003fd     	mov	x29, sp
    1008: f9400435     	ldr	x21, [x1, #0x8]
    100c: 91041020     	add	x0, x1, #0x104
    1010: aa0103f3     	mov	x19, x1
    1014: 94000000     	bl	0x1014 <gpio_keys_irq_isr+0x2c>
		0000000000001014:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    1018: 39442668     	ldrb	w8, [x19, #0x109]
    101c: aa0003f4     	mov	x20, x0
    1020: 36000088     	tbz	w8, #0x0, 0x1030 <gpio_keys_irq_isr+0x48>
    1024: b9404a60     	ldr	w0, [x19, #0x48]
    1028: 35000320     	cbnz	w0, 0x108c <gpio_keys_irq_isr+0xa4>
    102c: 1400002b     	b	0x10d8 <gpio_keys_irq_isr+0xf0>
    1030: f9400268     	ldr	x8, [x19]
    1034: b9401d08     	ldr	w8, [x8, #0x1c]
    1038: 340000c8     	cbz	w8, 0x1050 <gpio_keys_irq_isr+0x68>
    103c: f9400668     	ldr	x8, [x19, #0x8]
    1040: 2a1f03e1     	mov	w1, wzr
    1044: 2a1f03e2     	mov	w2, wzr
    1048: f9414900     	ldr	x0, [x8, #0x290]
    104c: 94000000     	bl	0x104c <gpio_keys_irq_isr+0x64>
		000000000000104c:  R_AARCH64_CALL26	pm_wakeup_dev_event
    1050: f9400e68     	ldr	x8, [x19, #0x18]
    1054: aa1503e0     	mov	x0, x21
    1058: 52800021     	mov	w1, #0x1                // =1
    105c: 52800023     	mov	w3, #0x1                // =1
    1060: 52800036     	mov	w22, #0x1               // =1
    1064: 79400102     	ldrh	w2, [x8]
    1068: 94000000     	bl	0x1068 <gpio_keys_irq_isr+0x80>
		0000000000001068:  R_AARCH64_CALL26	input_event
    106c: aa1503e0     	mov	x0, x21
    1070: 2a1f03e1     	mov	w1, wzr
    1074: 2a1f03e2     	mov	w2, wzr
    1078: 2a1f03e3     	mov	w3, wzr
    107c: 94000000     	bl	0x107c <gpio_keys_irq_isr+0x94>
		000000000000107c:  R_AARCH64_CALL26	input_event
    1080: b9404a60     	ldr	w0, [x19, #0x48]
    1084: 34000140     	cbz	w0, 0x10ac <gpio_keys_irq_isr+0xc4>
    1088: 39042676     	strb	w22, [x19, #0x109]
    108c: 90000008     	adrp	x8, 0x1000 <gpio_keys_irq_isr+0x18>
		000000000000108c:  R_AARCH64_ADR_PREL_PG_HI21	jiffies
    1090: f9400115     	ldr	x21, [x8]
		0000000000001090:  R_AARCH64_LDST64_ABS_LO12_NC	jiffies
    1094: 94000000     	bl	0x1094 <gpio_keys_irq_isr+0xac>
		0000000000001094:  R_AARCH64_CALL26	__msecs_to_jiffies
    1098: aa0003e8     	mov	x8, x0
    109c: 91008260     	add	x0, x19, #0x20
    10a0: 8b150101     	add	x1, x8, x21
    10a4: 94000000     	bl	0x10a4 <gpio_keys_irq_isr+0xbc>
		00000000000010a4:  R_AARCH64_CALL26	mod_timer
    10a8: 1400000c     	b	0x10d8 <gpio_keys_irq_isr+0xf0>
    10ac: f9400e68     	ldr	x8, [x19, #0x18]
    10b0: aa1503e0     	mov	x0, x21
    10b4: 52800021     	mov	w1, #0x1                // =1
    10b8: 2a1f03e3     	mov	w3, wzr
    10bc: 79400102     	ldrh	w2, [x8]
    10c0: 94000000     	bl	0x10c0 <gpio_keys_irq_isr+0xd8>
		00000000000010c0:  R_AARCH64_CALL26	input_event
    10c4: aa1503e0     	mov	x0, x21
    10c8: 2a1f03e1     	mov	w1, wzr
    10cc: 2a1f03e2     	mov	w2, wzr
    10d0: 2a1f03e3     	mov	w3, wzr
    10d4: 94000000     	bl	0x10d4 <gpio_keys_irq_isr+0xec>
		00000000000010d4:  R_AARCH64_CALL26	input_event
    10d8: 91041260     	add	x0, x19, #0x104
    10dc: aa1403e1     	mov	x1, x20
    10e0: 94000000     	bl	0x10e0 <gpio_keys_irq_isr+0xf8>
		00000000000010e0:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    10e4: 52800020     	mov	w0, #0x1                // =1
    10e8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    10ec: a94157f6     	ldp	x22, x21, [sp, #0x10]
    10f0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    10f4: d50323bf     	autiasp
    10f8: d65f03c0     	ret
    10fc: d4210000     	brk	#0x800
