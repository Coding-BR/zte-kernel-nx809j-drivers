
undefined8 charger_policy_status_ide(long param_1)

{
  undefined4 uVar1;
  long lVar2;
  long lVar3;
  
  if (*(char *)(param_1 + 0x21d) == '\x01') {
    _printk(&DAT_00105709,"charger_policy_status_ide",*(undefined1 *)(param_1 + 0x219),
            *(undefined1 *)(param_1 + 0x21a));
  }
  ktime_get_with_offset(1);
  lVar2 = ns_to_timespec64();
  if (*(char *)(param_1 + 0x219) == '\x01') {
    _printk(&DAT_00104c8d,"charger_policy_status_ide");
    charger_policy_disable_cas(param_1,1);
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    *(long *)(param_1 + 0x208) = lVar2;
    _printk(&DAT_001047ea,"charger_policy_status_ide",lVar2);
  }
  else {
    lVar3 = *(long *)(param_1 + 0x208);
    if (lVar3 == 0) {
      *(long *)(param_1 + 0x208) = lVar2;
      _printk(&DAT_00103e8f,"charger_policy_status_ide",lVar2);
      lVar3 = *(long *)(param_1 + 0x208);
    }
    if (*(char *)(param_1 + 0x21d) == '\x01') {
      _printk(&DAT_00104aba,"charger_policy_status_ide",lVar2,lVar3,lVar2 - lVar3,
              *(undefined4 *)(param_1 + 500));
      lVar3 = *(long *)(param_1 + 0x208);
    }
    if ((long)(ulong)*(uint *)(param_1 + 500) <= lVar2 - lVar3) {
      _printk(&DAT_001044c1,"charger_policy_status_ide");
      charger_policy_disable_cas(param_1,1);
      uVar1 = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined1 *)(param_1 + 0x21b) = 1;
      *(undefined4 *)(param_1 + 0x1ec) = 1;
      *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    }
  }
  return 0;
}

