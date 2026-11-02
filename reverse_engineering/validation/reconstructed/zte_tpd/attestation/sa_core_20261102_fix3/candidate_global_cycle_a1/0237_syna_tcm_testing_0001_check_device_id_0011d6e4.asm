
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000249e8 <syna_tcm_testing_0001_check_device_id>:
   249e8: d503233f     	paciasp
   249ec: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   249f0: a9015ff8     	stp	x24, x23, [sp, #0x10]
   249f4: a90257f6     	stp	x22, x21, [sp, #0x20]
   249f8: a9034ff4     	stp	x20, x19, [sp, #0x30]
   249fc: 910003fd     	mov	x29, sp
   24a00: aa0003f4     	mov	x20, x0
   24a04: 2a1f03e0     	mov	w0, wzr
   24a08: b40002d4     	cbz	x20, 0x24a60 <syna_tcm_testing_0001_check_device_id+0x78>
   24a0c: aa0103f3     	mov	x19, x1
   24a10: b4000281     	cbz	x1, 0x24a60 <syna_tcm_testing_0001_check_device_id+0x78>
   24a14: 52800208     	mov	w8, #0x10               // =16
   24a18: 6b020116     	subs	w22, w8, w2
   24a1c: 540002e4     	b.mi	0x24a78 <syna_tcm_testing_0001_check_device_id+0x90>
   24a20: 39400278     	ldrb	w24, [x19]
   24a24: 2a1f03f7     	mov	w23, wzr
   24a28: 2a0203f5     	mov	w21, w2
   24a2c: 14000004     	b	0x24a3c <syna_tcm_testing_0001_check_device_id+0x54>
   24a30: 110006f7     	add	w23, w23, #0x1
   24a34: 6b1602ff     	cmp	w23, w22
   24a38: 5400020c     	b.gt	0x24a78 <syna_tcm_testing_0001_check_device_id+0x90>
   24a3c: 8b37c280     	add	x0, x20, w23, sxtw
   24a40: 39400008     	ldrb	w8, [x0]
   24a44: 6b18011f     	cmp	w8, w24
   24a48: 54ffff41     	b.ne	0x24a30 <syna_tcm_testing_0001_check_device_id+0x48>
   24a4c: aa1303e1     	mov	x1, x19
   24a50: aa1503e2     	mov	x2, x21
   24a54: 94000000     	bl	0x24a54 <syna_tcm_testing_0001_check_device_id+0x6c>
		0000000000024a54:  R_AARCH64_CALL26	strncmp
   24a58: 35fffec0     	cbnz	w0, 0x24a30 <syna_tcm_testing_0001_check_device_id+0x48>
   24a5c: 52800020     	mov	w0, #0x1                // =1
   24a60: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   24a64: a94257f6     	ldp	x22, x21, [sp, #0x20]
   24a68: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   24a6c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   24a70: d50323bf     	autiasp
   24a74: d65f03c0     	ret
   24a78: 90000000     	adrp	x0, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe98
   24a7c: 91000000     	add	x0, x0, #0x0
		0000000000024a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe98
   24a80: 90000001     	adrp	x1, 0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9bf4
   24a84: 91000021     	add	x1, x1, #0x0
		0000000000024a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9bf4
   24a88: aa1403e2     	mov	x2, x20
   24a8c: aa1303e3     	mov	x3, x19
   24a90: 94000000     	bl	0x24a90 <syna_tcm_testing_0001_check_device_id+0xa8>
		0000000000024a90:  R_AARCH64_CALL26	_printk
   24a94: 2a1f03e0     	mov	w0, wzr
   24a98: 17fffff2     	b	0x24a60 <syna_tcm_testing_0001_check_device_id+0x78>
