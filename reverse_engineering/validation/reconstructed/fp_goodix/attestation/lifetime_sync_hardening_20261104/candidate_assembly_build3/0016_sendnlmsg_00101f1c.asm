
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fbc <sendnlmsg>:
     fbc: aa0003e8     	mov	x8, x0
     fc0: 12800240     	mov	w0, #-0x13              // =-19
     fc4: b40005a8     	cbz	x8, 0x1078 <sendnlmsg+0xbc>
     fc8: d503233f     	paciasp
     fcc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     fd0: a90157f6     	stp	x22, x21, [sp, #0x10]
     fd4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     fd8: 910003fd     	mov	x29, sp
     fdc: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000fdc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
     fe0: f94002a9     	ldr	x9, [x21]
		0000000000000fe0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
     fe4: b4000429     	cbz	x9, 0x1068 <sendnlmsg+0xac>
     fe8: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000fe8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
     fec: b9400289     	ldr	w9, [x20]
		0000000000000fec:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
     ff0: 340003c9     	cbz	w9, 0x1068 <sendnlmsg+0xac>
     ff4: 52800600     	mov	w0, #0x30               // =48
     ff8: 52810401     	mov	w1, #0x820              // =2080
     ffc: 2a1f03e2     	mov	w2, wzr
    1000: 12800003     	mov	w3, #-0x1               // =-1
    1004: aa0803f6     	mov	x22, x8
    1008: 94000000     	bl	0x1008 <sendnlmsg+0x4c>
		0000000000001008:  R_AARCH64_CALL26	__alloc_skb
    100c: b40002c0     	cbz	x0, 0x1064 <sendnlmsg+0xa8>
    1010: b9407408     	ldr	w8, [x0, #0x74]
    1014: aa0003f3     	mov	x19, x0
    1018: 350001a8     	cbnz	w8, 0x104c <sendnlmsg+0x90>
    101c: 295a2269     	ldp	w9, w8, [x19, #0xd0]
    1020: 4b090108     	sub	w8, w8, w9
    1024: 7100c11f     	cmp	w8, #0x30
    1028: 5400012b     	b.lt	0x104c <sendnlmsg+0x90>
    102c: aa1303e0     	mov	x0, x19
    1030: 2a1f03e1     	mov	w1, wzr
    1034: 2a1f03e2     	mov	w2, wzr
    1038: 2a1f03e3     	mov	w3, wzr
    103c: 52800404     	mov	w4, #0x20               // =32
    1040: 2a1f03e5     	mov	w5, wzr
    1044: 94000000     	bl	0x1044 <sendnlmsg+0x88>
		0000000000001044:  R_AARCH64_CALL26	__nlmsg_put
    1048: b50001a0     	cbnz	x0, 0x107c <sendnlmsg+0xc0>
    104c: aa1f03e0     	mov	x0, xzr
    1050: aa1303e1     	mov	x1, x19
    1054: 52800042     	mov	w2, #0x2                // =2
    1058: 94000000     	bl	0x1058 <sendnlmsg+0x9c>
		0000000000001058:  R_AARCH64_CALL26	sk_skb_reason_drop
    105c: 12800b20     	mov	w0, #-0x5a              // =-90
    1060: 14000002     	b	0x1068 <sendnlmsg+0xac>
    1064: 12800160     	mov	w0, #-0xc               // =-12
    1068: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    106c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1070: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1074: d50323bf     	autiasp
    1078: d65f03c0     	ret
    107c: f803427f     	stur	xzr, [x19, #0x34]
    1080: 394002c1     	ldrb	w1, [x22]
    1084: 39004001     	strb	w1, [x0, #0x10]
    1088: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    108c: 91000000     	add	x0, x0, #0x0
		000000000000108c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    1090: 94000000     	bl	0x1090 <sendnlmsg+0xd4>
		0000000000001090:  R_AARCH64_CALL26	_printk
    1094: f94002a0     	ldr	x0, [x21]
		0000000000001094:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1098: b9400282     	ldr	w2, [x20]
		0000000000001098:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    109c: aa1303e1     	mov	x1, x19
    10a0: 52800803     	mov	w3, #0x40               // =64
    10a4: 94000000     	bl	0x10a4 <sendnlmsg+0xe8>
		00000000000010a4:  R_AARCH64_CALL26	netlink_unicast
    10a8: b9400281     	ldr	w1, [x20]
		00000000000010a8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    10ac: 2a0003f3     	mov	w19, w0
    10b0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000010b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1077
    10b4: 91000000     	add	x0, x0, #0x0
		00000000000010b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1077
    10b8: 2a1303e2     	mov	w2, w19
    10bc: 94000000     	bl	0x10bc <sendnlmsg+0x100>
		00000000000010bc:  R_AARCH64_CALL26	_printk
    10c0: 0a937e60     	and	w0, w19, w19, asr #31
    10c4: 17ffffe9     	b	0x1068 <sendnlmsg+0xac>
