
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cd08 <syna_dev_helper_work>:
    cd08: d503233f     	paciasp
    cd0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    cd10: a9014ff4     	stp	x20, x19, [sp, #0x10]
    cd14: 910003fd     	mov	x29, sp
    cd18: b85f8008     	ldur	w8, [x0, #-0x8]
    cd1c: aa0003f3     	mov	x19, x0
    cd20: 12001d08     	and	w8, w8, #0xff
    cd24: 7100051f     	cmp	w8, #0x1
    cd28: 540002e1     	b.ne	0xcd84 <syna_dev_helper_work+0x7c>
    cd2c: d114a274     	sub	x20, x19, #0x528
    cd30: f9400280     	ldr	x0, [x20]
    cd34: 39402408     	ldrb	w8, [x0, #0x9]
    cd38: 71002d1f     	cmp	w8, #0xb
    cd3c: 54000201     	b.ne	0xcd7c <syna_dev_helper_work+0x74>
    cd40: aa1f03e1     	mov	x1, xzr
    cd44: 52800282     	mov	w2, #0x14               // =20
    cd48: 94000000     	bl	0xcd48 <syna_dev_helper_work+0x40>
		000000000000cd48:  R_AARCH64_CALL26	syna_tcm_get_boot_info
    cd4c: 36f80480     	tbz	w0, #0x1f, 0xcddc <syna_dev_helper_work+0xd4>
    cd50: f9400280     	ldr	x0, [x20]
    cd54: 39402408     	ldrb	w8, [x0, #0x9]
    cd58: 71002d1f     	cmp	w8, #0xb
    cd5c: 54000101     	b.ne	0xcd7c <syna_dev_helper_work+0x74>
    cd60: f8508261     	ldur	x1, [x19, #-0xf8]
    cd64: d1058262     	sub	x2, x19, #0x160
    cd68: 52800400     	mov	w0, #0x20               // =32
    cd6c: 52800323     	mov	w3, #0x19               // =25
    cd70: 94000000     	bl	0xcd70 <syna_dev_helper_work+0x68>
		000000000000cd70:  R_AARCH64_CALL26	queue_delayed_work_on
    cd74: f9400280     	ldr	x0, [x20]
    cd78: 39402408     	ldrb	w8, [x0, #0x9]
    cd7c: 7100051f     	cmp	w8, #0x1
    cd80: 540000c0     	b.eq	0xcd98 <syna_dev_helper_work+0x90>
    cd84: b81f827f     	stur	wzr, [x19, #-0x8]
    cd88: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    cd8c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    cd90: d50323bf     	autiasp
    cd94: d65f03c0     	ret
    cd98: 79416402     	ldrh	w2, [x0, #0xb2]
    cd9c: 35000322     	cbnz	w2, 0xce00 <syna_dev_helper_work+0xf8>
    cda0: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000cda0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32df
    cda4: 91000000     	add	x0, x0, #0x0
		000000000000cda4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32df
    cda8: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000cda8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc137
    cdac: 91000021     	add	x1, x1, #0x0
		000000000000cdac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc137
    cdb0: 94000000     	bl	0xcdb0 <syna_dev_helper_work+0xa8>
		000000000000cdb0:  R_AARCH64_CALL26	_printk
    cdb4: f940ca68     	ldr	x8, [x19, #0x190]
    cdb8: aa1403e0     	mov	x0, x20
    cdbc: b85fc110     	ldur	w16, [x8, #-0x4]
    cdc0: 7288e391     	movk	w17, #0x471c
    cdc4: 72b5c411     	movk	w17, #0xae20, lsl #16
    cdc8: 6b11021f     	cmp	w16, w17
    cdcc: 54000040     	b.eq	0xcdd4 <syna_dev_helper_work+0xcc>
    cdd0: d4304500     	brk	#0x8228
    cdd4: d63f0100     	blr	x8
    cdd8: 17ffffeb     	b	0xcd84 <syna_dev_helper_work+0x7c>
    cddc: f9400288     	ldr	x8, [x20]
    cde0: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000cde0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45c8
    cde4: 91000000     	add	x0, x0, #0x0
		000000000000cde4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45c8
    cde8: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000cde8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc137
    cdec: 91000021     	add	x1, x1, #0x0
		000000000000cdec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc137
    cdf0: 39438502     	ldrb	w2, [x8, #0xe1]
    cdf4: 3943a503     	ldrb	w3, [x8, #0xe9]
    cdf8: 94000000     	bl	0xcdf8 <syna_dev_helper_work+0xf0>
		000000000000cdf8:  R_AARCH64_CALL26	_printk
    cdfc: 17ffffd5     	b	0xcd50 <syna_dev_helper_work+0x48>
    ce00: 90000000     	adrp	x0, 0xc000 <syna_dev_connect+0x174>
		000000000000ce00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19ac
    ce04: 91000000     	add	x0, x0, #0x0
		000000000000ce04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19ac
    ce08: 90000001     	adrp	x1, 0xc000 <syna_dev_connect+0x174>
		000000000000ce08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc137
    ce0c: 91000021     	add	x1, x1, #0x0
		000000000000ce0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc137
    ce10: 94000000     	bl	0xce10 <syna_dev_helper_work+0x108>
		000000000000ce10:  R_AARCH64_CALL26	_printk
    ce14: f9400288     	ldr	x8, [x20]
    ce18: 39402508     	ldrb	w8, [x8, #0x9]
    ce1c: 71002d1f     	cmp	w8, #0xb
    ce20: 54fffb21     	b.ne	0xcd84 <syna_dev_helper_work+0x7c>
    ce24: f8508261     	ldur	x1, [x19, #-0xf8]
    ce28: d1058262     	sub	x2, x19, #0x160
    ce2c: 52800400     	mov	w0, #0x20               // =32
    ce30: 52800323     	mov	w3, #0x19               // =25
    ce34: 94000000     	bl	0xce34 <syna_dev_helper_work+0x12c>
		000000000000ce34:  R_AARCH64_CALL26	queue_delayed_work_on
    ce38: 17ffffd3     	b	0xcd84 <syna_dev_helper_work+0x7c>
