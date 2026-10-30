
void FUN_00104670(long param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  code *pcVar6;
  int in_w9;
  long in_x10;
  long in_x11;
  long in_x12;
  int in_w14;
  undefined1 in_w15;
  undefined4 *in_x17;
  undefined4 *unaff_x19;
  undefined4 *unaff_x21;
  undefined4 *unaff_x22;
  undefined4 *unaff_x24;
  undefined4 *unaff_x25;
  undefined4 *unaff_x26;
  undefined4 *unaff_x27;
  undefined4 *unaff_x28;
  long unaff_x29;
  
  *(undefined1 *)(in_x10 + in_x12) = in_w15;
  puVar1 = *(undefined4 **)(unaff_x29 + -0x40);
  puVar3 = *(undefined4 **)(unaff_x29 + -0x38);
  puVar2 = *(undefined4 **)(unaff_x29 + -0x50);
  puVar4 = *(undefined4 **)(unaff_x29 + -0x48);
  puVar5 = *(undefined4 **)(unaff_x29 + -0x58);
  if ((int)(in_x11 + 9) != in_w14) {
    *(char *)(in_x10 + in_x11 + 9) = (char)**(undefined4 **)(unaff_x29 + -0x60);
    if ((int)(in_x11 + 10) != in_w14) {
      *(char *)(in_x10 + in_x11 + 10) = (char)*puVar5;
      if ((int)(in_x11 + 0xb) != in_w14) {
        *(char *)(in_x10 + in_x11 + 0xb) = (char)*puVar2;
        if ((int)(in_x11 + 0xc) != in_w14) {
          *(char *)(in_x10 + in_x11 + 0xc) = (char)*puVar4;
          if ((int)(in_x11 + 0xd) != in_w14) {
            *(char *)(in_x10 + in_x11 + 0xd) = (char)*puVar1;
            if ((int)(in_x11 + 0xe) != in_w14) {
              *(char *)(in_x10 + in_x11 + 0xe) = (char)*puVar3;
              if ((int)(in_x11 + 0xf) != in_w14) {
                *(char *)(in_x10 + in_x11 + 0xf) = (char)*param_2;
                if ((int)(in_x11 + 0x10) != in_w14) {
                  *(char *)(in_x10 + in_x11 + 0x10) = (char)*in_x17;
                  if ((int)(in_x11 + 0x11) != in_w14) {
                    *(char *)(in_x10 + in_x11 + 0x11) = (char)*unaff_x24;
                    if ((int)(in_x11 + 0x12) != in_w14) {
                      *(char *)(in_x10 + in_x11 + 0x12) = (char)*unaff_x22;
                      if ((int)(in_x11 + 0x13) != in_w14) {
                        *(char *)(in_x10 + in_x11 + 0x13) = (char)*unaff_x19;
                        if ((int)(in_x11 + 0x14) != in_w14) {
                          *(char *)(in_x10 + in_x11 + 0x14) = (char)*unaff_x28;
                          if ((int)(in_x11 + 0x15) != in_w14) {
                            *(char *)(in_x10 + in_x11 + 0x15) = (char)*unaff_x27;
                            if ((int)(in_x11 + 0x16) != in_w14) {
                              *(char *)(in_x10 + in_x11 + 0x16) = (char)*unaff_x26;
                              if ((int)(in_x11 + 0x17) != in_w14) {
                                *(char *)(in_x10 + in_x11 + 0x17) = (char)*unaff_x25;
                                if ((int)(in_x11 + 0x18) != in_w14) {
                                  *(char *)(in_x10 + in_x11 + 0x18) = (char)*unaff_x21;
                                  *(int *)(param_1 + 0x3c) = in_w9 + 1;
                    /* WARNING: Subroutine does not return */
                                  _printk(&DAT_00107346,"aw22xxx_para_store");
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Does not return */
  pcVar6 = (code *)SoftwareBreakpoint(1,0x1047fc);
  (*pcVar6)();
}

