
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001248 <sendnlmsg>:
    1248: aa0003e8     	mov	x8, x0
    124c: 12800240     	mov	w0, #-0x13              // =-19
    1250: b40005a8     	cbz	x8, 0x1304 <sendnlmsg+0xbc>
    1254: d503233f     	paciasp
    1258: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    125c: a90157f6     	stp	x22, x21, [sp, #0x10]
    1260: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1264: 910003fd     	mov	x29, sp
    1268: 90000015     	adrp	x21, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001268:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x208
    126c: f94002a9     	ldr	x9, [x21]
		000000000000126c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x208
    1270: b4000429     	cbz	x9, 0x12f4 <sendnlmsg+0xac>
    1274: 90000014     	adrp	x20, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001274:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
    1278: b9400289     	ldr	w9, [x20]
		0000000000001278:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    127c: 340003c9     	cbz	w9, 0x12f4 <sendnlmsg+0xac>
    1280: 52800600     	mov	w0, #0x30               // =48
    1284: 52810401     	mov	w1, #0x820              // =2080
    1288: 2a1f03e2     	mov	w2, wzr
    128c: 12800003     	mov	w3, #-0x1               // =-1
    1290: aa0803f6     	mov	x22, x8
    1294: 94000000     	bl	0x1294 <sendnlmsg+0x4c>
		0000000000001294:  R_AARCH64_CALL26	__alloc_skb
    1298: b40002c0     	cbz	x0, 0x12f0 <sendnlmsg+0xa8>
    129c: b9407408     	ldr	w8, [x0, #0x74]
    12a0: aa0003f3     	mov	x19, x0
    12a4: 350001a8     	cbnz	w8, 0x12d8 <sendnlmsg+0x90>
    12a8: 295a2269     	ldp	w9, w8, [x19, #0xd0]
    12ac: 4b090108     	sub	w8, w8, w9
    12b0: 7100c11f     	cmp	w8, #0x30
    12b4: 5400012b     	b.lt	0x12d8 <sendnlmsg+0x90>
    12b8: aa1303e0     	mov	x0, x19
    12bc: 2a1f03e1     	mov	w1, wzr
    12c0: 2a1f03e2     	mov	w2, wzr
    12c4: 2a1f03e3     	mov	w3, wzr
    12c8: 52800404     	mov	w4, #0x20               // =32
    12cc: 2a1f03e5     	mov	w5, wzr
    12d0: 94000000     	bl	0x12d0 <sendnlmsg+0x88>
		00000000000012d0:  R_AARCH64_CALL26	__nlmsg_put
    12d4: b50001a0     	cbnz	x0, 0x1308 <sendnlmsg+0xc0>
    12d8: aa1f03e0     	mov	x0, xzr
    12dc: aa1303e1     	mov	x1, x19
    12e0: 52800042     	mov	w2, #0x2                // =2
    12e4: 94000000     	bl	0x12e4 <sendnlmsg+0x9c>
		00000000000012e4:  R_AARCH64_CALL26	sk_skb_reason_drop
    12e8: 12800b20     	mov	w0, #-0x5a              // =-90
    12ec: 14000002     	b	0x12f4 <sendnlmsg+0xac>
    12f0: 12800160     	mov	w0, #-0xc               // =-12
    12f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    12f8: a94157f6     	ldp	x22, x21, [sp, #0x10]
    12fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1300: d50323bf     	autiasp
    1304: d65f03c0     	ret
    1308: f803427f     	stur	xzr, [x19, #0x34]
    130c: 394002c1     	ldrb	w1, [x22]
    1310: 39004001     	strb	w1, [x0, #0x10]
    1314: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1019
    1318: 91000000     	add	x0, x0, #0x0
		0000000000001318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1019
    131c: 94000000     	bl	0x131c <sendnlmsg+0xd4>
		000000000000131c:  R_AARCH64_CALL26	_printk
    1320: f94002a0     	ldr	x0, [x21]
		0000000000001320:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x208
    1324: b9400282     	ldr	w2, [x20]
		0000000000001324:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1328: aa1303e1     	mov	x1, x19
    132c: 52800803     	mov	w3, #0x40               // =64
    1330: 94000000     	bl	0x1330 <sendnlmsg+0xe8>
		0000000000001330:  R_AARCH64_CALL26	netlink_unicast
    1334: b9400281     	ldr	w1, [x20]
		0000000000001334:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1338: 2a0003f3     	mov	w19, w0
    133c: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000133c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x103f
    1340: 91000000     	add	x0, x0, #0x0
		0000000000001340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x103f
    1344: 2a1303e2     	mov	w2, w19
    1348: 94000000     	bl	0x1348 <sendnlmsg+0x100>
		0000000000001348:  R_AARCH64_CALL26	_printk
    134c: 0a937e60     	and	w0, w19, w19, asr #31
    1350: 17ffffe9     	b	0x12f4 <sendnlmsg+0xac>
