
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <aw22xxx_led_imax_cfg>:
       0: d503233f     	paciasp
       4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       8: a9014ff4     	stp	x20, x19, [sp, #0x10]
       c: 910003fd     	mov	x29, sp
      10: 52801fe1     	mov	w1, #0xff               // =255
      14: 2a1f03e2     	mov	w2, wzr
      18: aa0003f3     	mov	x19, x0
      1c: 94000011     	bl	0x60 <aw22xxx_i2c_write>
      20: aa1303e0     	mov	x0, x19
      24: 52800161     	mov	w1, #0xb                // =11
      28: 528000e2     	mov	w2, #0x7                // =7
      2c: 528000f4     	mov	w20, #0x7               // =7
      30: 9400000c     	bl	0x60 <aw22xxx_i2c_write>
      34: 90000000     	adrp	x0, 0x0 <aw22xxx_led_imax_cfg>
		0000000000000034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56e
      38: 91000000     	add	x0, x0, #0x0
		0000000000000038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56e
      3c: 90000001     	adrp	x1, 0x0 <aw22xxx_led_imax_cfg>
		000000000000003c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197
      40: 91000021     	add	x1, x1, #0x0
		0000000000000040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197
      44: b902f274     	str	w20, [x19, #0x2f0]
      48: 94000000     	bl	0x48 <aw22xxx_led_imax_cfg+0x48>
		0000000000000048:  R_AARCH64_CALL26	_printk
      4c: 2a1f03e0     	mov	w0, wzr
      50: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      54: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      58: d50323bf     	autiasp
      5c: d65f03c0     	ret
