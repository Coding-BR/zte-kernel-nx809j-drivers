
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016e5c <syna_tcm_testing_0001_check_device_id>:
   16e5c: d503233f     	paciasp
   16e60: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   16e64: a9015ff8     	stp	x24, x23, [sp, #0x10]
   16e68: a90257f6     	stp	x22, x21, [sp, #0x20]
   16e6c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   16e70: 910003fd     	mov	x29, sp
   16e74: aa0003f4     	mov	x20, x0
   16e78: 2a1f03e0     	mov	w0, wzr
   16e7c: b40002d4     	cbz	x20, 0x16ed4 <syna_tcm_testing_0001_check_device_id+0x78>
   16e80: aa0103f3     	mov	x19, x1
   16e84: b4000281     	cbz	x1, 0x16ed4 <syna_tcm_testing_0001_check_device_id+0x78>
   16e88: 52800208     	mov	w8, #0x10               // =16
   16e8c: 6b020116     	subs	w22, w8, w2
   16e90: 540002e4     	b.mi	0x16eec <syna_tcm_testing_0001_check_device_id+0x90>
   16e94: 39400278     	ldrb	w24, [x19]
   16e98: 2a1f03f7     	mov	w23, wzr
   16e9c: 2a0203f5     	mov	w21, w2
   16ea0: 14000004     	b	0x16eb0 <syna_tcm_testing_0001_check_device_id+0x54>
   16ea4: 110006f7     	add	w23, w23, #0x1
   16ea8: 6b1602ff     	cmp	w23, w22
   16eac: 5400020c     	b.gt	0x16eec <syna_tcm_testing_0001_check_device_id+0x90>
   16eb0: 8b37c280     	add	x0, x20, w23, sxtw
   16eb4: 39400008     	ldrb	w8, [x0]
   16eb8: 6b18011f     	cmp	w8, w24
   16ebc: 54ffff41     	b.ne	0x16ea4 <syna_tcm_testing_0001_check_device_id+0x48>
   16ec0: aa1303e1     	mov	x1, x19
   16ec4: aa1503e2     	mov	x2, x21
   16ec8: 94000000     	bl	0x16ec8 <syna_tcm_testing_0001_check_device_id+0x6c>
		0000000000016ec8:  R_AARCH64_CALL26	strncmp
   16ecc: 35fffec0     	cbnz	w0, 0x16ea4 <syna_tcm_testing_0001_check_device_id+0x48>
   16ed0: 52800020     	mov	w0, #0x1                // =1
   16ed4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   16ed8: a94257f6     	ldp	x22, x21, [sp, #0x20]
   16edc: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   16ee0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   16ee4: d50323bf     	autiasp
   16ee8: d65f03c0     	ret
   16eec: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbbf
   16ef0: 91000000     	add	x0, x0, #0x0
		0000000000016ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbbf
   16ef4: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9988
   16ef8: 91000021     	add	x1, x1, #0x0
		0000000000016ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9988
   16efc: aa1403e2     	mov	x2, x20
   16f00: aa1303e3     	mov	x3, x19
   16f04: 94000000     	bl	0x16f04 <syna_tcm_testing_0001_check_device_id+0xa8>
		0000000000016f04:  R_AARCH64_CALL26	_printk
   16f08: 2a1f03e0     	mov	w0, wzr
   16f0c: 17fffff2     	b	0x16ed4 <syna_tcm_testing_0001_check_device_id+0x78>
