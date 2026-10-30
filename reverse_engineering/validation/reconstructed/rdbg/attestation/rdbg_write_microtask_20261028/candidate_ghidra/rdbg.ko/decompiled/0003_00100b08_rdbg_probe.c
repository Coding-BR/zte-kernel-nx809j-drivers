
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int rdbg_probe(long param_1)

{
  ulong *puVar1;
  long lVar2;
  undefined4 *puVar3;
  code *pcVar4;
  int iVar5;
  undefined4 uVar6;
  char *__s;
  long lVar7;
  ulong uVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  long lVar12;
  
  __s = (char *)__kmalloc_cache_noprof(_qcom_smem_state_get,0xdc0,0x20);
  if (__s == (char *)0x0) {
LAB_00100cd0:
    iVar5 = -0xc;
  }
  else {
    if (0 < DAT_001000f4) {
      lVar12 = 0;
      uVar9 = 0;
      lVar10 = 0x50;
      do {
        if (lVar12 == 0x180) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x100d24);
          (*pcVar4)();
        }
        if (false) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(1,0x100d28);
          (*pcVar4)();
        }
        lVar11 = *(long *)((long)&proc_info + lVar12);
        if (lVar11 != 0) {
          iVar5 = snprintf(__s,0x20,"%s%d-out","qcom,smp2p-interrupt-rdbg-",uVar9 & 0xffffffff);
          if (0 < iVar5) {
            iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
            lVar2 = DAT_001000f8;
            if (iVar5 != 0) {
              if (DAT_001000f8 + lVar10 == 0x10) {
                iVar5 = -0x16;
LAB_00100d04:
                _printk(&DAT_001018af,"rdbg_probe",lVar11);
                goto LAB_00100cd4;
              }
              lVar7 = of_find_property(*(undefined8 *)(param_1 + 0x2f8),"qcom,smem-states",0);
              if (lVar7 != 0) {
                puVar1 = (ulong *)(lVar2 + lVar10);
                uVar8 = qcom_smem_state_get(param_1 + 0x10,"rdbg-smp2p-out",puVar1 + -1);
                *puVar1 = uVar8;
                if ((uVar8 == 0) || (0xfffffffffffff000 < uVar8)) {
                  _printk(&DAT_0010176c);
                  iVar5 = *(int *)(lVar2 + lVar10);
                  if (iVar5 != 0) goto LAB_00100d04;
                }
              }
            }
            iVar5 = snprintf(__s,0x20,"%s%d-in","qcom,smp2p-interrupt-rdbg-",uVar9 & 0xffffffff);
            if (0 < iVar5) {
              iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
              if (iVar5 != 0) {
                lVar2 = DAT_001000f8 + lVar10;
                puVar3 = (undefined4 *)(lVar2 + -0x28);
                if (puVar3 == (undefined4 *)0x0) {
                  _printk(&DAT_00101794,lVar11);
                }
                else {
                  uVar6 = of_irq_get_byname(*(undefined8 *)(param_1 + 0x2f8),"rdbg-smp2p-in");
                  *puVar3 = uVar6;
                  *(undefined4 *)(lVar2 + -0x24) = uVar6;
                }
              }
              goto LAB_00100b84;
            }
          }
          _printk(&DAT_00101709);
          goto LAB_00100cd0;
        }
LAB_00100b84:
        uVar9 = uVar9 + 1;
        lVar12 = lVar12 + 0x18;
        lVar10 = lVar10 + 0x1c8;
      } while ((long)uVar9 < (long)DAT_001000f4);
    }
    iVar5 = 0;
  }
LAB_00100cd4:
  kfree(__s);
  return iVar5;
}

