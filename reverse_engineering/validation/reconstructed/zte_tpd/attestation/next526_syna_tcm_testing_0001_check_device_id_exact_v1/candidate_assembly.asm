
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000202e0 <syna_tcm_testing_0001_check_device_id>:
   202e0: d503233f     	paciasp
   202e4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   202e8: a9015ff8     	stp	x24, x23, [sp, #0x10]
   202ec: a90257f6     	stp	x22, x21, [sp, #0x20]
   202f0: a9034ff4     	stp	x20, x19, [sp, #0x30]
   202f4: 910003fd     	mov	x29, sp
   202f8: aa0003f4     	mov	x20, x0
   202fc: 2a1f03e0     	mov	w0, wzr
   20300: b40002d4     	cbz	x20, 0x20358 <syna_tcm_testing_0001_check_device_id+0x78>
   20304: aa0103f3     	mov	x19, x1
   20308: b4000281     	cbz	x1, 0x20358 <syna_tcm_testing_0001_check_device_id+0x78>
   2030c: 52800208     	mov	w8, #0x10               // =16
   20310: 6b020116     	subs	w22, w8, w2
   20314: 540002e4     	b.mi	0x20370 <syna_tcm_testing_0001_check_device_id+0x90>
   20318: 39400278     	ldrb	w24, [x19]
   2031c: 2a1f03f7     	mov	w23, wzr
   20320: 2a0203f5     	mov	w21, w2
   20324: 14000004     	b	0x20334 <syna_tcm_testing_0001_check_device_id+0x54>
   20328: 110006f7     	add	w23, w23, #0x1
   2032c: 6b1602ff     	cmp	w23, w22
   20330: 5400020c     	b.gt	0x20370 <syna_tcm_testing_0001_check_device_id+0x90>
   20334: 8b37c280     	add	x0, x20, w23, sxtw
   20338: 39400008     	ldrb	w8, [x0]
   2033c: 6b18011f     	cmp	w8, w24
   20340: 54ffff41     	b.ne	0x20328 <syna_tcm_testing_0001_check_device_id+0x48>
   20344: aa1303e1     	mov	x1, x19
   20348: aa1503e2     	mov	x2, x21
   2034c: 94000000     	bl	0x2034c <syna_tcm_testing_0001_check_device_id+0x6c>
		000000000002034c:  R_AARCH64_CALL26	strncmp
   20350: 35fffec0     	cbnz	w0, 0x20328 <syna_tcm_testing_0001_check_device_id+0x48>
   20354: 52800020     	mov	w0, #0x1                // =1
   20358: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   2035c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   20360: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   20364: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   20368: d50323bf     	autiasp
   2036c: d65f03c0     	ret
   20370: 90000000     	adrp	x0, 0x20000 <syna_dev_resume+0x32c>
		0000000000020370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d988
   20374: 91000000     	add	x0, x0, #0x0
		0000000000020374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d988
   20378: 90000001     	adrp	x1, 0x20000 <syna_dev_resume+0x32c>
		0000000000020378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b60e
   2037c: 91000021     	add	x1, x1, #0x0
		000000000002037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b60e
   20380: aa1403e2     	mov	x2, x20
   20384: aa1303e3     	mov	x3, x19
   20388: 94000000     	bl	0x20388 <syna_tcm_testing_0001_check_device_id+0xa8>
		0000000000020388:  R_AARCH64_CALL26	_printk
   2038c: 2a1f03e0     	mov	w0, wzr
   20390: 17fffff2     	b	0x20358 <syna_tcm_testing_0001_check_device_id+0x78>
