
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000b0 <nb_fan_remove>:
      b0: d503233f     	paciasp
      b4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
      b8: f9000bf5     	str	x21, [sp, #0x10]
      bc: a9024ff4     	stp	x20, x19, [sp, #0x20]
      c0: 910003fd     	mov	x29, sp
      c4: f9405414     	ldr	x20, [x0, #0xa8]
      c8: b4000634     	cbz	x20, 0x18c <nb_fan_remove+0xdc>
      cc: aa0003f3     	mov	x19, x0
      d0: f9400a80     	ldr	x0, [x20, #0x10]
      d4: b4000080     	cbz	x0, 0xe4 <nb_fan_remove+0x34>
      d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xf0
      dc: 91000021     	add	x1, x1, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xf0
      e0: 94000000     	bl	0xe0 <nb_fan_remove+0x30>
		00000000000000e0:  R_AARCH64_CALL26	sysfs_remove_group
      e4: f9400688     	ldr	x8, [x20, #0x8]
      e8: b4000108     	cbz	x8, 0x108 <nb_fan_remove+0x58>
      ec: f9402909     	ldr	x9, [x8, #0x50]
      f0: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1764
      f4: 9100014a     	add	x10, x10, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1764
      f8: eb0a013f     	cmp	x9, x10
      fc: 54000061     	b.ne	0x108 <nb_fan_remove+0x58>
     100: 9100a100     	add	x0, x8, #0x28
     104: 94000000     	bl	0x104 <nb_fan_remove+0x54>
		0000000000000104:  R_AARCH64_CALL26	hrtimer_cancel
     108: 91006280     	add	x0, x20, #0x18
     10c: 94000000     	bl	0x10c <nb_fan_remove+0x5c>
		000000000000010c:  R_AARCH64_CALL26	mutex_lock
     110: f9400680     	ldr	x0, [x20, #0x8]
     114: b40000a0     	cbz	x0, 0x128 <nb_fan_remove+0x78>
     118: 39400008     	ldrb	w8, [x0]
     11c: 34000068     	cbz	w8, 0x128 <nb_fan_remove+0x78>
     120: 2a1f03e1     	mov	w1, wzr
     124: 940004ff     	bl	0x1520 <fan_level_set>
     128: b9403a88     	ldr	w8, [x20, #0x38]
     12c: 7100051f     	cmp	w8, #0x1
     130: 5400018b     	b.lt	0x160 <nb_fan_remove+0xb0>
     134: b9403a95     	ldr	w21, [x20, #0x38]
     138: f9402680     	ldr	x0, [x20, #0x48]
     13c: 9400045d     	bl	0x12b0 <nb_fan_regulator_disable>
     140: 2a0003e1     	mov	w1, w0
     144: 35000080     	cbnz	w0, 0x154 <nb_fan_remove+0xa4>
     148: b9403a88     	ldr	w8, [x20, #0x38]
     14c: 6b15011f     	cmp	w8, w21
     150: 54fffecb     	b.lt	0x128 <nb_fan_remove+0x78>
     154: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ee
     158: 91000000     	add	x0, x0, #0x0
		0000000000000158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ee
     15c: 94000000     	bl	0x15c <nb_fan_remove+0xac>
		000000000000015c:  R_AARCH64_CALL26	_printk
     160: 91006280     	add	x0, x20, #0x18
     164: 94000000     	bl	0x164 <nb_fan_remove+0xb4>
		0000000000000164:  R_AARCH64_CALL26	mutex_unlock
     168: f900567f     	str	xzr, [x19, #0xa8]
     16c: f9400a80     	ldr	x0, [x20, #0x10]
     170: b4000040     	cbz	x0, 0x178 <nb_fan_remove+0xc8>
     174: 94000000     	bl	0x174 <nb_fan_remove+0xc4>
		0000000000000174:  R_AARCH64_CALL26	kobject_put
     178: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000178:  R_AARCH64_ADR_PREL_PG_HI21	chip
     17c: f9400109     	ldr	x9, [x8]
		000000000000017c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     180: eb14013f     	cmp	x9, x20
     184: 54000041     	b.ne	0x18c <nb_fan_remove+0xdc>
     188: f900011f     	str	xzr, [x8]
		0000000000000188:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     18c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     190: f9400bf5     	ldr	x21, [sp, #0x10]
     194: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     198: d50323bf     	autiasp
     19c: d65f03c0     	ret
