
void aw22xxx_get_fwname(ulong param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  char cVar4;
  int iVar5;
  size_t sVar6;
  long lVar7;
  char *__s;
  ulong uVar8;
  undefined8 uStack_70;
  long lStack_68;
  undefined1 *puStack_60;
  code *pcStack_58;
  char *pcStack_50;
  
  uVar8 = param_1 >> 0x18 & 0xff;
  uVar2 = (uint)param_1 >> 0xc & 0xfff;
  uVar1 = (uint)param_1 & 0xfff;
  _printk(&DAT_001082c1,"aw22xxx_get_fwname",uVar8);
  _printk(&DAT_00108315,"aw22xxx_get_fwname",uVar2);
  _printk(&DAT_0010824d,"aw22xxx_get_fwname",uVar1);
  iVar5 = (int)uVar8;
  if (iVar5 == 3) {
    sprintf(aw22xxx_dyn_name,"aw_fan%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
LAB_00105acc:
    _printk(&DAT_0010827a,"aw22xxx_get_fwname",aw22xxx_dyn_name);
    return;
  }
  if (iVar5 == 2) {
    sprintf(aw22xxx_dyn_name,"aw_touch%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
    goto LAB_00105acc;
  }
  if (iVar5 == 1) {
    sprintf(aw22xxx_dyn_name,"aw_cfg%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
    goto LAB_00105acc;
  }
  if (((iVar5 != 0) || (10 < uVar1)) || (aw22xxx_cfg_name == 0)) {
    _printk(&DAT_001085eb,"aw22xxx_get_fwname");
    return;
  }
  __s = *(char **)(aw22xxx_cfg_name + (param_1 & 0xffffffff) * 8);
  sVar6 = strlen(__s);
  if (sVar6 + 1 < 0x41) {
    memcpy(aw22xxx_dyn_name,__s,sVar6 + 1);
    goto LAB_00105acc;
  }
  lVar7 = __fortify_panic(0x11,0x40);
  pcStack_58 = aw22xxx_cfg_update_wait_from_dyn_name;
  lVar3 = sp_el0;
  lStack_68 = *(long *)(lVar3 + 0x710);
  uStack_70 = 0;
  puStack_60 = &stack0xffffffffffffffc0;
  pcStack_50 = __s;
  _printk(&DAT_001084b0,"aw22xxx_cfg_update_wait_from_dyn_name");
  cVar4 = g_init_flg;
  if (*(char *)(lVar7 + 0x2ef) == '\x02') {
    if (*(int *)(lVar7 + 0x300) == 2) {
      *(undefined1 *)(lVar7 + 0x348) = 0;
      cVar4 = g_init_flg;
    }
    else {
      *(undefined1 *)(lVar7 + 0x348) = 1;
    }
    if (cVar4 == '\0') {
      g_init_flg = '\x01';
      aw22xxx_init_cfg_update_array(lVar7);
    }
    iVar5 = request_firmware(&uStack_70,aw22xxx_dyn_name,*(undefined8 *)(lVar7 + 8));
    if (iVar5 == 0) {
      aw22xxx_cfg_loaded(uStack_70,lVar7);
      msleep(0x14);
      goto LAB_00105be0;
    }
  }
  else {
    iVar5 = -0x16;
  }
  _printk(&DAT_00108070,"aw22xxx_cfg_update_wait_from_dyn_name",iVar5);
LAB_00105be0:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != lStack_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

