
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000286c <soc_to_dri_pack_parse>:
    286c: d503233f     	paciasp
    2870: d10243ff     	sub	sp, sp, #0x90
    2874: a9047bfd     	stp	x29, x30, [sp, #0x40]
    2878: f9002bf9     	str	x25, [sp, #0x50]
    287c: a9065ff8     	stp	x24, x23, [sp, #0x60]
    2880: a90757f6     	stp	x22, x21, [sp, #0x70]
    2884: a9084ff4     	stp	x20, x19, [sp, #0x80]
    2888: 910103fd     	add	x29, sp, #0x40
    288c: d5384108     	mrs	x8, SP_EL0
    2890: 2a0303f5     	mov	w21, w3
    2894: 2a0203f6     	mov	w22, w2
    2898: f9438908     	ldr	x8, [x8, #0x710]
    289c: aa0003f3     	mov	x19, x0
    28a0: 52800309     	mov	w9, #0x18               // =24
    28a4: 11003037     	add	w23, w1, #0xc
    28a8: f81f83a8     	stur	x8, [x29, #-0x8]
    28ac: 781f43a9     	sturh	w9, [x29, #-0xc]
    28b0: d503201f     	nop
    28b4: aa1703e0     	mov	x0, x23
    28b8: 5281b801     	mov	w1, #0xdc0              // =3520
    28bc: 94000000     	bl	0x28bc <soc_to_dri_pack_parse+0x50>
		00000000000028bc:  R_AARCH64_CALL26	__kmalloc_noprof
    28c0: aa0003f4     	mov	x20, x0
    28c4: f9401a61     	ldr	x1, [x19, #0x30]
    28c8: b50002b4     	cbnz	x20, 0x291c <soc_to_dri_pack_parse+0xb0>
    28cc: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000028cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    28d0: 91000000     	add	x0, x0, #0x0
		00000000000028d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    28d4: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		00000000000028d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28f6
    28d8: 91000042     	add	x2, x2, #0x0
		00000000000028d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28f6
    28dc: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		00000000000028dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f0
    28e0: 91000063     	add	x3, x3, #0x0
		00000000000028e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f0
    28e4: 5280db44     	mov	w4, #0x6da              // =1754
    28e8: 1400007c     	b	0x2ad8 <soc_to_dri_pack_parse+0x26c>
    28ec: d5384118     	mrs	x24, SP_EL0
    28f0: f9402b19     	ldr	x25, [x24, #0x50]
    28f4: 90000008     	adrp	x8, 0x2000 <get_pack_checksum+0xa0>
		00000000000028f4:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    28f8: 91000108     	add	x8, x8, #0x0
		00000000000028f8:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    28fc: aa1703e0     	mov	x0, x23
    2900: 5281b801     	mov	w1, #0xdc0              // =3520
    2904: f9002b08     	str	x8, [x24, #0x50]
    2908: 94000000     	bl	0x2908 <soc_to_dri_pack_parse+0x9c>
		0000000000002908:  R_AARCH64_CALL26	__kmalloc_noprof
    290c: aa0003f4     	mov	x20, x0
    2910: f9002b19     	str	x25, [x24, #0x50]
    2914: f9401a61     	ldr	x1, [x19, #0x30]
    2918: b4fffdb4     	cbz	x20, 0x28cc <soc_to_dri_pack_parse+0x60>
    291c: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		000000000000291c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2920: 91000000     	add	x0, x0, #0x0
		0000000000002920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2924: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    2928: 91000042     	add	x2, x2, #0x0
		0000000000002928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    292c: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		000000000000292c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f0
    2930: 91000063     	add	x3, x3, #0x0
		0000000000002930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f0
    2934: 5280dbc4     	mov	w4, #0x6de              // =1758
    2938: 94000000     	bl	0x2938 <soc_to_dri_pack_parse+0xcc>
		0000000000002938:  R_AARCH64_CALL26	_dev_printk
    293c: d10033a3     	sub	x3, x29, #0xc
    2940: aa1303e0     	mov	x0, x19
    2944: aa1403e1     	mov	x1, x20
    2948: 2a1703e2     	mov	w2, w23
    294c: 94000000     	bl	0x294c <soc_to_dri_pack_parse+0xe0>
		000000000000294c:  R_AARCH64_CALL26	soc_to_dri_pack_recv
    2950: 350009c0     	cbnz	w0, 0x2a88 <soc_to_dri_pack_parse+0x21c>
    2954: f1000aff     	cmp	x23, #0x2
    2958: 54000de3     	b.lo	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    295c: 79400288     	ldrh	w8, [x20]
    2960: 5ac00908     	rev	w8, w8
    2964: 53107d05     	lsr	w5, w8, #16
    2968: 927f7ae8     	and	x8, x23, #0xfffffffe
    296c: f100091f     	cmp	x8, #0x2
    2970: 79000285     	strh	w5, [x20]
    2974: 54000d00     	b.eq	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    2978: f100091f     	cmp	x8, #0x2
    297c: 54000cc0     	b.eq	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    2980: 79400688     	ldrh	w8, [x20, #0x2]
    2984: f1002aff     	cmp	x23, #0xa
    2988: 5ac00908     	rev	w8, w8
    298c: 53107d06     	lsr	w6, w8, #16
    2990: 79000686     	strh	w6, [x20, #0x2]
    2994: 54000c03     	b.lo	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    2998: 927f7ae8     	and	x8, x23, #0xfffffffe
    299c: f100291f     	cmp	x8, #0xa
    29a0: 54000ba0     	b.eq	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    29a4: 927f7ae8     	and	x8, x23, #0xfffffffe
    29a8: f100291f     	cmp	x8, #0xa
    29ac: 54000b40     	b.eq	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    29b0: 79401688     	ldrh	w8, [x20, #0xa]
    29b4: f10012ff     	cmp	x23, #0x4
    29b8: 5ac00908     	rev	w8, w8
    29bc: 53107d07     	lsr	w7, w8, #16
    29c0: 79001687     	strh	w7, [x20, #0xa]
    29c4: 54000a83     	b.lo	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    29c8: 927e76e8     	and	x8, x23, #0xfffffffc
    29cc: f100111f     	cmp	x8, #0x4
    29d0: 54000a20     	b.eq	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    29d4: 927e76e8     	and	x8, x23, #0xfffffffc
    29d8: f100111f     	cmp	x8, #0x4
    29dc: 540009c0     	b.eq	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    29e0: b9400688     	ldr	w8, [x20, #0x4]
    29e4: f10042ff     	cmp	x23, #0x10
    29e8: 5ac00908     	rev	w8, w8
    29ec: b9000688     	str	w8, [x20, #0x4]
    29f0: 54000923     	b.lo	0x2b14 <soc_to_dri_pack_parse+0x2a8>
    29f4: b9400e97     	ldr	w23, [x20, #0xc]
    29f8: f9401a61     	ldr	x1, [x19, #0x30]
    29fc: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		00000000000029fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    2a00: 91000000     	add	x0, x0, #0x0
		0000000000002a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    2a04: 39402289     	ldrb	w9, [x20, #0x8]
    2a08: 3940268a     	ldrb	w10, [x20, #0x9]
    2a0c: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f2
    2a10: 91000042     	add	x2, x2, #0x0
		0000000000002a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f2
    2a14: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f0
    2a18: 91000063     	add	x3, x3, #0x0
		0000000000002a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f0
    2a1c: 5280df04     	mov	w4, #0x6f8              // =1784
    2a20: b9001be7     	str	w7, [sp, #0x18]
    2a24: b90013ea     	str	w10, [sp, #0x10]
    2a28: b9000be9     	str	w9, [sp, #0x8]
    2a2c: b90003e8     	str	w8, [sp]
    2a30: b90023f7     	str	w23, [sp, #0x20]
    2a34: 94000000     	bl	0x2a34 <soc_to_dri_pack_parse+0x1c8>
		0000000000002a34:  R_AARCH64_CALL26	_dev_printk
    2a38: 39402288     	ldrb	w8, [x20, #0x8]
    2a3c: 6b36011f     	cmp	w8, w22, uxtb
    2a40: 540003c1     	b.ne	0x2ab8 <soc_to_dri_pack_parse+0x24c>
    2a44: 350003b7     	cbnz	w23, 0x2ab8 <soc_to_dri_pack_parse+0x24c>
    2a48: 39402688     	ldrb	w8, [x20, #0x9]
    2a4c: 6b35011f     	cmp	w8, w21, uxtb
    2a50: 54000341     	b.ne	0x2ab8 <soc_to_dri_pack_parse+0x24c>
    2a54: f9401a61     	ldr	x1, [x19, #0x30]
    2a58: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    2a5c: 91000000     	add	x0, x0, #0x0
		0000000000002a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    2a60: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ccd
    2a64: 91000042     	add	x2, x2, #0x0
		0000000000002a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ccd
    2a68: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f0
    2a6c: 91000063     	add	x3, x3, #0x0
		0000000000002a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f0
    2a70: 5280df64     	mov	w4, #0x6fb              // =1787
    2a74: 94000000     	bl	0x2a74 <soc_to_dri_pack_parse+0x208>
		0000000000002a74:  R_AARCH64_CALL26	_dev_printk
    2a78: aa1403e0     	mov	x0, x20
    2a7c: 94000000     	bl	0x2a7c <soc_to_dri_pack_parse+0x210>
		0000000000002a7c:  R_AARCH64_CALL26	kfree
    2a80: 2a1f03e0     	mov	w0, wzr
    2a84: 14000017     	b	0x2ae0 <soc_to_dri_pack_parse+0x274>
    2a88: f9401a61     	ldr	x1, [x19, #0x30]
    2a8c: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    2a90: 91000000     	add	x0, x0, #0x0
		0000000000002a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    2a94: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2717
    2a98: 91000042     	add	x2, x2, #0x0
		0000000000002a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2717
    2a9c: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f0
    2aa0: 91000063     	add	x3, x3, #0x0
		0000000000002aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f0
    2aa4: 5280dce4     	mov	w4, #0x6e7              // =1767
    2aa8: 94000000     	bl	0x2aa8 <soc_to_dri_pack_parse+0x23c>
		0000000000002aa8:  R_AARCH64_CALL26	_dev_printk
    2aac: aa1403e0     	mov	x0, x20
    2ab0: 94000000     	bl	0x2ab0 <soc_to_dri_pack_parse+0x244>
		0000000000002ab0:  R_AARCH64_CALL26	kfree
    2ab4: 1400000a     	b	0x2adc <soc_to_dri_pack_parse+0x270>
    2ab8: f9401a61     	ldr	x1, [x19, #0x30]
    2abc: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    2ac0: 91000000     	add	x0, x0, #0x0
		0000000000002ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    2ac4: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x613
    2ac8: 91000042     	add	x2, x2, #0x0
		0000000000002ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x613
    2acc: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34f0
    2ad0: 91000063     	add	x3, x3, #0x0
		0000000000002ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34f0
    2ad4: 5280dfa4     	mov	w4, #0x6fd              // =1789
    2ad8: 94000000     	bl	0x2ad8 <soc_to_dri_pack_parse+0x26c>
		0000000000002ad8:  R_AARCH64_CALL26	_dev_printk
    2adc: 12800000     	mov	w0, #-0x1               // =-1
    2ae0: d5384108     	mrs	x8, SP_EL0
    2ae4: f9438908     	ldr	x8, [x8, #0x710]
    2ae8: f85f83a9     	ldur	x9, [x29, #-0x8]
    2aec: eb09011f     	cmp	x8, x9
    2af0: 54000141     	b.ne	0x2b18 <soc_to_dri_pack_parse+0x2ac>
    2af4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    2af8: f9402bf9     	ldr	x25, [sp, #0x50]
    2afc: a94757f6     	ldp	x22, x21, [sp, #0x70]
    2b00: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    2b04: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    2b08: 910243ff     	add	sp, sp, #0x90
    2b0c: d50323bf     	autiasp
    2b10: d65f03c0     	ret
    2b14: d4200020     	brk	#0x1
    2b18: 94000000     	bl	0x2b18 <soc_to_dri_pack_parse+0x2ac>
		0000000000002b18:  R_AARCH64_CALL26	__stack_chk_fail
