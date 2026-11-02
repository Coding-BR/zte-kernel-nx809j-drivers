
void FUN_00104690(long param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4,
                 undefined4 *param_5,undefined4 *param_6,undefined4 *param_7)

{
  code *pcVar1;
  int in_w9;
  long in_x10;
  long in_x11;
  long in_x12;
  long in_x13;
  int in_w14;
  undefined4 *in_x15;
  undefined4 *in_x17;
  undefined4 *unaff_x19;
  undefined4 *unaff_x21;
  undefined4 *unaff_x22;
  undefined4 *unaff_x24;
  undefined4 *unaff_x25;
  undefined4 *unaff_x26;
  undefined4 *unaff_x27;
  undefined4 *unaff_x28;
  
  *(char *)(in_x10 + in_x13) = (char)*in_x15;
  if ((int)in_x12 != in_w14) {
    *(char *)(in_x10 + in_x12) = (char)*param_7;
    if ((int)(in_x11 + 0xb) != in_w14) {
      *(char *)(in_x10 + in_x11 + 0xb) = (char)*param_6;
      if ((int)(in_x11 + 0xc) != in_w14) {
        *(char *)(in_x10 + in_x11 + 0xc) = (char)*param_5;
        if ((int)(in_x11 + 0xd) != in_w14) {
          *(char *)(in_x10 + in_x11 + 0xd) = (char)*param_4;
          if ((int)(in_x11 + 0xe) != in_w14) {
            *(char *)(in_x10 + in_x11 + 0xe) = (char)*param_3;
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
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(1,0x1047fc);
  (*pcVar1)();
}

