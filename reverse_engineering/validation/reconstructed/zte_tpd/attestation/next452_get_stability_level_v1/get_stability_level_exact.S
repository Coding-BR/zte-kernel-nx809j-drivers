/* Mechanically lifted from stock get_stability_level@0x0010c148. */
.text
.align 2
.globl get_stability_level
.type get_stability_level, %function
.word 0xf4e9d97c
get_stability_level:
  paciasp
  sub sp, sp, #0x50
  stp x29, x30, [sp, #0x20]
  stp x22, x21, [sp, #0x30]
  stp x20, x19, [sp, #0x40]
  add x29, sp, #0x20
  mrs x8, SP_EL0
  mov x0, xzr
  ldr x8, [x8, #0x710]
  stur x8, [x29, #-0x8]
  ldr x8, [x3]
  strh wzr, [sp, #0x10]
  str xzr, [sp, #0x8]
  cbz x8, .Lget_stability_level_064
.Lget_stability_level_038:
  mrs x8, SP_EL0
  ldr x8, [x8, #0x710]
  ldur x9, [x29, #-0x8]
  cmp x8, x9
  b.ne .Lget_stability_level_0ec
  ldp x20, x19, [sp, #0x40]
  ldp x22, x21, [sp, #0x30]
  ldp x29, x30, [sp, #0x20]
  add sp, sp, #0x50
  autiasp
  ret
.Lget_stability_level_064:
  adrp x8, tpd_cdev
  mov x21, x1
  mov x20, x2
  ldr x22, [x8, :lo12:tpd_cdev]
  mov x19, x3
  ldr x8, [x22, #0xf38]
  cbz x8, .Lget_stability_level_0a0
  mov x0, x22
  ldur w16, [x8, #-0x4]
  movk w17, #0xd79
  movk w17, #0x73fc, lsl #16
  cmp w16, w17
  b.eq .Lget_stability_level_09c
  brk #0x8228
.Lget_stability_level_09c:
  blr x8
.Lget_stability_level_0a0:
  ldr w2, [x22, #0x46c]
  adrp x0, .Lget_stability_level_str_tpd
  add x0, x0, :lo12:.Lget_stability_level_str_tpd
  adrp x1, .Lget_stability_level_str_name
  add x1, x1, :lo12:.Lget_stability_level_str_name
  bl _printk
  ldr w3, [x22, #0x46c]
  adrp x2, .Lget_stability_level_str_format
  add x2, x2, :lo12:.Lget_stability_level_str_format
  add x0, sp, #0x8
  mov w1, #0xa
  bl snprintf
  sxtw x4, w0
  add x3, sp, #0x8
  mov x1, x20
  mov x0, x21
  mov x2, x19
  bl simple_read_from_buffer
  b .Lget_stability_level_038
.Lget_stability_level_0ec:
  bl __stack_chk_fail
.Lget_stability_level_end:
.size get_stability_level, .Lget_stability_level_end - get_stability_level

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Lget_stability_level_str_tpd:
  .string "\0015tpd: %s val:%d.\n"
.Lget_stability_level_str_name:
  .string "get_stability_level"
.Lget_stability_level_str_format:
  .string "%u\n"
.popsection
.section .note.GNU-stack,"",@progbits
