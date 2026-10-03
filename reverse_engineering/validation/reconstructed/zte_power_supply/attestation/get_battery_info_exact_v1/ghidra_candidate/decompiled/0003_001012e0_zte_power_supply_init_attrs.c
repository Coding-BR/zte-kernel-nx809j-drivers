
ulong zte_power_supply_init_attrs(long param_1)

{
  ulong uVar1;
  byte bVar2;
  long lVar3;
  long lVar4;
  code *pcVar5;
  uint uVar6;
  ulong uVar7;
  ulong uVar8;
  long lVar9;
  
  *(undefined ***)(param_1 + 8) = &zte_power_supply_groups;
  uVar7 = _printk(&DAT_001036ff,0x13);
  lVar9 = 0;
  uVar8 = 0;
  do {
    lVar3 = uVar8 * 0x58;
    if ((&zte_power_supply_attrs)[uVar8 * 0xb] == (undefined *)0x0) {
      _printk(&DAT_001035cb,"zte_power_supply_init_attrs",uVar8 & 0xffffffff);
      uVar6 = sprintf(s_STATUS_00100260 + lVar3,"_err_%d",uVar8 & 0xffffffff);
      uVar7 = (ulong)uVar6;
    }
    else {
      bVar2 = s_STATUS_00100260[lVar3];
      lVar4 = lVar9;
      while (bVar2 != 0) {
        if ((0x687 < lVar4 + 8U) ||
           (s_STATUS_00100260[lVar4] = ((&_ctype)[bVar2] & 1) * ' ' + bVar2, lVar4 == 0x67f)) {
                    /* WARNING: Does not return */
          pcVar5 = (code *)SoftwareBreakpoint(1,0x101420);
          (*pcVar5)();
        }
        bVar2 = s_STATUS_00100260[lVar4 + 1];
        lVar4 = lVar4 + 1;
      }
    }
    lVar9 = lVar9 + 0x58;
    (&DAT_00100280)[uVar8 * 0xb] = s_STATUS_00100260 + lVar3;
    (&zte_power_supply_dev_attrs)[uVar8] = &DAT_00100280 + uVar8 * 0xb;
    uVar1 = uVar8 + 1;
    (&DAT_00100290)[uVar8 * 0xb] = zte_power_supply_show_property;
    (&DAT_00100298)[uVar8 * 0xb] = zte_power_supply_store_property;
    uVar8 = uVar1;
    if (uVar1 == 0x13) {
      return uVar7;
    }
  } while( true );
}

