
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void battery_module_pack_vendor_get(char *param_1)

{
  int iVar1;
  long lVar2;
  uint uVar3;
  int local_3c;
  undefined8 local_38;
  undefined2 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_3c = 0;
  local_30 = 0;
  local_38 = 0;
  iVar1 = kstrtoint(&local_38,10,&local_3c);
  if (iVar1 == 0) {
    _printk(&DAT_0010294b,local_3c);
    local_3c = local_3c / 1000;
    if (local_3c <= (_DAT_00100074 * 0x6d) / 100) {
      iVar1 = (resistance_kohm * 0x5b) / 100;
      if (iVar1 <= local_3c) {
        if ((local_3c < (resistance_kohm * 0x6d) / 100) && (iVar1 < local_3c)) {
          lVar2 = 0;
LAB_00100eec:
          uVar3 = (&battery_vendor_id)[lVar2];
        }
        else {
          if ((local_3c < (DAT_00100058 * 0x6d) / 100) && ((DAT_00100058 * 0x5b) / 100 < local_3c))
          {
            lVar2 = 1;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_0010005c * 0x6d) / 100) && ((DAT_0010005c * 0x5b) / 100 < local_3c))
          {
            lVar2 = 2;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_00100060 * 0x6d) / 100) && ((DAT_00100060 * 0x5b) / 100 < local_3c))
          {
            lVar2 = 3;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_00100064 * 0x6d) / 100) && ((DAT_00100064 * 0x5b) / 100 < local_3c))
          {
            lVar2 = 4;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_00100068 * 0x6d) / 100) && ((DAT_00100068 * 0x5b) / 100 < local_3c))
          {
            lVar2 = 5;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_0010006c * 0x6d) / 100) && ((DAT_0010006c * 0x5b) / 100 < local_3c))
          {
            lVar2 = 6;
            goto LAB_00100eec;
          }
          if (local_3c < (DAT_00100070 * 0x6d) / 100) {
            if ((DAT_00100070 * 0x5b) / 100 < local_3c) {
              lVar2 = 7;
              goto LAB_00100eec;
            }
          }
          uVar3 = 0;
        }
        _printk(&DAT_0010278e,local_3c,uVar3);
        iVar1 = snprintf(param_1,0x1000,"%2d",(ulong)uVar3);
        goto LAB_00100df8;
      }
    }
    _printk(&DAT_0010286f);
  }
  iVar1 = -1;
LAB_00100df8:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1);
}

