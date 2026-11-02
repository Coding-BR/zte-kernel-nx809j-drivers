
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000171c <tpd_proc_deinit>:
    171c: d503233f     	paciasp
    1720: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1724: f9000bf3     	str	x19, [sp, #0x10]
    1728: 910003fd     	mov	x29, sp
    172c: 90000013     	adrp	x19, 0x1000 <zlog_register_work_deinit+0x14>
		000000000000172c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
    1730: f9400261     	ldr	x1, [x19]
		0000000000001730:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1734: b4000f81     	cbz	x1, 0x1924 <tpd_proc_deinit+0x208>
    1738: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30d2
    173c: 91000000     	add	x0, x0, #0x0
		000000000000173c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30d2
    1740: 94000000     	bl	0x1740 <tpd_proc_deinit+0x24>
		0000000000001740:  R_AARCH64_CALL26	remove_proc_entry
    1744: f9400261     	ldr	x1, [x19]
		0000000000001744:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1748: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30e1
    174c: 91000000     	add	x0, x0, #0x0
		000000000000174c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30e1
    1750: 94000000     	bl	0x1750 <tpd_proc_deinit+0x34>
		0000000000001750:  R_AARCH64_CALL26	remove_proc_entry
    1754: f9400261     	ldr	x1, [x19]
		0000000000001754:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1758: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb88c
    175c: 91000000     	add	x0, x0, #0x0
		000000000000175c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb88c
    1760: 94000000     	bl	0x1760 <tpd_proc_deinit+0x44>
		0000000000001760:  R_AARCH64_CALL26	remove_proc_entry
    1764: f9400261     	ldr	x1, [x19]
		0000000000001764:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1768: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d0a
    176c: 91000000     	add	x0, x0, #0x0
		000000000000176c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d0a
    1770: 94000000     	bl	0x1770 <tpd_proc_deinit+0x54>
		0000000000001770:  R_AARCH64_CALL26	remove_proc_entry
    1774: f9400261     	ldr	x1, [x19]
		0000000000001774:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1778: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3de1
    177c: 91000000     	add	x0, x0, #0x0
		000000000000177c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3de1
    1780: 94000000     	bl	0x1780 <tpd_proc_deinit+0x64>
		0000000000001780:  R_AARCH64_CALL26	remove_proc_entry
    1784: f9400261     	ldr	x1, [x19]
		0000000000001784:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1788: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5523
    178c: 91000000     	add	x0, x0, #0x0
		000000000000178c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5523
    1790: 94000000     	bl	0x1790 <tpd_proc_deinit+0x74>
		0000000000001790:  R_AARCH64_CALL26	remove_proc_entry
    1794: f9400261     	ldr	x1, [x19]
		0000000000001794:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1798: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94f3
    179c: 91000000     	add	x0, x0, #0x0
		000000000000179c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94f3
    17a0: 94000000     	bl	0x17a0 <tpd_proc_deinit+0x84>
		00000000000017a0:  R_AARCH64_CALL26	remove_proc_entry
    17a4: f9400261     	ldr	x1, [x19]
		00000000000017a4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    17a8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000017a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d15
    17ac: 91000000     	add	x0, x0, #0x0
		00000000000017ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d15
    17b0: 94000000     	bl	0x17b0 <tpd_proc_deinit+0x94>
		00000000000017b0:  R_AARCH64_CALL26	remove_proc_entry
    17b4: f9400261     	ldr	x1, [x19]
		00000000000017b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    17b8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000017b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1786
    17bc: 91000000     	add	x0, x0, #0x0
		00000000000017bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1786
    17c0: 94000000     	bl	0x17c0 <tpd_proc_deinit+0xa4>
		00000000000017c0:  R_AARCH64_CALL26	remove_proc_entry
    17c4: f9400261     	ldr	x1, [x19]
		00000000000017c4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    17c8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000017c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8454
    17cc: 91000000     	add	x0, x0, #0x0
		00000000000017cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8454
    17d0: 94000000     	bl	0x17d0 <tpd_proc_deinit+0xb4>
		00000000000017d0:  R_AARCH64_CALL26	remove_proc_entry
    17d4: f9400261     	ldr	x1, [x19]
		00000000000017d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    17d8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000017d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x245c
    17dc: 91000000     	add	x0, x0, #0x0
		00000000000017dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x245c
    17e0: 94000000     	bl	0x17e0 <tpd_proc_deinit+0xc4>
		00000000000017e0:  R_AARCH64_CALL26	remove_proc_entry
    17e4: f9400261     	ldr	x1, [x19]
		00000000000017e4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    17e8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000017e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5033
    17ec: 91000000     	add	x0, x0, #0x0
		00000000000017ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5033
    17f0: 94000000     	bl	0x17f0 <tpd_proc_deinit+0xd4>
		00000000000017f0:  R_AARCH64_CALL26	remove_proc_entry
    17f4: f9400261     	ldr	x1, [x19]
		00000000000017f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    17f8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000017f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fc
    17fc: 91000000     	add	x0, x0, #0x0
		00000000000017fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fc
    1800: 94000000     	bl	0x1800 <tpd_proc_deinit+0xe4>
		0000000000001800:  R_AARCH64_CALL26	remove_proc_entry
    1804: f9400261     	ldr	x1, [x19]
		0000000000001804:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1808: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a55
    180c: 91000000     	add	x0, x0, #0x0
		000000000000180c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a55
    1810: 94000000     	bl	0x1810 <tpd_proc_deinit+0xf4>
		0000000000001810:  R_AARCH64_CALL26	remove_proc_entry
    1814: f9400261     	ldr	x1, [x19]
		0000000000001814:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1818: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7350
    181c: 91000000     	add	x0, x0, #0x0
		000000000000181c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7350
    1820: 94000000     	bl	0x1820 <tpd_proc_deinit+0x104>
		0000000000001820:  R_AARCH64_CALL26	remove_proc_entry
    1824: f9400261     	ldr	x1, [x19]
		0000000000001824:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1828: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1790
    182c: 91000000     	add	x0, x0, #0x0
		000000000000182c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1790
    1830: 94000000     	bl	0x1830 <tpd_proc_deinit+0x114>
		0000000000001830:  R_AARCH64_CALL26	remove_proc_entry
    1834: f9400261     	ldr	x1, [x19]
		0000000000001834:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1838: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d2a
    183c: 91000000     	add	x0, x0, #0x0
		000000000000183c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d2a
    1840: 94000000     	bl	0x1840 <tpd_proc_deinit+0x124>
		0000000000001840:  R_AARCH64_CALL26	remove_proc_entry
    1844: f9400261     	ldr	x1, [x19]
		0000000000001844:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1848: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x552b
    184c: 91000000     	add	x0, x0, #0x0
		000000000000184c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x552b
    1850: 94000000     	bl	0x1850 <tpd_proc_deinit+0x134>
		0000000000001850:  R_AARCH64_CALL26	remove_proc_entry
    1854: f9400261     	ldr	x1, [x19]
		0000000000001854:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1858: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb65
    185c: 91000000     	add	x0, x0, #0x0
		000000000000185c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb65
    1860: 94000000     	bl	0x1860 <tpd_proc_deinit+0x144>
		0000000000001860:  R_AARCH64_CALL26	remove_proc_entry
    1864: f9400261     	ldr	x1, [x19]
		0000000000001864:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1868: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7eb8
    186c: 91000000     	add	x0, x0, #0x0
		000000000000186c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7eb8
    1870: 94000000     	bl	0x1870 <tpd_proc_deinit+0x154>
		0000000000001870:  R_AARCH64_CALL26	remove_proc_entry
    1874: f9400261     	ldr	x1, [x19]
		0000000000001874:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1878: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ee
    187c: 91000000     	add	x0, x0, #0x0
		000000000000187c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ee
    1880: 94000000     	bl	0x1880 <tpd_proc_deinit+0x164>
		0000000000001880:  R_AARCH64_CALL26	remove_proc_entry
    1884: f9400261     	ldr	x1, [x19]
		0000000000001884:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1888: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x40
    188c: 91000000     	add	x0, x0, #0x0
		000000000000188c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x40
    1890: 94000000     	bl	0x1890 <tpd_proc_deinit+0x174>
		0000000000001890:  R_AARCH64_CALL26	remove_proc_entry
    1894: f9400261     	ldr	x1, [x19]
		0000000000001894:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    1898: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ec1
    189c: 91000000     	add	x0, x0, #0x0
		000000000000189c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ec1
    18a0: 94000000     	bl	0x18a0 <tpd_proc_deinit+0x184>
		00000000000018a0:  R_AARCH64_CALL26	remove_proc_entry
    18a4: f9400261     	ldr	x1, [x19]
		00000000000018a4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    18a8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000018a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x845f
    18ac: 91000000     	add	x0, x0, #0x0
		00000000000018ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x845f
    18b0: 94000000     	bl	0x18b0 <tpd_proc_deinit+0x194>
		00000000000018b0:  R_AARCH64_CALL26	remove_proc_entry
    18b4: f9400261     	ldr	x1, [x19]
		00000000000018b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    18b8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000018b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x735a
    18bc: 91000000     	add	x0, x0, #0x0
		00000000000018bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x735a
    18c0: 94000000     	bl	0x18c0 <tpd_proc_deinit+0x1a4>
		00000000000018c0:  R_AARCH64_CALL26	remove_proc_entry
    18c4: f9400261     	ldr	x1, [x19]
		00000000000018c4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    18c8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000018c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5537
    18cc: 91000000     	add	x0, x0, #0x0
		00000000000018cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5537
    18d0: 94000000     	bl	0x18d0 <tpd_proc_deinit+0x1b4>
		00000000000018d0:  R_AARCH64_CALL26	remove_proc_entry
    18d4: f9400261     	ldr	x1, [x19]
		00000000000018d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    18d8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000018d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2467
    18dc: 91000000     	add	x0, x0, #0x0
		00000000000018dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2467
    18e0: 94000000     	bl	0x18e0 <tpd_proc_deinit+0x1c4>
		00000000000018e0:  R_AARCH64_CALL26	remove_proc_entry
    18e4: f9400261     	ldr	x1, [x19]
		00000000000018e4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    18e8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000018e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60a5
    18ec: 91000000     	add	x0, x0, #0x0
		00000000000018ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60a5
    18f0: 94000000     	bl	0x18f0 <tpd_proc_deinit+0x1d4>
		00000000000018f0:  R_AARCH64_CALL26	remove_proc_entry
    18f4: f9400261     	ldr	x1, [x19]
		00000000000018f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    18f8: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		00000000000018f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x846a
    18fc: 91000000     	add	x0, x0, #0x0
		00000000000018fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x846a
    1900: 94000000     	bl	0x1900 <tpd_proc_deinit+0x1e4>
		0000000000001900:  R_AARCH64_CALL26	remove_proc_entry
    1904: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16bd
    1908: 91000000     	add	x0, x0, #0x0
		0000000000001908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16bd
    190c: aa1f03e1     	mov	x1, xzr
    1910: 94000000     	bl	0x1910 <tpd_proc_deinit+0x1f4>
		0000000000001910:  R_AARCH64_CALL26	remove_proc_entry
    1914: f9400bf3     	ldr	x19, [sp, #0x10]
    1918: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    191c: d50323bf     	autiasp
    1920: d65f03c0     	ret
    1924: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbde8
    1928: 91000000     	add	x0, x0, #0x0
		0000000000001928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbde8
    192c: 90000001     	adrp	x1, 0x1000 <zlog_register_work_deinit+0x14>
		000000000000192c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7935
    1930: 91000021     	add	x1, x1, #0x0
		0000000000001930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7935
    1934: 94000000     	bl	0x1934 <tpd_proc_deinit+0x218>
		0000000000001934:  R_AARCH64_CALL26	_printk
    1938: 17fffff7     	b	0x1914 <tpd_proc_deinit+0x1f8>
