
void aw22xxx_get_fwname(ulong param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  byte bVar4;
  int iVar5;
  size_t sVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *__s;
  uint uVar10;
  ulong uVar11;
  undefined8 uStack_70;
  long lStack_68;
  undefined1 *puStack_60;
  code *pcStack_58;
  char *pcStack_50;
  
  uVar11 = param_1 >> 0x18 & 0xff;
  _printk(&DAT_0010e52e,"aw22xxx_get_fwname",0x821,uVar11);
  uVar2 = (uint)param_1 >> 0xc & 0xfff;
  _printk(&DAT_0010cee1,"aw22xxx_get_fwname",0x823,uVar2);
  uVar1 = (uint)param_1 & 0xfff;
  _printk(&DAT_0010e3a5,"aw22xxx_get_fwname",0x825,uVar1);
  uVar10 = (uint)uVar11;
  if (uVar10 < 2) {
    if (uVar10 == 0) {
      if (uVar1 < 0xc) {
        __s = *(char **)(aw22xxx_cfg_name + (param_1 & 0xffffffff) * 8);
        sVar6 = strlen(__s);
        if (0x40 < sVar6 + 1) {
          lVar7 = __fortify_panic(0x1f,0x40);
          pcStack_58 = aw22xxx_cfg_update_wait_from_dyn_name;
          lVar3 = sp_el0;
          lStack_68 = *(long *)(lVar3 + 0x710);
          uStack_70 = 0;
          puStack_60 = &stack0xffffffffffffffc0;
          pcStack_50 = __s;
          _printk(&DAT_0010d681,"aw22xxx_cfg_update_wait_from_dyn_name");
          bVar4 = g_init_flg;
          if (*(char *)(lVar7 + 0x2ef) == '\x02') {
            if (*(int *)(lVar7 + 0x300) == 2) {
              *(undefined1 *)(lVar7 + 0x348) = 0;
            }
            else {
              *(undefined1 *)(lVar7 + 0x348) = 1;
            }
            if ((bVar4 & 1) == 0) {
              g_init_flg = 1;
              aw22xxx_init_cfg_update_array(lVar7);
            }
            iVar5 = request_firmware(&uStack_70,aw22xxx_dyn_name,*(undefined8 *)(lVar7 + 8));
            if (iVar5 == 0) {
              aw22xxx_cfg_loaded(uStack_70,lVar7);
              msleep(0x14);
              goto LAB_00103f58;
            }
            puVar8 = &DAT_0010e0fd;
          }
          else {
            puVar8 = &DAT_0010d466;
          }
          _printk(puVar8,"aw22xxx_cfg_update_wait_from_dyn_name");
LAB_00103f58:
          lVar3 = sp_el0;
          if (*(long *)(lVar3 + 0x710) == lStack_68) {
            return;
          }
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail();
        }
        memcpy(aw22xxx_dyn_name,__s,sVar6 + 1);
        uVar9 = 0x82e;
        goto LAB_00103e2c;
      }
      uVar9 = 0x82a;
    }
    else {
      if (uVar10 == 1) {
        sprintf(aw22xxx_dyn_name,"aw_cfg%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
        uVar9 = 0x833;
        goto LAB_00103e2c;
      }
LAB_00103db4:
      uVar9 = 0x83e;
    }
    _printk(&DAT_0010daa6,"aw22xxx_get_fwname",uVar9,param_1 & 0xffffffff);
  }
  else {
    if (uVar10 == 2) {
      sprintf(aw22xxx_dyn_name,"aw_touch%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
      uVar9 = 0x837;
    }
    else {
      if (uVar10 != 3) goto LAB_00103db4;
      sprintf(aw22xxx_dyn_name,"aw_fan%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
      uVar9 = 0x83b;
    }
LAB_00103e2c:
    _printk(&DAT_0010d446,"aw22xxx_get_fwname",uVar9,aw22xxx_dyn_name);
  }
  return;
}

