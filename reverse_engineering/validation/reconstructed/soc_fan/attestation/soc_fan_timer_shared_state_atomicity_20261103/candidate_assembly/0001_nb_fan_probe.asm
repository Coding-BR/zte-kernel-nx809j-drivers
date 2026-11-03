
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <nb_fan_probe>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: a90157f6     	stp	x22, x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: aa0003f3     	mov	x19, x0
      1c: 94000340     	bl	0xd1c <nb_fan_probe_stock_exact>
      20: 340003c0     	cbz	w0, 0x98 <nb_fan_probe+0x94>
      24: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	chip
      28: f9400295     	ldr	x21, [x20]
		0000000000000028:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      2c: b4000355     	cbz	x21, 0x94 <nb_fan_probe+0x90>
      30: f94002a8     	ldr	x8, [x21]
      34: 91004269     	add	x9, x19, #0x10
      38: eb09011f     	cmp	x8, x9
      3c: 540002c1     	b.ne	0x94 <nb_fan_probe+0x90>
      40: f94006a8     	ldr	x8, [x21, #0x8]
      44: b4000148     	cbz	x8, 0x6c <nb_fan_probe+0x68>
      48: f9402909     	ldr	x9, [x8, #0x50]
      4c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1764
      50: 9100014a     	add	x10, x10, #0x0
		0000000000000050:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1764
      54: eb0a013f     	cmp	x9, x10
      58: 540000a1     	b.ne	0x6c <nb_fan_probe+0x68>
      5c: 2a0003f6     	mov	w22, w0
      60: 9100a100     	add	x0, x8, #0x28
      64: 94000000     	bl	0x64 <nb_fan_probe+0x60>
		0000000000000064:  R_AARCH64_CALL26	hrtimer_cancel
      68: 2a1603e0     	mov	w0, w22
      6c: f9400aa8     	ldr	x8, [x21, #0x10]
      70: b40000a8     	cbz	x8, 0x84 <nb_fan_probe+0x80>
      74: 2a0003f6     	mov	w22, w0
      78: aa0803e0     	mov	x0, x8
      7c: 94000000     	bl	0x7c <nb_fan_probe+0x78>
		000000000000007c:  R_AARCH64_CALL26	kobject_put
      80: 2a1603e0     	mov	w0, w22
      84: f9400288     	ldr	x8, [x20]
		0000000000000084:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      88: eb15011f     	cmp	x8, x21
      8c: 54000041     	b.ne	0x94 <nb_fan_probe+0x90>
      90: f900029f     	str	xzr, [x20]
		0000000000000090:  R_AARCH64_LDST64_ABS_LO12_NC	chip
      94: f900567f     	str	xzr, [x19, #0xa8]
      98: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      9c: a94157f6     	ldp	x22, x21, [sp, #0x10]
      a0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      a4: d50323bf     	autiasp
      a8: d65f03c0     	ret
