
int ftm_probe(long param_1)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  _printk(&DAT_00100fcb,"ftm_probe");
  lVar2 = of_find_compatible_node(0,0,"qcom,msm-imem-efs-golden-copy");
  if (lVar2 == 0) {
    puVar3 = &DAT_001010c8;
  }
  else {
    ftm_sysdev_priv_data_2 = of_iomap(lVar2,0);
    if (ftm_sysdev_priv_data_2 != 0) goto LAB_00100ce8;
    puVar3 = &DAT_00100f5b;
  }
  _printk(puVar3);
LAB_00100ce8:
  uVar4 = 0x68000000000f13;
  ftm_sysdev_priv_data_0 = 1;
  if (arm64_use_ng_mappings == '\0') {
    uVar4 = 0x68000000000713;
  }
  ftm_sysdev_priv_data_1 = ioremap_prot(0x58000,0x1000,uVar4);
  if (ftm_sysdev_priv_data_1 == 0) {
    _printk(&DAT_00100f2a,"ftm_probe");
    iVar1 = -0xc;
  }
  else {
    iVar1 = sysfs_create_group(param_1 + 0x10,ftm_attr_grp);
    if (iVar1 == 0) {
      _printk(&DAT_00100f46,"ftm_probe");
    }
    else {
      _printk(&DAT_00100f8c,iVar1);
    }
  }
  return iVar1;
}

