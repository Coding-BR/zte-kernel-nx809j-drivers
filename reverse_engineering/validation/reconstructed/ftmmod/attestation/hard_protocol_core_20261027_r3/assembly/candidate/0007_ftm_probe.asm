
/input/ftmmod.ko:	file format elf64-littleaarch64

Disassembly of section .init.text:

00000000000000b4 <ftm_probe>:
      b4: d503233f     	paciasp
      b8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
      bc: f9000bf3     	str	x19, [sp, #0x10]
      c0: 910003fd     	mov	x29, sp
      c4: aa0003f3     	mov	x19, x0
      c8: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122
      cc: 91000000     	add	x0, x0, #0x0
		00000000000000cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122
      d0: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x159
      d4: 91000021     	add	x1, x1, #0x0
		00000000000000d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x159
      d8: 94000000     	bl	0xd8 <ftm_probe+0x24>
		00000000000000d8:  R_AARCH64_CALL26	_printk
      dc: 90000002     	adrp	x2, 0x0 <.init.text>
		00000000000000dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      e0: 91000042     	add	x2, x2, #0x0
		00000000000000e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      e4: aa1f03e0     	mov	x0, xzr
      e8: aa1f03e1     	mov	x1, xzr
      ec: 94000000     	bl	0xec <ftm_probe+0x38>
		00000000000000ec:  R_AARCH64_CALL26	of_find_compatible_node
      f0: b5000080     	cbnz	x0, 0x100 <ftm_probe+0x4c>
      f4: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21f
      f8: 91000000     	add	x0, x0, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21f
      fc: 14000008     	b	0x11c <ftm_probe+0x68>
     100: 2a1f03e1     	mov	w1, wzr
     104: 94000000     	bl	0x104 <ftm_probe+0x50>
		0000000000000104:  R_AARCH64_CALL26	of_iomap
     108: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     10c: f9000100     	str	x0, [x8]
		000000000000010c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     110: b5000080     	cbnz	x0, 0x120 <ftm_probe+0x6c>
     114: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2
     118: 91000000     	add	x0, x0, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2
     11c: 94000000     	bl	0x11c <ftm_probe+0x68>
		000000000000011c:  R_AARCH64_CALL26	_printk
     120: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000120:  R_AARCH64_ADR_PREL_PG_HI21	arm64_use_ng_mappings
     124: d280e26a     	mov	x10, #0x713             // =1811
     128: 52900000     	mov	w0, #0x8000             // =32768
     12c: 39400108     	ldrb	w8, [x8]
		000000000000012c:  R_AARCH64_LDST8_ABS_LO12_NC	arm64_use_ng_mappings
     130: f2e00d0a     	movk	x10, #0x68, lsl #48
     134: 90000009     	adrp	x9, 0x0 <.init.text>
		0000000000000134:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     138: b275014c     	orr	x12, x10, #0x800
     13c: 5280002b     	mov	w11, #0x1               // =1
     140: 72a000a0     	movk	w0, #0x5, lsl #16
     144: 7100011f     	cmp	w8, #0x0
     148: 52820001     	mov	w1, #0x1000             // =4096
     14c: 3900012b     	strb	w11, [x9]
		000000000000014c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
     150: 9a8a1182     	csel	x2, x12, x10, ne
     154: 94000000     	bl	0x154 <ftm_probe+0xa0>
		0000000000000154:  R_AARCH64_CALL26	ioremap_prot
     158: 90000008     	adrp	x8, 0x0 <.init.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x10
     15c: f9000100     	str	x0, [x8]
		000000000000015c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x10
     160: b5000100     	cbnz	x0, 0x180 <ftm_probe+0xcc>
     164: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81
     168: 91000000     	add	x0, x0, #0x0
		0000000000000168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81
     16c: 90000001     	adrp	x1, 0x0 <.init.text>
		000000000000016c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x159
     170: 91000021     	add	x1, x1, #0x0
		0000000000000170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x159
     174: 94000000     	bl	0x174 <ftm_probe+0xc0>
		0000000000000174:  R_AARCH64_CALL26	_printk
     178: 12800173     	mov	w19, #-0xc              // =-12
     17c: 14000011     	b	0x1c0 <ftm_probe+0x10c>
     180: 90000001     	adrp	x1, 0x0 <.init.text>
		0000000000000180:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x4e0
     184: 91000021     	add	x1, x1, #0x0
		0000000000000184:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x4e0
     188: 91004260     	add	x0, x19, #0x10
     18c: 94000000     	bl	0x18c <ftm_probe+0xd8>
		000000000000018c:  R_AARCH64_CALL26	sysfs_create_group
     190: 2a0003f3     	mov	w19, w0
     194: 350000e0     	cbnz	w0, 0x1b0 <ftm_probe+0xfc>
     198: 90000000     	adrp	x0, 0x0 <.init.text>
		0000000000000198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d
     19c: 91000000     	add	x0, x0, #0x0
		000000000000019c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d
     1a0: 90000001     	adrp	x1, 0x0 <.init.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x159
     1a4: 91000021     	add	x1, x1, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x159
     1a8: 94000000     	bl	0x1a8 <ftm_probe+0xf4>
		00000000000001a8:  R_AARCH64_CALL26	_printk
     1ac: 14000005     	b	0x1c0 <ftm_probe+0x10c>
     1b0: 90000000     	adrp	x0, 0x0 <.init.text>
		00000000000001b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe3
     1b4: 91000000     	add	x0, x0, #0x0
		00000000000001b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe3
     1b8: 2a1303e1     	mov	w1, w19
     1bc: 94000000     	bl	0x1bc <ftm_probe+0x108>
		00000000000001bc:  R_AARCH64_CALL26	_printk
     1c0: 2a1303e0     	mov	w0, w19
     1c4: f9400bf3     	ldr	x19, [sp, #0x10]
     1c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     1cc: d50323bf     	autiasp
     1d0: d65f03c0     	ret
