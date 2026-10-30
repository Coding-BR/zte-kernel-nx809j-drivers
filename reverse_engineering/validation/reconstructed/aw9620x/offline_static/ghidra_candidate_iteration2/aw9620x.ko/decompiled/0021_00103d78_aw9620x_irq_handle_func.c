
void aw9620x_irq_handle_func(long param_1)

{
  uint uVar1;
  uint uVar2;
  code *pcVar3;
  int iVar4;
  undefined8 uVar5;
  char *pcVar6;
  undefined8 uVar7;
  long lVar8;
  uint uVar9;
  long lVar10;
  undefined8 local_70;
  long local_68;
  
  lVar10 = sp_el0;
  local_68 = *(long *)(lVar10 + 0x710);
  local_70 = 0;
  iVar4 = aw9620x_i2c_read(param_1,0x4410,(long)&local_70 + 4);
  if (iVar4 < 0) {
    uVar5 = *(undefined8 *)(param_1 + 0x30);
    pcVar6 = "[%s:%d] i2c IO error\n";
    uVar7 = 0xa61;
  }
  else {
    if ((local_70 & 0x100000000) != 0) {
      if (1 < *(uint *)(param_1 + 8)) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x104094);
        (*pcVar3)();
      }
      (&aw9620x_bss_base)[*(uint *)(param_1 + 8)] = 1;
    }
    iVar4 = aw9620x_i2c_read(param_1,0x1a18,&local_70);
    if (-1 < iVar4) {
      uVar2 = (uint)local_70;
      uVar9 = 0;
      lVar10 = -0x180;
      do {
        lVar8 = *(long *)(param_1 + 0x200);
        if ((*(char *)(lVar8 + lVar10 + 0x180) != '\0') &&
           (uVar1 = uVar2 >> (ulong)(uVar9 & 0x1f) & 1 |
                    (uVar2 >> (ulong)(uVar9 & 0x1f | 8) & 1) << 1,
           *(uint *)(lVar8 + lVar10 + 0x184) != uVar1)) {
          if (uVar1 == 3) {
            input_event(*(undefined8 *)(lVar8 + lVar10 + 0x188),3,0x19,3);
          }
          else {
            if (uVar1 == 1) {
              input_event(*(undefined8 *)(lVar8 + lVar10 + 0x188),3,0x19,1);
              if (*(int *)(param_1 + 8) == 1) {
                input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),1,0x42,1);
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                pcVar6 = "[%s:%d] TRIGGER_TH0: F8 event report\n";
                uVar7 = 0xa8d;
              }
              else {
                if (*(int *)(param_1 + 8) != 0) goto LAB_00103e48;
                input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),1,0x41,1);
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                pcVar6 = "[%s:%d] TRIGGER_TH0: F7 event report\n";
                uVar7 = 0xa89;
              }
            }
            else {
              if (uVar1 != 0) {
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                pcVar6 = "[%s:%d] error abs distance\n";
                uVar7 = 0xa94;
                goto LAB_0010402c;
              }
              input_event(*(undefined8 *)(lVar8 + lVar10 + 0x188),3,0x19,0);
              if (*(int *)(param_1 + 8) == 1) {
                input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),1,0x42,0);
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                uVar7 = 0xa82;
                pcVar6 = "[%s:%d] TRIGGER_FAR: F8 event report\n";
              }
              else {
                if (*(int *)(param_1 + 8) != 0) goto LAB_00103e48;
                input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),1,0x41,0);
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                uVar7 = 0xa7d;
                pcVar6 = "[%s:%d] TRIGGER_FAR: F7 event report\n";
              }
            }
            _dev_printk(&DAT_0010d22b,uVar5,pcVar6,"aw9620x_irq_handle_func",uVar7);
          }
LAB_00103e48:
          input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),0,0,0);
          *(uint *)(*(long *)(param_1 + 0x200) + lVar10 + 0x184) = uVar1;
        }
        lVar10 = lVar10 + 0x30;
        uVar9 = uVar9 + 1;
      } while (lVar10 != 0);
      goto LAB_00104030;
    }
    uVar5 = *(undefined8 *)(param_1 + 0x30);
    pcVar6 = "[%s:%d] i2c IO error\n";
    uVar7 = 0xa6b;
  }
LAB_0010402c:
  _dev_printk(&DAT_0010c99c,uVar5,pcVar6,"aw9620x_irq_handle_func",uVar7);
LAB_00104030:
  lVar10 = sp_el0;
  if (*(long *)(lVar10 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

