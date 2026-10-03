
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 tpd_zlog_check(uint param_1)

{
  long lVar1;
  long lVar2;
  code *pcVar3;
  undefined4 uVar4;
  ulong uVar5;
  undefined8 uVar6;
  ulong uVar7;
  
  if (0x12 < param_1) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x1077c4);
    (*pcVar3)();
  }
  uVar7 = (ulong)param_1;
  lVar1 = tpd_cdev + 0xab8;
  if (*(long *)(lVar1 + (ulong)param_1 * 8) != 0) {
    lVar2 = tpd_cdev + 0xb50;
    uVar5 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar7 * 8));
    if (((uint)(uVar5 >> 5) & 0x7ffffff) < 0x753) {
      uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar7 * 8));
      _printk(&DAT_0013251e,uVar4,uVar7);
      uVar6 = 0xfffffffb;
      goto LAB_00107774;
    }
  }
  uVar6 = 0;
LAB_00107774:
  *(long *)(lVar1 + uVar7 * 8) = *(long *)(lVar1 + uVar7 * 8) + 1;
  return uVar6;
}

