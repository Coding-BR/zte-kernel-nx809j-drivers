/* Mechanically lifted from stock set_follow_hand_level@0x0010c080. */
.text
.align 2
.globl set_follow_hand_level
.type set_follow_hand_level, %function
.word 0xc3d43b4d
set_follow_hand_level:
  paciasp
  sub sp, sp, #0x30
  stp x29, x30, [sp, #0x10]
  stp x20, x19, [sp, #0x20]
  add x29, sp, #0x10
  mrs x8, SP_EL0
  mov x19, x2
  mov x0, x1
  ldr x8, [x8, #0x710]
  add x3, sp, #0x4
  mov x1, x2
  mov w2, #0xa
  str x8, [sp, #0x8]
  adrp x8, tpd_cdev
  ldr x20, [x8, :lo12:tpd_cdev]
  str wzr, [sp, #0x4]
  bl kstrtouint_from_user
  cbz w0, .Lset_follow_hand_level_078
  mov x19, #-0x16
.Lset_follow_hand_level_04c:
  mrs x8, SP_EL0
  ldr x8, [x8, #0x710]
  ldr x9, [sp, #0x8]
  cmp x8, x9
  b.ne .Lset_follow_hand_level_0c0
  mov x0, x19
  ldp x20, x19, [sp, #0x20]
  ldp x29, x30, [sp, #0x10]
  add sp, sp, #0x30
  autiasp
  ret
.Lset_follow_hand_level_078:
  ldr w2, [sp, #0x4]
  adrp x0, .Lset_follow_hand_level_str_tpd
  add x0, x0, :lo12:.Lset_follow_hand_level_str_tpd
  adrp x1, .Lset_follow_hand_level_str_name
  add x1, x1, :lo12:.Lset_follow_hand_level_str_name
  bl _printk
  ldr x8, [x20, #0xf20]
  cbz x8, .Lset_follow_hand_level_04c
  ldr w1, [sp, #0x4]
  mov x0, x20
  ldur w16, [x8, #-0x4]
  movk w17, #0xb499
  movk w17, #0x6af8, lsl #16
  cmp w16, w17
  b.eq .Lset_follow_hand_level_0b8
  brk #0x8228
.Lset_follow_hand_level_0b8:
  blr x8
  b .Lset_follow_hand_level_04c
.Lset_follow_hand_level_0c0:
  bl __stack_chk_fail
.Lset_follow_hand_level_end:
.size set_follow_hand_level, .Lset_follow_hand_level_end - set_follow_hand_level

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Lset_follow_hand_level_str_tpd:
  .string "\0015tpd: %s val = %d\n"
.Lset_follow_hand_level_str_name:
  .string "set_follow_hand_level"
.popsection
.section .note.GNU-stack,"",@progbits
