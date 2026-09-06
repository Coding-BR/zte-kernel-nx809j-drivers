
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000d0 <netlink_init>:
      d0: d503233f     	paciasp
      d4: d10103ff     	sub	sp, sp, #0x40
      d8: a9037bfd     	stp	x29, x30, [sp, #0x30]
      dc: 9100c3fd     	add	x29, sp, #0x30
      e0: d5384108     	mrs	x8, SP_EL0
      e4: 90000009     	adrp	x9, 0x0 <zte_goodix_pinctrl_select>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4f0
      e8: 91000129     	add	x9, x9, #0x0
		00000000000000e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4f0
      ec: f9438908     	ldr	x8, [x8, #0x710]
      f0: a9412d2a     	ldp	x10, x11, [x9, #0x10]
      f4: 90000000     	adrp	x0, 0x0 <zte_goodix_pinctrl_select>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	init_net
      f8: 91000000     	add	x0, x0, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	init_net
      fc: 90000002     	adrp	x2, 0x0 <zte_goodix_pinctrl_select>
		00000000000000fc:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
     100: 91000042     	add	x2, x2, #0x0
		0000000000000100:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
     104: f81f83a8     	stur	x8, [x29, #-0x8]
     108: f9401128     	ldr	x8, [x9, #0x20]
     10c: a9012fea     	stp	x10, x11, [sp, #0x10]
     110: 910003e3     	mov	x3, sp
     114: 52800321     	mov	w1, #0x19               // =25
     118: f90013e8     	str	x8, [sp, #0x20]
     11c: a9402928     	ldp	x8, x10, [x9]
     120: a9002be8     	stp	x8, x10, [sp]
     124: 94000000     	bl	0x124 <netlink_init+0x54>
		0000000000000124:  R_AARCH64_CALL26	__netlink_kernel_create
     128: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		0000000000000128:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     12c: f100001f     	cmp	x0, #0x0
     130: 90000009     	adrp	x9, 0x0 <zte_goodix_pinctrl_select>
		0000000000000130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb36
     134: 91000129     	add	x9, x9, #0x0
		0000000000000134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb36
     138: f9000100     	str	x0, [x8]
		0000000000000138:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e0
     13c: 90000008     	adrp	x8, 0x0 <zte_goodix_pinctrl_select>
		000000000000013c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8b2
     140: 91000108     	add	x8, x8, #0x0
		0000000000000140:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8b2
     144: 90000001     	adrp	x1, 0x0 <zte_goodix_pinctrl_select>
		0000000000000144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5d
     148: 91000021     	add	x1, x1, #0x0
		0000000000000148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5d
     14c: 9a880120     	csel	x0, x9, x8, eq
     150: 94000000     	bl	0x150 <netlink_init+0x80>
		0000000000000150:  R_AARCH64_CALL26	_printk
     154: d5384108     	mrs	x8, SP_EL0
     158: f9438908     	ldr	x8, [x8, #0x710]
     15c: f85f83a9     	ldur	x9, [x29, #-0x8]
     160: eb09011f     	cmp	x8, x9
     164: 540000a1     	b.ne	0x178 <netlink_init+0xa8>
     168: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     16c: 910103ff     	add	sp, sp, #0x40
     170: d50323bf     	autiasp
     174: d65f03c0     	ret
     178: 94000000     	bl	0x178 <netlink_init+0xa8>
		0000000000000178:  R_AARCH64_CALL26	__stack_chk_fail
