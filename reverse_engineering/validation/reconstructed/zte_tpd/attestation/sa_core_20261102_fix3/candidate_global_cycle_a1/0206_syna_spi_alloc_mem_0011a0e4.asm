
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023050 <syna_spi_alloc_mem>:
   23050: d503233f     	paciasp
   23054: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   23058: a9015ff8     	stp	x24, x23, [sp, #0x10]
   2305c: a90257f6     	stp	x22, x21, [sp, #0x20]
   23060: a9034ff4     	stp	x20, x19, [sp, #0x30]
   23064: 910003fd     	mov	x29, sp
   23068: 90000015     	adrp	x21, 0x23000 <syna_spi_power_on+0x218>
		0000000000023068:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6414
   2306c: 90000016     	adrp	x22, 0x23000 <syna_spi_power_on+0x218>
		000000000002306c:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   23070: 2a0003f4     	mov	w20, w0
   23074: b94002a9     	ldr	w9, [x21]
		0000000000023074:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6414
   23078: f94002c8     	ldr	x8, [x22]
		0000000000023078:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   2307c: 2a0103f3     	mov	w19, w1
   23080: 6b00013f     	cmp	w9, w0
   23084: 54000322     	b.hs	0x230e8 <syna_spi_alloc_mem+0x98>
   23088: 90000017     	adrp	x23, 0x23000 <syna_spi_power_on+0x218>
		0000000000023088:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   2308c: f94002e9     	ldr	x9, [x23]
		000000000002308c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   23090: b4000989     	cbz	x9, 0x231c0 <syna_spi_alloc_mem+0x170>
   23094: f9403920     	ldr	x0, [x9, #0x70]
   23098: b4000940     	cbz	x0, 0x231c0 <syna_spi_alloc_mem+0x170>
   2309c: b4000068     	cbz	x8, 0x230a8 <syna_spi_alloc_mem+0x58>
   230a0: aa0803e1     	mov	x1, x8
   230a4: 94000000     	bl	0x230a4 <syna_spi_alloc_mem+0x54>
		00000000000230a4:  R_AARCH64_CALL26	devm_kfree
   230a8: f94002e8     	ldr	x8, [x23]
		00000000000230a8:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   230ac: b4000988     	cbz	x8, 0x231dc <syna_spi_alloc_mem+0x18c>
   230b0: f9403900     	ldr	x0, [x8, #0x70]
   230b4: b4000940     	cbz	x0, 0x231dc <syna_spi_alloc_mem+0x18c>
   230b8: 0b141288     	add	w8, w20, w20, lsl #4
   230bc: 531d7108     	lsl	w8, w8, #3
   230c0: 7100011f     	cmp	w8, #0x0
   230c4: 54000c2d     	b.le	0x23248 <syna_spi_alloc_mem+0x1f8>
   230c8: 52801108     	mov	w8, #0x88               // =136
   230cc: 5281b802     	mov	w2, #0xdc0              // =3520
   230d0: 9ba87e81     	umull	x1, w20, w8
   230d4: 94000000     	bl	0x230d4 <syna_spi_alloc_mem+0x84>
		00000000000230d4:  R_AARCH64_CALL26	devm_kmalloc
   230d8: f90002c0     	str	x0, [x22]
		00000000000230d8:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   230dc: b4000c20     	cbz	x0, 0x23260 <syna_spi_alloc_mem+0x210>
   230e0: b90002b4     	str	w20, [x21]
		00000000000230e0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6414
   230e4: 14000006     	b	0x230fc <syna_spi_alloc_mem+0xac>
   230e8: 0b141289     	add	w9, w20, w20, lsl #4
   230ec: aa0803e0     	mov	x0, x8
   230f0: 2a1f03e1     	mov	w1, wzr
   230f4: 531d7122     	lsl	w2, w9, #3
   230f8: 94000000     	bl	0x230f8 <syna_spi_alloc_mem+0xa8>
		00000000000230f8:  R_AARCH64_CALL26	memset
   230fc: 90000015     	adrp	x21, 0x23000 <syna_spi_power_on+0x218>
		00000000000230fc:  R_AARCH64_ADR_PREL_PG_HI21	buf_size
   23100: b94002a8     	ldr	w8, [x21]
		0000000000023100:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   23104: 6b13011f     	cmp	w8, w19
   23108: 54000582     	b.hs	0x231b8 <syna_spi_alloc_mem+0x168>
   2310c: 90000016     	adrp	x22, 0x23000 <syna_spi_power_on+0x218>
		000000000002310c:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   23110: 90000017     	adrp	x23, 0x23000 <syna_spi_power_on+0x218>
		0000000000023110:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   23114: f94002c1     	ldr	x1, [x22]
		0000000000023114:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   23118: b40000e1     	cbz	x1, 0x23134 <syna_spi_alloc_mem+0xe4>
   2311c: f94002e8     	ldr	x8, [x23]
		000000000002311c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   23120: b40007c8     	cbz	x8, 0x23218 <syna_spi_alloc_mem+0x1c8>
   23124: f9403900     	ldr	x0, [x8, #0x70]
   23128: b4000780     	cbz	x0, 0x23218 <syna_spi_alloc_mem+0x1c8>
   2312c: 94000000     	bl	0x2312c <syna_spi_alloc_mem+0xdc>
		000000000002312c:  R_AARCH64_CALL26	devm_kfree
   23130: f90002df     	str	xzr, [x22]
		0000000000023130:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   23134: 90000018     	adrp	x24, 0x23000 <syna_spi_power_on+0x218>
		0000000000023134:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   23138: f9400301     	ldr	x1, [x24]
		0000000000023138:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   2313c: b40000e1     	cbz	x1, 0x23158 <syna_spi_alloc_mem+0x108>
   23140: f94002e8     	ldr	x8, [x23]
		0000000000023140:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   23144: b4000768     	cbz	x8, 0x23230 <syna_spi_alloc_mem+0x1e0>
   23148: f9403900     	ldr	x0, [x8, #0x70]
   2314c: b4000720     	cbz	x0, 0x23230 <syna_spi_alloc_mem+0x1e0>
   23150: 94000000     	bl	0x23150 <syna_spi_alloc_mem+0x100>
		0000000000023150:  R_AARCH64_CALL26	devm_kfree
   23154: f900031f     	str	xzr, [x24]
		0000000000023154:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   23158: f94002e8     	ldr	x8, [x23]
		0000000000023158:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   2315c: b4000468     	cbz	x8, 0x231e8 <syna_spi_alloc_mem+0x198>
   23160: f9403900     	ldr	x0, [x8, #0x70]
   23164: b4000420     	cbz	x0, 0x231e8 <syna_spi_alloc_mem+0x198>
   23168: 7100027f     	cmp	w19, #0x0
   2316c: 5400088d     	b.le	0x2327c <syna_spi_alloc_mem+0x22c>
   23170: 2a1303f4     	mov	w20, w19
   23174: 5281b802     	mov	w2, #0xdc0              // =3520
   23178: aa1403e1     	mov	x1, x20
   2317c: 94000000     	bl	0x2317c <syna_spi_alloc_mem+0x12c>
		000000000002317c:  R_AARCH64_CALL26	devm_kmalloc
   23180: f90002c0     	str	x0, [x22]
		0000000000023180:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   23184: b4000880     	cbz	x0, 0x23294 <syna_spi_alloc_mem+0x244>
   23188: f94002e8     	ldr	x8, [x23]
		0000000000023188:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   2318c: b4000348     	cbz	x8, 0x231f4 <syna_spi_alloc_mem+0x1a4>
   23190: f9403900     	ldr	x0, [x8, #0x70]
   23194: b4000300     	cbz	x0, 0x231f4 <syna_spi_alloc_mem+0x1a4>
   23198: aa1403e1     	mov	x1, x20
   2319c: 5281b802     	mov	w2, #0xdc0              // =3520
   231a0: 94000000     	bl	0x231a0 <syna_spi_alloc_mem+0x150>
		00000000000231a0:  R_AARCH64_CALL26	devm_kmalloc
   231a4: f9000300     	str	x0, [x24]
		00000000000231a4:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   231a8: b4000320     	cbz	x0, 0x2320c <syna_spi_alloc_mem+0x1bc>
   231ac: 2a1f03e0     	mov	w0, wzr
   231b0: b90002b3     	str	w19, [x21]
		00000000000231b0:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   231b4: 1400003f     	b	0x232b0 <syna_spi_alloc_mem+0x260>
   231b8: 2a1f03e0     	mov	w0, wzr
   231bc: 1400003d     	b	0x232b0 <syna_spi_alloc_mem+0x260>
   231c0: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		00000000000231c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   231c4: 91000000     	add	x0, x0, #0x0
		00000000000231c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   231c8: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		00000000000231c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   231cc: 91000021     	add	x1, x1, #0x0
		00000000000231cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   231d0: 94000000     	bl	0x231d0 <syna_spi_alloc_mem+0x180>
		00000000000231d0:  R_AARCH64_CALL26	_printk
   231d4: f94002e8     	ldr	x8, [x23]
		00000000000231d4:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   231d8: b5fff6c8     	cbnz	x8, 0x230b0 <syna_spi_alloc_mem+0x60>
   231dc: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		00000000000231dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   231e0: 91000000     	add	x0, x0, #0x0
		00000000000231e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   231e4: 1400001b     	b	0x23250 <syna_spi_alloc_mem+0x200>
   231e8: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		00000000000231e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   231ec: 91000000     	add	x0, x0, #0x0
		00000000000231ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   231f0: 14000025     	b	0x23284 <syna_spi_alloc_mem+0x234>
   231f4: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		00000000000231f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   231f8: 91000000     	add	x0, x0, #0x0
		00000000000231f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   231fc: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		00000000000231fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   23200: 91000021     	add	x1, x1, #0x0
		0000000000023200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   23204: 94000000     	bl	0x23204 <syna_spi_alloc_mem+0x1b4>
		0000000000023204:  R_AARCH64_CALL26	_printk
   23208: f900031f     	str	xzr, [x24]
		0000000000023208:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   2320c: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		000000000002320c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x183c3
   23210: 91000000     	add	x0, x0, #0x0
		0000000000023210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x183c3
   23214: 14000022     	b	0x2329c <syna_spi_alloc_mem+0x24c>
   23218: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   2321c: 91000000     	add	x0, x0, #0x0
		000000000002321c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23220: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   23224: 91000021     	add	x1, x1, #0x0
		0000000000023224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   23228: 94000000     	bl	0x23228 <syna_spi_alloc_mem+0x1d8>
		0000000000023228:  R_AARCH64_CALL26	_printk
   2322c: 17ffffc1     	b	0x23130 <syna_spi_alloc_mem+0xe0>
   23230: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23234: 91000000     	add	x0, x0, #0x0
		0000000000023234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23238: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   2323c: 91000021     	add	x1, x1, #0x0
		000000000002323c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   23240: 94000000     	bl	0x23240 <syna_spi_alloc_mem+0x1f0>
		0000000000023240:  R_AARCH64_CALL26	_printk
   23244: 17ffffc4     	b	0x23154 <syna_spi_alloc_mem+0x104>
   23248: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   2324c: 91000000     	add	x0, x0, #0x0
		000000000002324c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   23250: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   23254: 91000021     	add	x1, x1, #0x0
		0000000000023254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   23258: 94000000     	bl	0x23258 <syna_spi_alloc_mem+0x208>
		0000000000023258:  R_AARCH64_CALL26	_printk
   2325c: f90002df     	str	xzr, [x22]
		000000000002325c:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   23260: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c08
   23264: 91000000     	add	x0, x0, #0x0
		0000000000023264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c08
   23268: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19755
   2326c: 91000021     	add	x1, x1, #0x0
		000000000002326c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19755
   23270: 94000000     	bl	0x23270 <syna_spi_alloc_mem+0x220>
		0000000000023270:  R_AARCH64_CALL26	_printk
   23274: b90002bf     	str	wzr, [x21]
		0000000000023274:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6414
   23278: 1400000d     	b	0x232ac <syna_spi_alloc_mem+0x25c>
   2327c: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		000000000002327c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   23280: 91000000     	add	x0, x0, #0x0
		0000000000023280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   23284: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   23288: 91000021     	add	x1, x1, #0x0
		0000000000023288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   2328c: 94000000     	bl	0x2328c <syna_spi_alloc_mem+0x23c>
		000000000002328c:  R_AARCH64_CALL26	_printk
   23290: f90002df     	str	xzr, [x22]
		0000000000023290:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   23294: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b30a
   23298: 91000000     	add	x0, x0, #0x0
		0000000000023298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b30a
   2329c: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		000000000002329c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19755
   232a0: 91000021     	add	x1, x1, #0x0
		00000000000232a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19755
   232a4: 94000000     	bl	0x232a4 <syna_spi_alloc_mem+0x254>
		00000000000232a4:  R_AARCH64_CALL26	_printk
   232a8: b90002bf     	str	wzr, [x21]
		00000000000232a8:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   232ac: 12800160     	mov	w0, #-0xc               // =-12
   232b0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   232b4: a94257f6     	ldp	x22, x21, [sp, #0x20]
   232b8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   232bc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   232c0: d50323bf     	autiasp
   232c4: d65f03c0     	ret
