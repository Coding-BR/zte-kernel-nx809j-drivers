/* Mechanically lifted from stock tp_sensibility_level_write@0x0010c3f8. */
.text
.align 2
.globl tp_sensibility_level_write
.type tp_sensibility_level_write, %function
.word 0xc3d43b4d
tp_sensibility_level_write:
  paciasp
  sub sp, sp, #0x50
  stp x29, x30, [sp, #0x20]
  str x21, [sp, #0x30]
  stp x20, x19, [sp, #0x40]
  add x29, sp, #0x20
  mrs x8, SP_EL0
  mov x21, x1
  add x0, sp, #0x8
  ldr x8, [x8, #0x710]
  cmp x2, #0x9
  stur x8, [x29, #-0x8]
  adrp x8, tpd_cdev
  ldr x20, [x8, :lo12:tpd_cdev]
  mov w8, #0x9
  str wzr, [sp, #0x4]
  csel x19, x2, x8, lo
  mov w2, wzr
  strh wzr, [sp, #0x10]
  mov x1, x19
  str xzr, [sp, #0x8]
  bl __check_object_size
  add x0, sp, #0x8
  mov x1, x21
  mov x2, x19
  bl _inline_copy_from_user
  cbnz w0, .Ltp_sensibility_level_write_080
  add x0, sp, #0x8
  add x2, sp, #0x4
  mov w1, wzr
  bl kstrtouint
  cbz w0, .Ltp_sensibility_level_write_0b4
.Ltp_sensibility_level_write_080:
  mov x19, #-0x16
.Ltp_sensibility_level_write_084:
  mrs x8, SP_EL0
  ldr x8, [x8, #0x710]
  ldur x9, [x29, #-0x8]
  cmp x8, x9
  b.ne .Ltp_sensibility_level_write_104
  mov x0, x19
  ldp x20, x19, [sp, #0x40]
  ldr x21, [sp, #0x30]
  ldp x29, x30, [sp, #0x20]
  add sp, sp, #0x50
  autiasp
  ret
.Ltp_sensibility_level_write_0b4:
  ldr w8, [sp, #0x4]
  adrp x0, .Ltp_sensibility_level_write_str_tpd
  add x0, x0, :lo12:.Ltp_sensibility_level_write_str_tpd
  adrp x1, .Ltp_sensibility_level_write_str_name
  add x1, x1, :lo12:.Ltp_sensibility_level_write_str_name
  and w2, w8, #0xff
  strb w8, [x20, #0x40]
  bl _printk
  ldr x8, [x20, #0xf68]
  cbz x8, .Ltp_sensibility_level_write_084
  ldr w1, [sp, #0x4]
  mov x0, x20
  ldur w16, [x8, #-0x4]
  movk w17, #0x3dc1
  movk w17, #0xe1d6, lsl #16
  cmp w16, w17
  b.eq .Ltp_sensibility_level_write_0fc
  brk #0x8228
.Ltp_sensibility_level_write_0fc:
  blr x8
  b .Ltp_sensibility_level_write_084
.Ltp_sensibility_level_write_104:
  bl __stack_chk_fail
.Ltp_sensibility_level_write_end:
.size tp_sensibility_level_write, .Ltp_sensibility_level_write_end - tp_sensibility_level_write

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Ltp_sensibility_level_write_str_tpd:
  .string "\0015%s:sensibility level:val %d.\n"
.Ltp_sensibility_level_write_str_name:
  .string "tp_sensibility_level_write"
.popsection
.section .note.GNU-stack,"",@progbits
