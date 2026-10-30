
void aw9620x_awrw_data_analysis(long param_1,char *param_2,byte param_3)

{
  uint uVar1;
  long lVar2;
  int iVar3;
  size_t sVar4;
  undefined8 uVar5;
  ulong uVar6;
  uint uVar7;
  undefined4 local_70;
  undefined2 local_6c [2];
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  uVar1 = (uint)param_3 + (uint)param_3 * 4;
  iVar3 = uVar1 + 0x14;
  local_70 = 0;
  sVar4 = strlen(param_2);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_awrw_data_analysis",0xae9);
  if (iVar3 == (int)sVar4) {
    if (param_3 != 0) {
      uVar7 = 0;
      uVar6 = 0;
      do {
        local_6c[0] = *(undefined2 *)(param_2 + (ulong)uVar7 + 0x16);
        iVar3 = sscanf((char *)local_6c,"%02x",&local_70);
        if (iVar3 == 1) {
          *(char *)(*(long *)(param_1 + 0x278) + (uVar6 & 0xff)) = (char)local_70;
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] tranfar_data = 0x%2x\n"
                      ,"aw9620x_awrw_data_analysis",0xafb,
                      *(undefined1 *)(*(long *)(param_1 + 0x278) + (uVar6 & 0xff)));
        }
        uVar6 = (ulong)((int)uVar6 + 1);
        uVar7 = uVar7 + 5 & 0xff;
      } while (uVar7 < uVar1);
    }
    uVar5 = 0;
  }
  else {
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] error theory_len = %d actual_len = %d\n","aw9620x_awrw_data_analysis",0xaee
                ,iVar3,sVar4 & 0xffffffff);
    uVar5 = 0xffffffff;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}

