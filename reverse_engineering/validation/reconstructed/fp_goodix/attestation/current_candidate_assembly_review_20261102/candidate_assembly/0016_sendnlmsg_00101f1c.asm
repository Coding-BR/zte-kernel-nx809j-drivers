
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fc0 <sendnlmsg>:
     fc0: aa0003e8     	mov	x8, x0
     fc4: 12800240     	mov	w0, #-0x13              // =-19
     fc8: b40005a8     	cbz	x8, 0x107c <sendnlmsg+0xbc>
     fcc: d503233f     	paciasp
     fd0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     fd4: a90157f6     	stp	x22, x21, [sp, #0x10]
     fd8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     fdc: 910003fd     	mov	x29, sp
     fe0: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000fe0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
     fe4: f94002a9     	ldr	x9, [x21]
		0000000000000fe4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
     fe8: b4000429     	cbz	x9, 0x106c <sendnlmsg+0xac>
     fec: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000fec:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
     ff0: b9400289     	ldr	w9, [x20]
		0000000000000ff0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
     ff4: 340003c9     	cbz	w9, 0x106c <sendnlmsg+0xac>
     ff8: 52800600     	mov	w0, #0x30               // =48
     ffc: 52810401     	mov	w1, #0x820              // =2080
    1000: 2a1f03e2     	mov	w2, wzr
    1004: 12800003     	mov	w3, #-0x1               // =-1
    1008: aa0803f6     	mov	x22, x8
    100c: 94000000     	bl	0x100c <sendnlmsg+0x4c>
		000000000000100c:  R_AARCH64_CALL26	__alloc_skb
    1010: b40002c0     	cbz	x0, 0x1068 <sendnlmsg+0xa8>
    1014: b9407408     	ldr	w8, [x0, #0x74]
    1018: aa0003f3     	mov	x19, x0
    101c: 350001a8     	cbnz	w8, 0x1050 <sendnlmsg+0x90>
    1020: 295a2269     	ldp	w9, w8, [x19, #0xd0]
    1024: 4b090108     	sub	w8, w8, w9
    1028: 7100c11f     	cmp	w8, #0x30
    102c: 5400012b     	b.lt	0x1050 <sendnlmsg+0x90>
    1030: aa1303e0     	mov	x0, x19
    1034: 2a1f03e1     	mov	w1, wzr
    1038: 2a1f03e2     	mov	w2, wzr
    103c: 2a1f03e3     	mov	w3, wzr
    1040: 52800404     	mov	w4, #0x20               // =32
    1044: 2a1f03e5     	mov	w5, wzr
    1048: 94000000     	bl	0x1048 <sendnlmsg+0x88>
		0000000000001048:  R_AARCH64_CALL26	__nlmsg_put
    104c: b50001a0     	cbnz	x0, 0x1080 <sendnlmsg+0xc0>
    1050: aa1f03e0     	mov	x0, xzr
    1054: aa1303e1     	mov	x1, x19
    1058: 52800042     	mov	w2, #0x2                // =2
    105c: 94000000     	bl	0x105c <sendnlmsg+0x9c>
		000000000000105c:  R_AARCH64_CALL26	sk_skb_reason_drop
    1060: 12800b20     	mov	w0, #-0x5a              // =-90
    1064: 14000002     	b	0x106c <sendnlmsg+0xac>
    1068: 12800160     	mov	w0, #-0xc               // =-12
    106c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1070: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1074: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1078: d50323bf     	autiasp
    107c: d65f03c0     	ret
    1080: f803427f     	stur	xzr, [x19, #0x34]
    1084: 394002c1     	ldrb	w1, [x22]
    1088: 39004001     	strb	w1, [x0, #0x10]
    108c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		000000000000108c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1051
    1090: 91000000     	add	x0, x0, #0x0
		0000000000001090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1051
    1094: 94000000     	bl	0x1094 <sendnlmsg+0xd4>
		0000000000001094:  R_AARCH64_CALL26	_printk
    1098: f94002a0     	ldr	x0, [x21]
		0000000000001098:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    109c: b9400282     	ldr	w2, [x20]
		000000000000109c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    10a0: aa1303e1     	mov	x1, x19
    10a4: 52800803     	mov	w3, #0x40               // =64
    10a8: 94000000     	bl	0x10a8 <sendnlmsg+0xe8>
		00000000000010a8:  R_AARCH64_CALL26	netlink_unicast
    10ac: b9400281     	ldr	w1, [x20]
		00000000000010ac:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    10b0: 2a0003f3     	mov	w19, w0
    10b4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000010b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1077
    10b8: 91000000     	add	x0, x0, #0x0
		00000000000010b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1077
    10bc: 2a1303e2     	mov	w2, w19
    10c0: 94000000     	bl	0x10c0 <sendnlmsg+0x100>
		00000000000010c0:  R_AARCH64_CALL26	_printk
    10c4: 0a937e60     	and	w0, w19, w19, asr #31
    10c8: 17ffffe9     	b	0x106c <sendnlmsg+0xac>
