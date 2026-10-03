
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cc0c <tpd_proc_deinit>:
    cc0c: d503233f     	paciasp
    cc10: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    cc14: f9000bf3     	str	x19, [sp, #0x10]
    cc18: 910003fd     	mov	x29, sp
    cc1c: 90000013     	adrp	x19, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc1c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_proc_dir
    cc20: f9400261     	ldr	x1, [x19]
		000000000000cc20:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cc24: b4000f81     	cbz	x1, 0xce14 <tpd_proc_deinit+0x208>
    cc28: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a62
    cc2c: 91000000     	add	x0, x0, #0x0
		000000000000cc2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a62
    cc30: 94000000     	bl	0xcc30 <tpd_proc_deinit+0x24>
		000000000000cc30:  R_AARCH64_CALL26	remove_proc_entry
    cc34: f9400261     	ldr	x1, [x19]
		000000000000cc34:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cc38: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a71
    cc3c: 91000000     	add	x0, x0, #0x0
		000000000000cc3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a71
    cc40: 94000000     	bl	0xcc40 <tpd_proc_deinit+0x34>
		000000000000cc40:  R_AARCH64_CALL26	remove_proc_entry
    cc44: f9400261     	ldr	x1, [x19]
		000000000000cc44:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cc48: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4fd
    cc4c: 91000000     	add	x0, x0, #0x0
		000000000000cc4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4fd
    cc50: 94000000     	bl	0xcc50 <tpd_proc_deinit+0x44>
		000000000000cc50:  R_AARCH64_CALL26	remove_proc_entry
    cc54: f9400261     	ldr	x1, [x19]
		000000000000cc54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cc58: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a434
    cc5c: 91000000     	add	x0, x0, #0x0
		000000000000cc5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a434
    cc60: 94000000     	bl	0xcc60 <tpd_proc_deinit+0x54>
		000000000000cc60:  R_AARCH64_CALL26	remove_proc_entry
    cc64: f9400261     	ldr	x1, [x19]
		000000000000cc64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cc68: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f81
    cc6c: 91000000     	add	x0, x0, #0x0
		000000000000cc6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f81
    cc70: 94000000     	bl	0xcc70 <tpd_proc_deinit+0x64>
		000000000000cc70:  R_AARCH64_CALL26	remove_proc_entry
    cc74: f9400261     	ldr	x1, [x19]
		000000000000cc74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cc78: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19977
    cc7c: 91000000     	add	x0, x0, #0x0
		000000000000cc7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19977
    cc80: 94000000     	bl	0xcc80 <tpd_proc_deinit+0x74>
		000000000000cc80:  R_AARCH64_CALL26	remove_proc_entry
    cc84: f9400261     	ldr	x1, [x19]
		000000000000cc84:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cc88: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b69f
    cc8c: 91000000     	add	x0, x0, #0x0
		000000000000cc8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b69f
    cc90: 94000000     	bl	0xcc90 <tpd_proc_deinit+0x84>
		000000000000cc90:  R_AARCH64_CALL26	remove_proc_entry
    cc94: f9400261     	ldr	x1, [x19]
		000000000000cc94:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cc98: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cc98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a43f
    cc9c: 91000000     	add	x0, x0, #0x0
		000000000000cc9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a43f
    cca0: 94000000     	bl	0xcca0 <tpd_proc_deinit+0x94>
		000000000000cca0:  R_AARCH64_CALL26	remove_proc_entry
    cca4: f9400261     	ldr	x1, [x19]
		000000000000cca4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cca8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ec3
    ccac: 91000000     	add	x0, x0, #0x0
		000000000000ccac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ec3
    ccb0: 94000000     	bl	0xccb0 <tpd_proc_deinit+0xa4>
		000000000000ccb0:  R_AARCH64_CALL26	remove_proc_entry
    ccb4: f9400261     	ldr	x1, [x19]
		000000000000ccb4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    ccb8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ccb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afad
    ccbc: 91000000     	add	x0, x0, #0x0
		000000000000ccbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afad
    ccc0: 94000000     	bl	0xccc0 <tpd_proc_deinit+0xb4>
		000000000000ccc0:  R_AARCH64_CALL26	remove_proc_entry
    ccc4: f9400261     	ldr	x1, [x19]
		000000000000ccc4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    ccc8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ccc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1847d
    cccc: 91000000     	add	x0, x0, #0x0
		000000000000cccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1847d
    ccd0: 94000000     	bl	0xccd0 <tpd_proc_deinit+0xc4>
		000000000000ccd0:  R_AARCH64_CALL26	remove_proc_entry
    ccd4: f9400261     	ldr	x1, [x19]
		000000000000ccd4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    ccd8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ccd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1978c
    ccdc: 91000000     	add	x0, x0, #0x0
		000000000000ccdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1978c
    cce0: 94000000     	bl	0xcce0 <tpd_proc_deinit+0xd4>
		000000000000cce0:  R_AARCH64_CALL26	remove_proc_entry
    cce4: f9400261     	ldr	x1, [x19]
		000000000000cce4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cce8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17645
    ccec: 91000000     	add	x0, x0, #0x0
		000000000000ccec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17645
    ccf0: 94000000     	bl	0xccf0 <tpd_proc_deinit+0xe4>
		000000000000ccf0:  R_AARCH64_CALL26	remove_proc_entry
    ccf4: f9400261     	ldr	x1, [x19]
		000000000000ccf4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    ccf8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ccf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186a6
    ccfc: 91000000     	add	x0, x0, #0x0
		000000000000ccfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186a6
    cd00: 94000000     	bl	0xcd00 <tpd_proc_deinit+0xf4>
		000000000000cd00:  R_AARCH64_CALL26	remove_proc_entry
    cd04: f9400261     	ldr	x1, [x19]
		000000000000cd04:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd08: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a72c
    cd0c: 91000000     	add	x0, x0, #0x0
		000000000000cd0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a72c
    cd10: 94000000     	bl	0xcd10 <tpd_proc_deinit+0x104>
		000000000000cd10:  R_AARCH64_CALL26	remove_proc_entry
    cd14: f9400261     	ldr	x1, [x19]
		000000000000cd14:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd18: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ecd
    cd1c: 91000000     	add	x0, x0, #0x0
		000000000000cd1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ecd
    cd20: 94000000     	bl	0xcd20 <tpd_proc_deinit+0x114>
		000000000000cd20:  R_AARCH64_CALL26	remove_proc_entry
    cd24: f9400261     	ldr	x1, [x19]
		000000000000cd24:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd28: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a454
    cd2c: 91000000     	add	x0, x0, #0x0
		000000000000cd2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a454
    cd30: 94000000     	bl	0xcd30 <tpd_proc_deinit+0x124>
		000000000000cd30:  R_AARCH64_CALL26	remove_proc_entry
    cd34: f9400261     	ldr	x1, [x19]
		000000000000cd34:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd38: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a26
    cd3c: 91000000     	add	x0, x0, #0x0
		000000000000cd3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a26
    cd40: 94000000     	bl	0xcd40 <tpd_proc_deinit+0x134>
		000000000000cd40:  R_AARCH64_CALL26	remove_proc_entry
    cd44: f9400261     	ldr	x1, [x19]
		000000000000cd44:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd48: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17885
    cd4c: 91000000     	add	x0, x0, #0x0
		000000000000cd4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17885
    cd50: 94000000     	bl	0xcd50 <tpd_proc_deinit+0x144>
		000000000000cd50:  R_AARCH64_CALL26	remove_proc_entry
    cd54: f9400261     	ldr	x1, [x19]
		000000000000cd54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd58: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad29
    cd5c: 91000000     	add	x0, x0, #0x0
		000000000000cd5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad29
    cd60: 94000000     	bl	0xcd60 <tpd_proc_deinit+0x154>
		000000000000cd60:  R_AARCH64_CALL26	remove_proc_entry
    cd64: f9400261     	ldr	x1, [x19]
		000000000000cd64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd68: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a7e
    cd6c: 91000000     	add	x0, x0, #0x0
		000000000000cd6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a7e
    cd70: 94000000     	bl	0xcd70 <tpd_proc_deinit+0x164>
		000000000000cd70:  R_AARCH64_CALL26	remove_proc_entry
    cd74: f9400261     	ldr	x1, [x19]
		000000000000cd74:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd78: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17479
    cd7c: 91000000     	add	x0, x0, #0x0
		000000000000cd7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17479
    cd80: 94000000     	bl	0xcd80 <tpd_proc_deinit+0x174>
		000000000000cd80:  R_AARCH64_CALL26	remove_proc_entry
    cd84: f9400261     	ldr	x1, [x19]
		000000000000cd84:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd88: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad32
    cd8c: 91000000     	add	x0, x0, #0x0
		000000000000cd8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad32
    cd90: 94000000     	bl	0xcd90 <tpd_proc_deinit+0x184>
		000000000000cd90:  R_AARCH64_CALL26	remove_proc_entry
    cd94: f9400261     	ldr	x1, [x19]
		000000000000cd94:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cd98: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cd98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afb8
    cd9c: 91000000     	add	x0, x0, #0x0
		000000000000cd9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afb8
    cda0: 94000000     	bl	0xcda0 <tpd_proc_deinit+0x194>
		000000000000cda0:  R_AARCH64_CALL26	remove_proc_entry
    cda4: f9400261     	ldr	x1, [x19]
		000000000000cda4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cda8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cda8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a736
    cdac: 91000000     	add	x0, x0, #0x0
		000000000000cdac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a736
    cdb0: 94000000     	bl	0xcdb0 <tpd_proc_deinit+0x1a4>
		000000000000cdb0:  R_AARCH64_CALL26	remove_proc_entry
    cdb4: f9400261     	ldr	x1, [x19]
		000000000000cdb4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cdb8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cdb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a32
    cdbc: 91000000     	add	x0, x0, #0x0
		000000000000cdbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a32
    cdc0: 94000000     	bl	0xcdc0 <tpd_proc_deinit+0x1b4>
		000000000000cdc0:  R_AARCH64_CALL26	remove_proc_entry
    cdc4: f9400261     	ldr	x1, [x19]
		000000000000cdc4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cdc8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cdc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18488
    cdcc: 91000000     	add	x0, x0, #0x0
		000000000000cdcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18488
    cdd0: 94000000     	bl	0xcdd0 <tpd_proc_deinit+0x1c4>
		000000000000cdd0:  R_AARCH64_CALL26	remove_proc_entry
    cdd4: f9400261     	ldr	x1, [x19]
		000000000000cdd4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cdd8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cdd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e20
    cddc: 91000000     	add	x0, x0, #0x0
		000000000000cddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e20
    cde0: 94000000     	bl	0xcde0 <tpd_proc_deinit+0x1d4>
		000000000000cde0:  R_AARCH64_CALL26	remove_proc_entry
    cde4: f9400261     	ldr	x1, [x19]
		000000000000cde4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_proc_dir
    cde8: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cde8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1afc3
    cdec: 91000000     	add	x0, x0, #0x0
		000000000000cdec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1afc3
    cdf0: 94000000     	bl	0xcdf0 <tpd_proc_deinit+0x1e4>
		000000000000cdf0:  R_AARCH64_CALL26	remove_proc_entry
    cdf4: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000cdf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17edc
    cdf8: 91000000     	add	x0, x0, #0x0
		000000000000cdf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17edc
    cdfc: aa1f03e1     	mov	x1, xzr
    ce00: 94000000     	bl	0xce00 <tpd_proc_deinit+0x1f4>
		000000000000ce00:  R_AARCH64_CALL26	remove_proc_entry
    ce04: f9400bf3     	ldr	x19, [sp, #0x10]
    ce08: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    ce0c: d50323bf     	autiasp
    ce10: d65f03c0     	ret
    ce14: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce14:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CE70
    ce18: 91000000     	add	x0, x0, #0x0
		000000000000ce18:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CE70
    ce1c: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000ce1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ad
    ce20: 91000021     	add	x1, x1, #0x0
		000000000000ce20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ad
    ce24: 94000000     	bl	0xce24 <tpd_proc_deinit+0x218>
		000000000000ce24:  R_AARCH64_CALL26	_printk
    ce28: 17fffff7     	b	0xce04 <tpd_proc_deinit+0x1f8>
