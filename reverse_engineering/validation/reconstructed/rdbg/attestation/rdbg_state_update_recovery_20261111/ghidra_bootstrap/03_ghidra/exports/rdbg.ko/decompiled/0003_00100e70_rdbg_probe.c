
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 rdbg_probe(long param_1)

{
  ulong *puVar1;
  undefined4 *puVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  undefined4 uVar6;
  char *__s;
  long lVar7;
  ulong uVar8;
  ulong uVar9;
  ulong uVar10;
  long lVar11;
  long lVar12;
  long lVar13;
  
  __s = (char *)__kmalloc_cache_noprof(___kmalloc_noprof,0xdc0,0x20);
  if (__s == (char *)0x0) {
LAB_001010c8:
    uVar6 = 0xfffffff4;
  }
  else {
    if (0 < DAT_00100114) {
      lVar13 = 0;
      uVar10 = 0;
      lVar11 = 0x50;
      do {
        if (lVar13 == 0x180) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x10111c);
          (*pcVar4)();
        }
        if (false) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(1,0x101120);
          (*pcVar4)();
        }
        lVar12 = *(long *)((long)&proc_info + lVar13);
        if (lVar12 != 0) {
          iVar5 = snprintf(__s,0x20,"%s%d-out","qcom,smp2p-interrupt-rdbg-",uVar10 & 0xffffffff);
          if (0 < iVar5) {
            iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
            lVar3 = DAT_00100118;
            if (iVar5 != 0) {
              if (DAT_00100118 + lVar11 == 0x10) {
                uVar6 = 0xffffffea;
                _printk(&DAT_00101dac,"rdbg_probe",lVar12);
                goto LAB_001010cc;
              }
              lVar7 = of_find_property(*(undefined8 *)(param_1 + 0x2f8),"qcom,smem-states",0);
              if (lVar7 != 0) {
                puVar1 = (ulong *)(lVar3 + lVar11);
                mutex_lock(&rdbg_smem_state_lock);
                uVar8 = qcom_smem_state_get(param_1 + 0x10,"rdbg-smp2p-out",puVar1 + -1);
                if ((uVar8 == 0) || (0xfffffffffffff000 < uVar8)) {
                  mutex_unlock(&rdbg_smem_state_lock);
                  _printk(&DAT_00101c45);
                  uVar6 = (undefined4)uVar8;
                  if (uVar8 < 0xfffffffffffff001) {
                    uVar6 = 0xffffffed;
                  }
                  goto LAB_001010cc;
                }
                uVar9 = *puVar1;
                if (uVar8 != uVar9) {
                  *(undefined4 *)((long)puVar1 + 0xc) = 0;
                  puVar1[0x1f] = 0;
                  puVar1[0x20] = 0;
                  puVar1[0x21] = 0;
                  puVar1[0x22] = 0;
                  puVar1[0x23] = 0;
                  puVar1[0x24] = 0;
                  puVar1[0x25] = 0;
                  puVar1[0x26] = 0;
                  puVar1[0x27] = 0;
                  puVar1[0x28] = 0;
                  puVar1[0x29] = 0;
                  puVar1[0x2a] = 0;
                  puVar1[0x2b] = 0;
                  puVar1[0x2c] = 0;
                  puVar1[0x2d] = 0;
                  puVar1[0x2e] = 0;
                }
                *puVar1 = uVar8;
                if ((uVar9 != 0) && (uVar9 < 0xfffffffffffff001)) {
                  qcom_smem_state_put(uVar9);
                }
                mutex_unlock(&rdbg_smem_state_lock);
              }
            }
            iVar5 = snprintf(__s,0x20,"%s%d-in","qcom,smp2p-interrupt-rdbg-",uVar10 & 0xffffffff);
            if (0 < iVar5) {
              iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
              if (iVar5 != 0) {
                puVar2 = (undefined4 *)(DAT_00100118 + lVar11 + -0x28);
                if (puVar2 == (undefined4 *)0x0) {
                  _printk(&DAT_00101c6d,lVar12);
                }
                else {
                  uVar6 = of_irq_get_byname(*(undefined8 *)(param_1 + 0x2f8),"rdbg-smp2p-in");
                  mutex_lock(&rdbg_input_irq_lock);
                  *puVar2 = uVar6;
                  DAT_0010021c = uVar6;
                  mutex_unlock(&rdbg_input_irq_lock);
                }
              }
              goto LAB_00100eec;
            }
          }
          _printk(&DAT_00101be2);
          goto LAB_001010c8;
        }
LAB_00100eec:
        uVar10 = uVar10 + 1;
        lVar13 = lVar13 + 0x18;
        lVar11 = lVar11 + 0x1c8;
      } while ((long)uVar10 < (long)DAT_00100114);
    }
    uVar6 = 0;
  }
LAB_001010cc:
  kfree(__s);
  return uVar6;
}

