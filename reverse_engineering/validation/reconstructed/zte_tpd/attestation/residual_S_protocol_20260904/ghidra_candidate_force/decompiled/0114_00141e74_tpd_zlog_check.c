
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 tpd_zlog_check(uint param_1)

{
  long lVar1;
  long lVar2;
  code *pcVar3;
  undefined4 uVar4;
  ulong uVar5;
  ulong uVar6;
  
  if (0x12 < param_1) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x141f20);
    (*pcVar3)();
  }
  uVar6 = (ulong)param_1;
  lVar1 = tpd_cdev + 0xab8;
  if (*(long *)(lVar1 + (ulong)param_1 * 8) != 0) {
    lVar2 = tpd_cdev + 0xb50;
    uVar5 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar6 * 8));
    if (((uint)(uVar5 >> 5) & 0x7ffffff) < 0x753) {
      uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar6 * 8));
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e013,uVar4,uVar6);
    }
  }
  *(long *)(lVar1 + uVar6 * 8) = *(long *)(lVar1 + uVar6 * 8) + 1;
  return 0;
}

