
undefined8 charger_policy_status_ide(long param_1)

{
  undefined4 uVar1;
  char cVar2;
  long lVar3;
  long lVar4;
  
  if (*(char *)(param_1 + 0x21d) != '\0') {
    _printk(&DAT_00105152,"charger_policy_status_ide",*(undefined1 *)(param_1 + 0x219),
            *(undefined1 *)(param_1 + 0x21a));
  }
  ktime_get_with_offset(0);
  lVar3 = ns_to_timespec64();
  if (*(char *)(param_1 + 0x219) == '\0') {
    lVar4 = *(long *)(param_1 + 0x208);
    if (lVar4 == 0) {
      *(long *)(param_1 + 0x208) = lVar3;
      _printk(&DAT_001043a7,"charger_policy_status_ide",lVar3);
      lVar4 = *(long *)(param_1 + 0x208);
      cVar2 = *(char *)(param_1 + 0x21d);
    }
    else {
      cVar2 = *(char *)(param_1 + 0x21d);
    }
    if (cVar2 != '\0') {
      _printk(&DAT_0010374a,"charger_policy_status_ide",lVar3,lVar4,lVar3 - lVar4,
              *(undefined4 *)(param_1 + 500));
      lVar4 = *(long *)(param_1 + 0x208);
    }
    if ((ulong)*(uint *)(param_1 + 500) <= (ulong)(lVar3 - lVar4)) {
      _printk(&DAT_00104afc,"charger_policy_status_ide");
      charger_policy_disable_cas(param_1,1);
      uVar1 = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined1 *)(param_1 + 0x21b) = 1;
      *(undefined4 *)(param_1 + 0x1ec) = 1;
      *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    }
  }
  else {
    _printk(&DAT_001045d3,"charger_policy_status_ide");
    charger_policy_disable_cas(param_1,1);
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    *(long *)(param_1 + 0x208) = lVar3;
    _printk(&DAT_00104869,"charger_policy_status_ide");
  }
  return 0;
}

