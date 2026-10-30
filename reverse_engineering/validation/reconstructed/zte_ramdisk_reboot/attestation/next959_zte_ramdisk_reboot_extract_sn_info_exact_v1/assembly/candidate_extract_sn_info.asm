
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000f8 <extract_sn_info>:
      f8: d503233f     	paciasp
      fc: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     100: a9015ff8     	stp	x24, x23, [sp, #0x10]
     104: a90257f6     	stp	x22, x21, [sp, #0x20]
     108: a9034ff4     	stp	x20, x19, [sp, #0x30]
     10c: 910003fd     	mov	x29, sp
     110: aa0103f3     	mov	x19, x1
     114: aa0003f5     	mov	x21, x0
     118: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29f
     11c: 91000021     	add	x1, x1, #0x0
		000000000000011c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29f
     120: aa1303e0     	mov	x0, x19
     124: aa0303f7     	mov	x23, x3
     128: aa0203f4     	mov	x20, x2
     12c: 94000000     	bl	0x12c <extract_sn_info+0x34>
		000000000000012c:  R_AARCH64_CALL26	strstr
     130: b4000373     	cbz	x19, 0x19c <extract_sn_info+0xa4>
     134: aa0003f6     	mov	x22, x0
     138: aa1303e0     	mov	x0, x19
     13c: 94000000     	bl	0x13c <extract_sn_info+0x44>
		000000000000013c:  R_AARCH64_CALL26	strlen
     140: b4000396     	cbz	x22, 0x1b0 <extract_sn_info+0xb8>
     144: cb1302c8     	sub	x8, x22, x19
     148: 91000d08     	add	x8, x8, #0x3
     14c: eb080018     	subs	x24, x0, x8
     150: 54000303     	b.lo	0x1b0 <extract_sn_info+0xb8>
     154: eb17031f     	cmp	x24, x23
     158: 54000342     	b.hs	0x1c0 <extract_sn_info+0xc8>
     15c: eb08001f     	cmp	x0, x8
     160: 54000300     	b.eq	0x1c0 <extract_sn_info+0xc8>
     164: eb00031f     	cmp	x24, x0
     168: 540002c2     	b.hs	0x1c0 <extract_sn_info+0xc8>
     16c: 91000ec1     	add	x1, x22, #0x3
     170: aa1403e0     	mov	x0, x20
     174: aa1803e2     	mov	x2, x24
     178: 94000000     	bl	0x178 <extract_sn_info+0x80>
		0000000000000178:  R_AARCH64_CALL26	strncpy
     17c: 2a1f03e0     	mov	w0, wzr
     180: 38386a9f     	strb	wzr, [x20, x24]
     184: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     188: a94257f6     	ldp	x22, x21, [sp, #0x20]
     18c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     190: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     194: d50323bf     	autiasp
     198: d65f03c0     	ret
     19c: f94002a0     	ldr	x0, [x21]
     1a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c4
     1a4: 91000021     	add	x1, x1, #0x0
		00000000000001a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c4
     1a8: 94000000     	bl	0x1a8 <extract_sn_info+0xb0>
		00000000000001a8:  R_AARCH64_CALL26	_dev_err
     1ac: 1400000a     	b	0x1d4 <extract_sn_info+0xdc>
     1b0: f94002a0     	ldr	x0, [x21]
     1b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd3
     1b8: 91000021     	add	x1, x1, #0x0
		00000000000001b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd3
     1bc: 14000004     	b	0x1cc <extract_sn_info+0xd4>
     1c0: f94002a0     	ldr	x0, [x21]
     1c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d
     1c8: 91000021     	add	x1, x1, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d
     1cc: aa1303e2     	mov	x2, x19
     1d0: 94000000     	bl	0x1d0 <extract_sn_info+0xd8>
		00000000000001d0:  R_AARCH64_CALL26	_dev_err
     1d4: 12800000     	mov	w0, #-0x1               // =-1
     1d8: 17ffffeb     	b	0x184 <extract_sn_info+0x8c>
