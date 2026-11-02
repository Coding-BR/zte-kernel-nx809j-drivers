
ulong nb_fan_parse_dt(long *param_1)

{
  uint uVar1;
  long lVar2;
  undefined8 *puVar3;
  byte *pbVar4;
  ulong uVar5;
  undefined *puVar6;
  int iVar7;
  code *pcVar8;
  undefined8 uVar9;
  uint uVar10;
  undefined8 local_70;
  undefined8 local_68;
  uint6 local_60;
  undefined2 uStack_5a;
  long local_58;
  
  lVar2 = sp_el0;
  local_58 = *(long *)(lVar2 + 0x710);
  local_68 = 0;
  _local_60 = 0;
  local_70 = 0;
  uVar9 = *(undefined8 *)(*param_1 + 0x2e8);
  lVar2 = of_get_next_available_child(uVar9,0);
  if (lVar2 != 0) {
    uVar1 = 0xffffffff;
    do {
      uVar10 = uVar1;
      lVar2 = of_get_next_available_child(uVar9,lVar2);
      uVar1 = uVar10 + 1;
    } while (lVar2 != 0);
    if (uVar1 < 0x7fffffff) {
      if (uVar1 == 0) {
        lVar2 = devm_kmalloc(*param_1,0xa8,0xdc0);
        param_1[1] = lVar2;
        if (lVar2 == 0) {
          _printk(&DAT_0010166f,"NB_FAN","nb_fan_parse_dt",0x2bd);
          uVar5 = 0xfffffff4;
        }
        else {
          for (puVar3 = (undefined8 *)of_get_next_available_child(uVar9,0);
              puVar3 != (undefined8 *)0x0;
              puVar3 = (undefined8 *)of_get_next_available_child(uVar9,puVar3)) {
            pbVar4 = (byte *)of_get_property(puVar3,"label",0);
            if ((pbVar4 == (byte *)0x0) && (pbVar4 = (byte *)*puVar3, pbVar4 == (byte *)0x0)) {
              puVar6 = &DAT_0010184d;
              uVar9 = 0x2c4;
              goto LAB_001005ec;
            }
            iVar7 = *pbVar4 - 0x66;
            if ((iVar7 == 0) && (iVar7 = pbVar4[1] - 0x61, iVar7 == 0)) {
              if (pbVar4[2] == 0x6e) {
LAB_00100508:
                if (param_1[1] != 0) {
                  uVar5 = devm_fwnode_pwm_get(*param_1,puVar3 + 3,0);
                  if (0xfffffffffffff000 < uVar5) {
                    if ((int)uVar5 == -0x205) {
                      uVar5 = 0xfffffdfb;
                    }
                    else {
                      _printk(&DAT_001018f9,"NB_FAN","nb_fan_parse_dt",0x2d5,pbVar4,
                              uVar5 & 0xffffffff);
                    }
                    goto LAB_001006b0;
                  }
                  *(byte **)(param_1[1] + 0x20) = pbVar4;
                  *(ulong *)(param_1[1] + 0x68) = uVar5;
                  lVar2 = *(long *)(param_1[1] + 0x68);
                  local_70 = *(undefined8 *)(lVar2 + 0x20);
                  local_68 = 0;
                  pcVar8 = *(code **)(*(long *)(*(long *)(lVar2 + 0x18) + 0x390) + 0x18);
                  uStack_5a = (undefined2)((ulong)*(undefined8 *)(lVar2 + 0x40) >> 0x30);
                  local_60 = (uint6)*(uint *)(lVar2 + 0x28);
                  if (*(int *)(pcVar8 + -4) != -0x222f6830) {
                    /* WARNING: Does not return */
                    pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x100584);
                    (*pcVar8)();
                  }
                  uVar5 = (*pcVar8)(*(long *)(lVar2 + 0x18),lVar2,&local_70);
                  if ((int)uVar5 != 0) {
                    _printk(&DAT_001017c3,"NB_FAN","nb_fan_parse_dt",0x2e1,pbVar4);
                    goto LAB_001006b0;
                  }
                  _printk(&DAT_00101560,"NB_FAN","nb_fan_parse_dt",0x2e4,pbVar4);
                }
              }
            }
            else if (iVar7 == 0) goto LAB_00100508;
          }
          uVar5 = 0;
        }
      }
      else {
        _printk(&DAT_001016db,"NB_FAN","nb_fan_parse_dt",0x2a7,uVar10 + 2,1);
        uVar5 = 0xffffffea;
      }
      goto LAB_001006b0;
    }
  }
  puVar6 = &DAT_001018cf;
  uVar9 = 0x2a2;
LAB_001005ec:
  _printk(puVar6,"NB_FAN","nb_fan_parse_dt",uVar9);
  uVar5 = 0xffffffed;
LAB_001006b0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return uVar5 & 0xffffffff;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

