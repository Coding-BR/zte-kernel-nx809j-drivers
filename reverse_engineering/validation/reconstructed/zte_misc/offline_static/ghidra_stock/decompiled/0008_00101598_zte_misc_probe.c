
void zte_misc_probe(long param_1)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined4 uVar4;
  long lVar5;
  undefined *puVar6;
  undefined8 uVar7;
  char *__s;
  long lVar8;
  long lVar9;
  ulong uVar10;
  char *local_f0;
  undefined8 local_e8;
  undefined8 local_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar5 = sp_el0;
  local_68 = *(long *)(lVar5 + 0x710);
  _printk(&DAT_00102977,"zte_misc_probe");
  local_f0 = (char *)0x0;
  local_e8 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e0 = 0;
  lVar5 = of_find_node_opts_by_path("/chosen",0);
  if (lVar5 == 0) {
    puVar6 = &DAT_001027e0;
  }
  else {
    iVar3 = of_property_read_string(lVar5,"bootargs",&local_f0);
    if (-1 < iVar3) {
      __s = strstr(local_f0,"kmparam.mode=");
      if (__s == (char *)0x0) {
        _printk(&DAT_00102686);
      }
      else {
        sscanf(__s,"kmparam.mode=%s",&local_e8);
        iVar3 = (int)local_e8;
        zte_poweroff_charging_param = iVar3 == 0x72616863 && local_e8._3_4_ == 0x72656772;
        _printk(&DAT_001028a8,zte_poweroff_charging_param,&local_e8);
      }
      goto LAB_0010164c;
    }
    puVar6 = &DAT_0010284a;
  }
  _printk(puVar6,"zte_poweroff_charging_handle_init");
LAB_0010164c:
  _printk(&DAT_001028f1);
  lVar5 = *(long *)(param_1 + 0x2f8);
  if (lVar5 == 0) {
    uVar7 = 0xffffffed;
  }
  else {
    lVar8 = of_get_next_child(lVar5,0);
    if (lVar8 != 0) {
      uVar10 = 0xffffffff;
      do {
        lVar9 = of_find_property(lVar8,"label",0);
        if (lVar9 == 0) {
          _dev_warn(param_1 + 0x10,"Found without labels\n");
        }
        else {
          if ((int)uVar10 == 0xf) {
            _printk(&DAT_0010292b);
            break;
          }
          uVar1 = (int)uVar10 + 1;
          uVar10 = (ulong)uVar1;
          uVar7 = of_get_property(lVar8,"label",0);
          uVar7 = kstrdup(uVar7,0xcc0);
          if (0x100 < (uVar10 << 4 | 8)) {
LAB_00101820:
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(1,0x101824);
            (*pcVar2)();
          }
          (&DAT_00101ec0)[uVar10 * 2] = uVar7;
          uVar4 = of_get_named_gpio(lVar8,"zte-misc",0);
          if (uVar1 == 0x10) goto LAB_00101820;
          uVar7 = (&DAT_00101ec0)[uVar10 * 2];
          (&zte_gpios)[uVar10 * 4] = uVar4;
          _printk(&DAT_001026ab,uVar4,uVar7);
        }
        lVar8 = of_get_next_child(lVar5,lVar8);
      } while (lVar8 != 0);
    }
    _printk(&DAT_00102895,"zte_misc_probe");
    uVar7 = 0;
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar7);
}

