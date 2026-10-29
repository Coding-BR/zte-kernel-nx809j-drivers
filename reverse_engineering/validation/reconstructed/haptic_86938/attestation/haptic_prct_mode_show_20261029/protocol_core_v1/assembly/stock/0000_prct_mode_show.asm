
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009378 <prct_mode_show>:
    9378: d503233f     	paciasp
    937c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9380: f9000bf3     	str	x19, [sp, #0x10]
    9384: 910003fd     	mov	x29, sp
    9388: f9404c08     	ldr	x8, [x0, #0x98]
    938c: aa0203f3     	mov	x19, x2
    9390: f9429109     	ldr	x9, [x8, #0x520]
    9394: d102a100     	sub	x0, x8, #0xa8
    9398: f940a929     	ldr	x9, [x9, #0x150]
    939c: b85fc130     	ldur	w16, [x9, #-0x4]
    93a0: 72870a91     	movk	w17, #0x3854
    93a4: 72af0971     	movk	w17, #0x784b, lsl #16
    93a8: 6b11021f     	cmp	w16, w17
    93ac: 54000040     	b.eq	0x93b4 <prct_mode_show+0x3c>
    93b0: d4304520     	brk	#0x8229
    93b4: d63f0120     	blr	x9
    93b8: 90000002     	adrp	x2, 0x9000 <cont_show+0x34>
		00000000000093b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb1
    93bc: 91000042     	add	x2, x2, #0x0
		00000000000093bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb1
    93c0: 12001c03     	and	w3, w0, #0xff
    93c4: aa1303e0     	mov	x0, x19
    93c8: 52820001     	mov	w1, #0x1000             // =4096
    93cc: 94000000     	bl	0x93cc <prct_mode_show+0x54>
		00000000000093cc:  R_AARCH64_CALL26	snprintf
    93d0: 93407c00     	sxtw	x0, w0
    93d4: f9400bf3     	ldr	x19, [sp, #0x10]
    93d8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    93dc: d50323bf     	autiasp
    93e0: d65f03c0     	ret
