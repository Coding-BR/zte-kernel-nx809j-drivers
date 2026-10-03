	.text
	.file	"syna_tcm_allocate_device_aarch64_assembly_input.c"
	.globl	syna_tcm_allocate_device        // -- Begin function syna_tcm_allocate_device
	.p2align	2
	.type	syna_tcm_allocate_device,@function
syna_tcm_allocate_device:               // @syna_tcm_allocate_device
// %bb.0:
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	cbz	x1, .LBB0_11
// %bb.1:
	ldr	x8, [x1, #32]
	cbz	x8, .LBB0_12
// %bb.2:
	ldr	x8, [x1, #40]
	cbz	x8, .LBB0_13
// %bb.3:
	adrp	x8, :got:unk_367BF
	mov	x20, x0
	mov	x23, x1
	ldr	x8, [x8, :got_lo12:unk_367BF]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	x21, x2
	ldr	x0, [x8]
	bl	printk
	str	xzr, [x20]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_16
// %bb.4:
	mov	w1, #9192                       // =0x23e8
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	cbz	x0, .LBB0_17
// %bb.5:
	movi	v0.2d, #0000000000000000
	str	x21, [x0]
	adrp	x21, :got:syna_pal_mutex_alloc___key_7
	ldp	w9, w8, [x23, #12]
	str	x23, [x0, #72]
	adrp	x22, .L.str.2
	add	x22, x22, :lo12:.L.str.2
	mov	x19, x0
	mov	x1, x22
	stp	q0, q0, [x0, #912]
	stp	w8, w9, [x0, #64]
	stp	w8, w9, [x0, #56]
	add	x0, x0, #80
	ldr	x21, [x21, :got_lo12:syna_pal_mutex_alloc___key_7]
	mov	x2, x21
	bl	_mutex_init
	movi	v0.2d, #0000000000000000
	add	x0, x19, #272
	mov	x1, x22
	mov	x2, x21
	strb	wzr, [x19, #320]
	str	q0, [x19, #256]
	bl	_mutex_init
	movi	v0.2d, #0000000000000000
	add	x8, x19, #328
	add	x0, x19, #344
	mov	x1, x22
	mov	x2, x21
	strb	wzr, [x19, #392]
	str	q0, [x8]
	bl	_mutex_init
	movi	v0.2d, #0000000000000000
	add	x0, x19, #416
	mov	x1, x22
	mov	x2, x21
	strb	wzr, [x19, #464]
	str	q0, [x19, #400]
	bl	_mutex_init
	movi	v0.2d, #0000000000000000
	add	x0, x19, #592
	mov	x1, x22
	mov	x2, x21
	strb	wzr, [x19, #640]
	str	q0, [x19, #576]
	bl	_mutex_init
	movi	v0.2d, #0000000000000000
	add	x8, x19, #648
	add	x0, x19, #664
	mov	x1, x22
	mov	x2, x21
	strb	wzr, [x19, #712]
	str	q0, [x8]
	bl	_mutex_init
	movi	v0.2d, #0000000000000000
	add	x0, x19, #736
	mov	x1, x22
	mov	x2, x21
	strb	wzr, [x19, #784]
	str	q0, [x19, #720]
	bl	_mutex_init
	str	wzr, [x19, #544]
	adrp	x2, :got:init_completion___key_2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	ldr	x2, [x2, :got_lo12:init_completion___key_2]
	add	x0, x19, #552
	bl	_init_swait_queue_head
	add	x0, x19, #792
	mov	x1, x22
	mov	x2, x21
	bl	_mutex_init
	add	x0, x19, #840
	mov	x1, x22
	mov	x2, x21
	bl	_mutex_init
	ldrb	w8, [x19, #640]
	str	wzr, [x19, #504]
	strh	wzr, [x19, #508]
	str	wzr, [x19, #512]
	strb	wzr, [x19, #516]
	cbz	w8, .LBB0_7
// %bb.6:
	adrp	x8, :got:unk_38244
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	ldr	x8, [x8, :got_lo12:unk_38244]
	ldr	x0, [x8]
	bl	printk
.LBB0_7:
	add	x0, x19, #592
	bl	mutex_lock
	ldr	w21, [x19, #584]
	ldrb	w8, [x19, #640]
	ldr	x0, [x19, #576]
	add	w8, w8, #1
	cmp	w21, #3
	strb	w8, [x19, #640]
	b.hi	.LBB0_23
// %bb.8:
	cbz	x0, .LBB0_20
// %bb.9:
	mov	x21, x0
	bl	syna_request_managed_device
	cbz	x0, .LBB0_19
// %bb.10:
	mov	x1, x21
	bl	devm_kfree
	b	.LBB0_20
.LBB0_11:
	adrp	x8, :got:unk_3AC64
	ldr	x8, [x8, :got_lo12:unk_3AC64]
	b	.LBB0_14
.LBB0_12:
	adrp	x8, :got:unk_384CE
	ldr	x8, [x8, :got_lo12:unk_384CE]
	b	.LBB0_14
.LBB0_13:
	adrp	x8, :got:unk_343EB
	ldr	x8, [x8, :got_lo12:unk_343EB]
.LBB0_14:
	ldr	x0, [x8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
	mov	w8, #-243                       // =0xffffff0d
	orr	x0, x8, #0x2
.LBB0_15:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ret
.LBB0_16:
	adrp	x8, :got:unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x8, [x8, :got_lo12:unk_3BE43]
	ldr	x0, [x8]
	bl	printk
.LBB0_17:
	adrp	x8, :got:unk_35C97
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x8, [x8, :got_lo12:unk_35C97]
.LBB0_18:
	ldr	x0, [x8]
	bl	printk
	mov	w0, #-243                       // =0xffffff0d
	b	.LBB0_15
.LBB0_19:
	adrp	x8, :got:unk_3BE43
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	ldr	x8, [x8, :got_lo12:unk_3BE43]
	ldr	x0, [x8]
	bl	printk
.LBB0_20:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_28
// %bb.21:
	mov	w1, #4                          // =0x4
	mov	w2, #3520                       // =0xdc0
	mov	w21, #4                         // =0x4
	bl	devm_kmalloc
	str	x0, [x19, #576]
	cbz	x0, .LBB0_29
// %bb.22:
	str	w21, [x19, #584]
.LBB0_23:
	mov	w2, w21
	mov	w1, wzr
	bl	memset
	ldrb	w9, [x19, #640]
	mov	w8, wzr
	mov	w10, #4                         // =0x4
	str	x10, [x19, #584]
	cmp	w9, #1
	b.eq	.LBB0_25
// %bb.24:
	adrp	x8, :got:unk_38244
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	ldr	x8, [x8, :got_lo12:unk_38244]
	ldr	x0, [x8]
	bl	printk
	ldrb	w8, [x19, #640]
	sub	w8, w8, #1
.LBB0_25:
	add	x0, x19, #592
	strb	w8, [x19, #640]
	bl	mutex_unlock
	add	x8, x19, #898
	strb	wzr, [x19, #890]
	mov	w9, #10                         // =0xa
	str	wzr, [x8]
	mov	x8, #3000                       // =0xbb8
	mov	w2, #2                          // =0x2
	movk	x8, #20, lsl #32
	str	wzr, [x19, #892]
	mov	w3, #12                         // =0xc
	str	x8, [x19, #520]
	mov	x8, #50                         // =0x32
	mov	w4, wzr
	movk	x8, #100, lsl #32
	strb	wzr, [x19, #896]
	str	x8, [x19, #528]
	add	x8, x8, #50
	str	w9, [x19, #536]
	adrp	x9, :got:unk_3B99D
	ldr	x9, [x9, :got_lo12:unk_3B99D]
	strb	wzr, [x19, #9]
	str	x8, [x19, #488]
	ldr	x0, [x9]
	str	x19, [x20]
	adrp	x19, .L.str
	add	x19, x19, :lo12:.L.str
	mov	x1, x19
	bl	printk
	adrp	x20, :got:unk_398C0
	adrp	x9, :got:unk_36C2A
	adrp	x21, .L.str.10
	add	x21, x21, :lo12:.L.str.10
	ldr	x20, [x20, :got_lo12:unk_398C0]
	ldrb	w8, [x23, #20]
	ldr	x9, [x9, :got_lo12:unk_36C2A]
	mov	x1, x19
	ldr	x10, [x20]
	cmp	w8, #0
	ldr	x0, [x9]
	csel	x2, x10, x21, eq
	bl	printk
	ldrb	w9, [x23, #21]
	cmp	w9, #1
	b.ne	.LBB0_27
// %bb.26:
	adrp	x9, :got:unk_3CCBD
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x9, [x9, :got_lo12:unk_3CCBD]
	ldr	x10, [x20]
	ldp	w3, w4, [x23, #24]
	ldr	x0, [x9]
	cmp	w3, #0
	csel	x2, x10, x21, eq
	bl	printk
.LBB0_27:
	mov	x0, xzr
	b	.LBB0_15
.LBB0_28:
	adrp	x8, :got:unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x8, [x8, :got_lo12:unk_3BE43]
	ldr	x0, [x8]
	bl	printk
	str	xzr, [x19, #576]
.LBB0_29:
	adrp	x8, :got:unk_3703C
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	ldr	x8, [x8, :got_lo12:unk_3703C]
	mov	w2, #4                          // =0x4
	ldr	x0, [x8]
	bl	printk
	adrp	x8, :got:unk_35CC7
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	ldr	x8, [x8, :got_lo12:unk_35CC7]
	mov	w2, #4                          // =0x4
	str	xzr, [x19, #584]
	ldr	x0, [x8]
	bl	printk
	ldrb	w8, [x19, #640]
	str	xzr, [x19, #584]
	cmp	w8, #1
	b.ne	.LBB0_31
// %bb.30:
	mov	w8, wzr
	b	.LBB0_32
.LBB0_31:
	adrp	x8, :got:unk_38244
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	ldr	x8, [x8, :got_lo12:unk_38244]
	ldr	x0, [x8]
	bl	printk
	ldrb	w8, [x19, #640]
	sub	w8, w8, #1
.LBB0_32:
	add	x0, x19, #592
	strb	w8, [x19, #640]
	bl	mutex_unlock
	adrp	x8, :got:unk_3B375
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x8, [x8, :got_lo12:unk_3B375]
	ldr	x0, [x8]
	bl	printk
	adrp	x21, :got:unk_34845
	ldrb	w8, [x19, #464]
	ldr	x21, [x21, :got_lo12:unk_34845]
	cbz	w8, .LBB0_34
// %bb.33:
	ldr	x0, [x21]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	printk
.LBB0_34:
	ldr	x20, [x19, #400]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_37
// %bb.35:
	cbz	x20, .LBB0_38
// %bb.36:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_38
.LBB0_37:
	adrp	x8, :got:unk_3BE43
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	ldr	x8, [x8, :got_lo12:unk_3BE43]
	ldr	x0, [x8]
	bl	printk
.LBB0_38:
	ldrb	w8, [x19, #320]
	str	xzr, [x19, #408]
	strb	wzr, [x19, #464]
	cbz	w8, .LBB0_40
// %bb.39:
	ldr	x0, [x21]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	printk
.LBB0_40:
	ldr	x20, [x19, #256]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_43
// %bb.41:
	cbz	x20, .LBB0_44
// %bb.42:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_44
.LBB0_43:
	adrp	x8, :got:unk_3BE43
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	ldr	x8, [x8, :got_lo12:unk_3BE43]
	ldr	x0, [x8]
	bl	printk
.LBB0_44:
	ldrb	w8, [x19, #392]
	str	xzr, [x19, #264]
	strb	wzr, [x19, #320]
	cbz	w8, .LBB0_46
// %bb.45:
	ldr	x0, [x21]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	printk
.LBB0_46:
	ldr	x20, [x19, #328]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_49
// %bb.47:
	cbz	x20, .LBB0_50
// %bb.48:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_50
.LBB0_49:
	adrp	x8, :got:unk_3BE43
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	ldr	x8, [x8, :got_lo12:unk_3BE43]
	ldr	x0, [x8]
	bl	printk
.LBB0_50:
	str	xzr, [x19, #336]
	strb	wzr, [x19, #392]
	str	xzr, [x19, #72]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_52
// %bb.51:
	mov	x1, x19
	bl	devm_kfree
	mov	w0, #-243                       // =0xffffff0d
	b	.LBB0_15
.LBB0_52:
	adrp	x8, :got:unk_3BE43
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	ldr	x8, [x8, :got_lo12:unk_3BE43]
	b	.LBB0_18
.Lfunc_end0:
	.size	syna_tcm_allocate_device, .Lfunc_end0-syna_tcm_allocate_device
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"syna_tcm_allocate_device"
	.size	.L.str, 25

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_pal_mem_alloc"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"(struct mutex *)ptr"
	.size	.L.str.2, 20

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"&x->wait"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"syna_tcm_buf_lock"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"syna_pal_mem_free"
	.size	.L.str.5, 18

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"syna_tcm_buf_alloc"
	.size	.L.str.6, 19

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"syna_tcm_init_message_handler"
	.size	.L.str.7, 30

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"syna_tcm_buf_unlock"
	.size	.L.str.8, 20

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"syna_tcm_buf_release"
	.size	.L.str.9, 21

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"yes"
	.size	.L.str.10, 4

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
