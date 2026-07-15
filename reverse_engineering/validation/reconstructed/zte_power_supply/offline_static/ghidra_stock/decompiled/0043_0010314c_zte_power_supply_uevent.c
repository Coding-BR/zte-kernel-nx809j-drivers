
undefined8 zte_power_supply_uevent(long param_1,undefined8 param_2)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  char *__s;
  char *pcVar5;
  long lVar6;
  ulong uVar7;
  long *plVar8;
  int iVar9;
  
  plVar8 = *(long **)(param_1 + 0x98);
  if ((plVar8 == (long *)0x0) || ((undefined8 *)*plVar8 == (undefined8 *)0x0)) {
    uVar4 = 0;
  }
  else {
    uVar4 = add_uevent_var(param_2,"POWER_SUPPLY_NAME=%s",*(undefined8 *)*plVar8);
    if ((int)uVar4 == 0) {
      __s = (char *)get_zeroed_page_noprof(0xcc0);
      if (__s == (char *)0x0) {
        uVar4 = 0xfffffff4;
      }
      else {
        lVar6 = *plVar8;
        if (*(long *)(lVar6 + 0x28) != 0) {
          uVar7 = 0;
          iVar9 = 1;
          do {
            uVar1 = *(uint *)(*(long *)(lVar6 + 0x20) + uVar7 * 4);
            if (0x13 < uVar1) {
                    /* WARNING: Does not return */
              pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x1032a4);
              (*pcVar2)();
            }
            uVar4 = zte_power_supply_show_property(param_1,&DAT_001002b0 + (ulong)uVar1 * 0xb,__s);
            iVar3 = (int)uVar4;
            if (iVar3 != -0x3d && iVar3 != -0x13) {
              if (iVar3 < 0) goto LAB_00103288;
              pcVar5 = strchr(__s,10);
              if (pcVar5 != (char *)0x0) {
                *pcVar5 = '\0';
              }
              if (uVar1 == 0x13) {
                    /* WARNING: Does not return */
                pcVar2 = (code *)SoftwareBreakpoint(1,0x1032a8);
                (*pcVar2)();
              }
              uVar4 = add_uevent_var(param_2,"POWER_SUPPLY_%s=%s",
                                     (&zte_power_supply_attrs)[(ulong)uVar1 * 0xb],__s);
              if ((int)uVar4 != 0) goto LAB_00103288;
            }
            lVar6 = *plVar8;
            uVar7 = (ulong)iVar9;
            iVar9 = iVar9 + 1;
          } while (uVar7 < *(ulong *)(lVar6 + 0x28));
        }
        uVar4 = 0;
LAB_00103288:
        free_pages(__s,0);
      }
    }
  }
  return uVar4;
}

