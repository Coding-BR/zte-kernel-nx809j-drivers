
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007698 <aw8693x_play_mode>:
    7698: d503233f     	paciasp
    769c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    76a0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    76a4: 910003fd     	mov	x29, sp
    76a8: 12001c28     	and	w8, w1, #0xff
    76ac: aa0003f3     	mov	x19, x0
    76b0: 7100091f     	cmp	w8, #0x2
    76b4: 5400036c     	b.gt	0x7720 <aw8693x_play_mode+0x88>
    76b8: 340006a8     	cbz	w8, 0x778c <aw8693x_play_mode+0xf4>
    76bc: 7100051f     	cmp	w8, #0x1
    76c0: 54000be0     	b.eq	0x783c <aw8693x_play_mode+0x1a4>
    76c4: 7100091f     	cmp	w8, #0x2
    76c8: 54000a41     	b.ne	0x7810 <aw8693x_play_mode+0x178>
    76cc: 90000014     	adrp	x20, 0x7000 <richtap_rtp_work+0x38>
		00000000000076cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ee
    76d0: 91000294     	add	x20, x20, #0x0
		00000000000076d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ee
    76d4: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		00000000000076d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16fa
    76d8: 91000000     	add	x0, x0, #0x0
		00000000000076d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16fa
    76dc: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		00000000000076dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165e
    76e0: 91000063     	add	x3, x3, #0x0
		00000000000076e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165e
    76e4: aa1403e1     	mov	x1, x20
    76e8: 52804c62     	mov	w2, #0x263              // =611
    76ec: 94000000     	bl	0x76ec <aw8693x_play_mode+0x54>
		00000000000076ec:  R_AARCH64_CALL26	_printk
    76f0: 52800048     	mov	w8, #0x2                // =2
    76f4: aa1303e0     	mov	x0, x19
    76f8: 52800101     	mov	w1, #0x8                // =8
    76fc: 12800062     	mov	w2, #-0x4               // =-4
    7700: 52800023     	mov	w3, #0x1                // =1
    7704: 39005e68     	strb	w8, [x19, #0x17]
    7708: 94000000     	bl	0x7708 <aw8693x_play_mode+0x70>
		0000000000007708:  R_AARCH64_CALL26	i2c_w_bits
    770c: aa1303e0     	mov	x0, x19
    7710: 52800101     	mov	w1, #0x8                // =8
    7714: 12800082     	mov	w2, #-0x5               // =-5
    7718: 52800083     	mov	w3, #0x4                // =4
    771c: 1400005c     	b	0x788c <aw8693x_play_mode+0x1f4>
    7720: 71000d1f     	cmp	w8, #0x3
    7724: 54000580     	b.eq	0x77d4 <aw8693x_play_mode+0x13c>
    7728: 7100111f     	cmp	w8, #0x4
    772c: 54000d40     	b.eq	0x78d4 <aw8693x_play_mode+0x23c>
    7730: 7100151f     	cmp	w8, #0x5
    7734: 540006e1     	b.ne	0x7810 <aw8693x_play_mode+0x178>
    7738: 90000014     	adrp	x20, 0x7000 <richtap_rtp_work+0x38>
		0000000000007738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ee
    773c: 91000294     	add	x20, x20, #0x0
		000000000000773c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ee
    7740: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1692
    7744: 91000000     	add	x0, x0, #0x0
		0000000000007744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1692
    7748: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165e
    774c: 91000063     	add	x3, x3, #0x0
		000000000000774c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165e
    7750: aa1403e1     	mov	x1, x20
    7754: 52804b22     	mov	w2, #0x259              // =601
    7758: 94000000     	bl	0x7758 <aw8693x_play_mode+0xc0>
		0000000000007758:  R_AARCH64_CALL26	_printk
    775c: 528000a8     	mov	w8, #0x5                // =5
    7760: aa1303e0     	mov	x0, x19
    7764: 52800101     	mov	w1, #0x8                // =8
    7768: 12800062     	mov	w2, #-0x4               // =-4
    776c: 2a1f03e3     	mov	w3, wzr
    7770: 39005e68     	strb	w8, [x19, #0x17]
    7774: 94000000     	bl	0x7774 <aw8693x_play_mode+0xdc>
		0000000000007774:  R_AARCH64_CALL26	i2c_w_bits
    7778: aa1303e0     	mov	x0, x19
    777c: 52800101     	mov	w1, #0x8                // =8
    7780: 12800082     	mov	w2, #-0x5               // =-5
    7784: 2a1f03e3     	mov	w3, wzr
    7788: 14000067     	b	0x7924 <aw8693x_play_mode+0x28c>
    778c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		000000000000778c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15f8
    7790: 91000000     	add	x0, x0, #0x0
		0000000000007790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15f8
    7794: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ee
    7798: 91000021     	add	x1, x1, #0x0
		0000000000007798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ee
    779c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		000000000000779c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165e
    77a0: 91000063     	add	x3, x3, #0x0
		00000000000077a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165e
    77a4: 528047c2     	mov	w2, #0x23e              // =574
    77a8: 94000000     	bl	0x77a8 <aw8693x_play_mode+0x110>
		00000000000077a8:  R_AARCH64_CALL26	_printk
    77ac: aa1303e0     	mov	x0, x19
    77b0: 528008a1     	mov	w1, #0x45               // =69
    77b4: 12800402     	mov	w2, #-0x21              // =-33
    77b8: 52800403     	mov	w3, #0x20               // =32
    77bc: 39005e7f     	strb	wzr, [x19, #0x17]
    77c0: 94000000     	bl	0x77c0 <aw8693x_play_mode+0x128>
		00000000000077c0:  R_AARCH64_CALL26	i2c_w_bits
    77c4: aa1303e0     	mov	x0, x19
    77c8: 528008a1     	mov	w1, #0x45               // =69
    77cc: 12800402     	mov	w2, #-0x21              // =-33
    77d0: 1400003f     	b	0x78cc <aw8693x_play_mode+0x234>
    77d4: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		00000000000077d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1670
    77d8: 91000000     	add	x0, x0, #0x0
		00000000000077d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1670
    77dc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		00000000000077dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ee
    77e0: 91000021     	add	x1, x1, #0x0
		00000000000077e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ee
    77e4: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		00000000000077e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165e
    77e8: 91000063     	add	x3, x3, #0x0
		00000000000077e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165e
    77ec: 52804da2     	mov	w2, #0x26d              // =621
    77f0: 94000000     	bl	0x77f0 <aw8693x_play_mode+0x158>
		00000000000077f0:  R_AARCH64_CALL26	_printk
    77f4: 52800068     	mov	w8, #0x3                // =3
    77f8: aa1303e0     	mov	x0, x19
    77fc: 52800101     	mov	w1, #0x8                // =8
    7800: 12800062     	mov	w2, #-0x4               // =-4
    7804: 2a1f03e3     	mov	w3, wzr
    7808: 39005e68     	strb	w8, [x19, #0x17]
    780c: 1400002c     	b	0x78bc <aw8693x_play_mode+0x224>
    7810: 90000008     	adrp	x8, 0x7000 <richtap_rtp_work+0x38>
		0000000000007810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ee
    7814: 91000108     	add	x8, x8, #0x0
		0000000000007814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ee
    7818: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1742
    781c: 91000000     	add	x0, x0, #0x0
		000000000000781c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1742
    7820: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165e
    7824: 91000063     	add	x3, x3, #0x0
		0000000000007824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165e
    7828: 12001c24     	and	w4, w1, #0xff
    782c: aa0803e1     	mov	x1, x8
    7830: 52804fe2     	mov	w2, #0x27f              // =639
    7834: 94000000     	bl	0x7834 <aw8693x_play_mode+0x19c>
		0000000000007834:  R_AARCH64_CALL26	_printk
    7838: 1400004d     	b	0x796c <aw8693x_play_mode+0x2d4>
    783c: 90000014     	adrp	x20, 0x7000 <richtap_rtp_work+0x38>
		000000000000783c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ee
    7840: 91000294     	add	x20, x20, #0x0
		0000000000007840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ee
    7844: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b8
    7848: 91000000     	add	x0, x0, #0x0
		0000000000007848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b8
    784c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		000000000000784c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165e
    7850: 91000063     	add	x3, x3, #0x0
		0000000000007850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165e
    7854: aa1403e1     	mov	x1, x20
    7858: 528049e2     	mov	w2, #0x24f              // =591
    785c: 94000000     	bl	0x785c <aw8693x_play_mode+0x1c4>
		000000000000785c:  R_AARCH64_CALL26	_printk
    7860: 52800028     	mov	w8, #0x1                // =1
    7864: aa1303e0     	mov	x0, x19
    7868: 52800101     	mov	w1, #0x8                // =8
    786c: 12800062     	mov	w2, #-0x4               // =-4
    7870: 2a1f03e3     	mov	w3, wzr
    7874: 39005e68     	strb	w8, [x19, #0x17]
    7878: 94000000     	bl	0x7878 <aw8693x_play_mode+0x1e0>
		0000000000007878:  R_AARCH64_CALL26	i2c_w_bits
    787c: aa1303e0     	mov	x0, x19
    7880: 52800101     	mov	w1, #0x8                // =8
    7884: 12800082     	mov	w2, #-0x5               // =-5
    7888: 2a1f03e3     	mov	w3, wzr
    788c: 94000000     	bl	0x788c <aw8693x_play_mode+0x1f4>
		000000000000788c:  R_AARCH64_CALL26	i2c_w_bits
    7890: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x171a
    7894: 91000000     	add	x0, x0, #0x0
		0000000000007894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x171a
    7898: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x161c
    789c: 91000063     	add	x3, x3, #0x0
		000000000000789c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x161c
    78a0: aa1403e1     	mov	x1, x20
    78a4: 52803f02     	mov	w2, #0x1f8              // =504
    78a8: 94000000     	bl	0x78a8 <aw8693x_play_mode+0x210>
		00000000000078a8:  R_AARCH64_CALL26	_printk
    78ac: aa1303e0     	mov	x0, x19
    78b0: 528000c1     	mov	w1, #0x6                // =6
    78b4: 12800402     	mov	w2, #-0x21              // =-33
    78b8: 52800403     	mov	w3, #0x20               // =32
    78bc: 94000000     	bl	0x78bc <aw8693x_play_mode+0x224>
		00000000000078bc:  R_AARCH64_CALL26	i2c_w_bits
    78c0: aa1303e0     	mov	x0, x19
    78c4: 52800981     	mov	w1, #0x4c               // =76
    78c8: 12800802     	mov	w2, #-0x41              // =-65
    78cc: 2a1f03e3     	mov	w3, wzr
    78d0: 14000026     	b	0x7968 <aw8693x_play_mode+0x2d0>
    78d4: 90000014     	adrp	x20, 0x7000 <richtap_rtp_work+0x38>
		00000000000078d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ee
    78d8: 91000294     	add	x20, x20, #0x0
		00000000000078d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ee
    78dc: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		00000000000078dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16d8
    78e0: 91000000     	add	x0, x0, #0x0
		00000000000078e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16d8
    78e4: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		00000000000078e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165e
    78e8: 91000063     	add	x3, x3, #0x0
		00000000000078e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165e
    78ec: aa1403e1     	mov	x1, x20
    78f0: 52804ea2     	mov	w2, #0x275              // =629
    78f4: 94000000     	bl	0x78f4 <aw8693x_play_mode+0x25c>
		00000000000078f4:  R_AARCH64_CALL26	_printk
    78f8: 52800088     	mov	w8, #0x4                // =4
    78fc: aa1303e0     	mov	x0, x19
    7900: 52800101     	mov	w1, #0x8                // =8
    7904: 12800062     	mov	w2, #-0x4               // =-4
    7908: 52800043     	mov	w3, #0x2                // =2
    790c: 39005e68     	strb	w8, [x19, #0x17]
    7910: 94000000     	bl	0x7910 <aw8693x_play_mode+0x278>
		0000000000007910:  R_AARCH64_CALL26	i2c_w_bits
    7914: aa1303e0     	mov	x0, x19
    7918: 52800101     	mov	w1, #0x8                // =8
    791c: 12800082     	mov	w2, #-0x5               // =-5
    7920: 52800083     	mov	w3, #0x4                // =4
    7924: 94000000     	bl	0x7924 <aw8693x_play_mode+0x28c>
		0000000000007924:  R_AARCH64_CALL26	i2c_w_bits
    7928: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1634
    792c: 91000000     	add	x0, x0, #0x0
		000000000000792c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1634
    7930: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x161c
    7934: 91000063     	add	x3, x3, #0x0
		0000000000007934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x161c
    7938: aa1403e1     	mov	x1, x20
    793c: 52803fc2     	mov	w2, #0x1fe              // =510
    7940: 94000000     	bl	0x7940 <aw8693x_play_mode+0x2a8>
		0000000000007940:  R_AARCH64_CALL26	_printk
    7944: aa1303e0     	mov	x0, x19
    7948: 528000c1     	mov	w1, #0x6                // =6
    794c: 12800402     	mov	w2, #-0x21              // =-33
    7950: 2a1f03e3     	mov	w3, wzr
    7954: 94000000     	bl	0x7954 <aw8693x_play_mode+0x2bc>
		0000000000007954:  R_AARCH64_CALL26	i2c_w_bits
    7958: aa1303e0     	mov	x0, x19
    795c: 52800981     	mov	w1, #0x4c               // =76
    7960: 12800802     	mov	w2, #-0x41              // =-65
    7964: 52800803     	mov	w3, #0x40               // =64
    7968: 94000000     	bl	0x7968 <aw8693x_play_mode+0x2d0>
		0000000000007968:  R_AARCH64_CALL26	i2c_w_bits
    796c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7970: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7974: d50323bf     	autiasp
    7978: d65f03c0     	ret
