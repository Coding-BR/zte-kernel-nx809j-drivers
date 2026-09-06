/* Mechanically lifted from stock syna_dev_set_sensibility_level@0x00111578. */
.text
.align 2
.globl syna_dev_set_sensibility_level
.type syna_dev_set_sensibility_level, %function
.word 0x1eb3b73d
syna_dev_set_sensibility_level:
  paciasp
  stp x29, x30, [sp, #-0x30]!
  str x21, [sp, #0x10]
  stp x20, x19, [sp, #0x20]
  mov x29, sp
  mov w21, w1
  adrp x1, .Lsyna_dev_set_sensibility_level_name
  add x1, x1, :lo12:.Lsyna_dev_set_sensibility_level_name
  mov w19, w2
  mov x20, x0
  adrp x0, .Lsyna_dev_set_sensibility_level_enter
  add x0, x0, :lo12:.Lsyna_dev_set_sensibility_level_enter
  mov x2, x1
  bl _printk
  cbz x20, .Lsyna_dev_set_sensibility_level_098
  cmp w21, #0x1
  adrp x0, .Lsyna_dev_set_sensibility_level_unsupported
  add x0, x0, :lo12:.Lsyna_dev_set_sensibility_level_unsupported
  b.le .Lsyna_dev_set_sensibility_level_0a0
  cmp w21, #0x2
  b.eq .Lsyna_dev_set_sensibility_level_0e0
  cmp w21, #0x3
  b.eq .Lsyna_dev_set_sensibility_level_144
  cmp w21, #0x4
  b.ne .Lsyna_dev_set_sensibility_level_174
  ldr w8, [x20, #0x600]
  ldr w9, [x20, #0x604]
  mov w1, #0xf9
  ldr x0, [x20]
  mov w3, w19
  lsl w8, w8, #4
  orr w8, w8, w9, lsl #8
  orr w2, w8, #0x4
  bl syna_tcm_set_dynamic_config
  tbnz w0, #0x1f, .Lsyna_dev_set_sensibility_level_188
  adrp x0, .Lsyna_dev_set_sensibility_level_level4
  add x0, x0, :lo12:.Lsyna_dev_set_sensibility_level_level4
  b .Lsyna_dev_set_sensibility_level_174
.Lsyna_dev_set_sensibility_level_098:
  mov w0, #-0x16
  b .Lsyna_dev_set_sensibility_level_188
.Lsyna_dev_set_sensibility_level_0a0:
  cbz w21, .Lsyna_dev_set_sensibility_level_114
  cmp w21, #0x1
  b.ne .Lsyna_dev_set_sensibility_level_174
  ldr w8, [x20, #0x600]
  ldr w9, [x20, #0x604]
  mov w1, #0xf9
  ldr x0, [x20]
  mov w3, w19
  lsl w8, w8, #4
  orr w8, w8, w9, lsl #8
  orr w2, w8, #0x1
  bl syna_tcm_set_dynamic_config
  tbnz w0, #0x1f, .Lsyna_dev_set_sensibility_level_188
  adrp x0, .Lsyna_dev_set_sensibility_level_level1
  add x0, x0, :lo12:.Lsyna_dev_set_sensibility_level_level1
  b .Lsyna_dev_set_sensibility_level_174
.Lsyna_dev_set_sensibility_level_0e0:
  ldr w8, [x20, #0x600]
  ldr w9, [x20, #0x604]
  mov w1, #0xf9
  ldr x0, [x20]
  mov w3, w19
  lsl w8, w8, #4
  orr w8, w8, w9, lsl #8
  orr w2, w8, #0x2
  bl syna_tcm_set_dynamic_config
  tbnz w0, #0x1f, .Lsyna_dev_set_sensibility_level_188
  adrp x0, .Lsyna_dev_set_sensibility_level_level2
  add x0, x0, :lo12:.Lsyna_dev_set_sensibility_level_level2
  b .Lsyna_dev_set_sensibility_level_174
.Lsyna_dev_set_sensibility_level_114:
  ldr w8, [x20, #0x600]
  ldr w9, [x20, #0x604]
  mov w1, #0xf9
  ldr x0, [x20]
  mov w3, w19
  lsl w8, w8, #4
  orr w2, w8, w9, lsl #8
  bl syna_tcm_set_dynamic_config
  tbnz w0, #0x1f, .Lsyna_dev_set_sensibility_level_188
  adrp x0, .Lsyna_dev_set_sensibility_level_level0
  add x0, x0, :lo12:.Lsyna_dev_set_sensibility_level_level0
  b .Lsyna_dev_set_sensibility_level_174
.Lsyna_dev_set_sensibility_level_144:
  ldr w8, [x20, #0x600]
  ldr w9, [x20, #0x604]
  mov w1, #0xf9
  ldr x0, [x20]
  mov w3, w19
  lsl w8, w8, #4
  orr w8, w8, w9, lsl #8
  orr w2, w8, #0x3
  bl syna_tcm_set_dynamic_config
  tbnz w0, #0x1f, .Lsyna_dev_set_sensibility_level_188
  adrp x0, .Lsyna_dev_set_sensibility_level_level3
  add x0, x0, :lo12:.Lsyna_dev_set_sensibility_level_level3
.Lsyna_dev_set_sensibility_level_174:
  adrp x1, .Lsyna_dev_set_sensibility_level_name
  add x1, x1, :lo12:.Lsyna_dev_set_sensibility_level_name
  mov x2, x1
  bl _printk
  mov w0, wzr
.Lsyna_dev_set_sensibility_level_188:
  ldp x20, x19, [sp, #0x20]
  ldr x21, [sp, #0x10]
  ldp x29, x30, [sp], #0x30
  autiasp
  ret
.size syna_dev_set_sensibility_level, .-syna_dev_set_sensibility_level
.pushsection .rodata.str1.1,"a",@progbits
.org 0x1877
.Lsyna_dev_set_sensibility_level_level2:
  .string "\0016[info ] %s: %s success in sensibility_level_2"
.org 0x18a7
.Lsyna_dev_set_sensibility_level_level3:
  .string "\0016[info ] %s: %s success in sensibility_level_3"
.org 0x25d1
.Lsyna_dev_set_sensibility_level_level0:
  .string "\0016[info ] %s: %s success in sensibility_level_0"
.org 0x4524
.Lsyna_dev_set_sensibility_level_level4:
  .string "\0016[info ] %s: %s success in sensibility_level_4"
.org 0x6987
.Lsyna_dev_set_sensibility_level_name:
  .string "syna_dev_set_sensibility_level"
.org 0x6de9
.Lsyna_dev_set_sensibility_level_level1:
  .string "\0016[info ] %s: %s success in sensibility_level_1"
.org 0x9664
.Lsyna_dev_set_sensibility_level_enter:
  .string "\0016[info ] %s: %s: enter\n"
.org 0xacae
.Lsyna_dev_set_sensibility_level_unsupported:
  .string "\0013[error] %s: %s: enable not support"
.popsection
.section .note.GNU-stack,"",@progbits
