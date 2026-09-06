
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 syna_cdev_create(long param_1,undefined8 param_2)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  _DAT_0015eb68 = 0;
  DAT_0015eb70 = 0;
  DAT_0015eb58 = 0;
  _DAT_0015eb60 = 0;
  DAT_0015eb48 = 0;
  DAT_0015eb50 = 0;
  DAT_0015eb38 = 0;
  DAT_0015eb40 = 0;
  DAT_0015eb20 = 0;
  DAT_0015eb28 = 0;
  DAT_0015eb10 = 0;
  DAT_0015eb18 = 0;
  DAT_0015eb08 = 0;
  DAT_0015eaf0 = 0;
  _DAT_0015eaf8 = 0;
  DAT_0015eae0 = 0;
  DAT_0015eae8 = 0;
  DAT_0015ead0 = 0;
  DAT_0015ead8 = 0;
  DAT_0015eab8 = 0;
  DAT_0015eac0 = 0;
  DAT_0015eac8 = 0;
  DAT_0015eb30 = 0;
  DAT_0015eb00 = 0;
  g_cdev_data = param_2;
  *(undefined8 *)(param_1 + 0x388) = 0;
  *(undefined8 *)(param_1 + 0x390) = 0;
  __mutex_init(&DAT_0015eb00,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  __mutex_init(&DAT_0015eb30,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  _DAT_0015eaf8 = _DAT_0015eaf8 & 0xffffffffffffff00;
  DAT_0015eab8 = 0;
  DAT_0015eac0 = 0;
  __mutex_init(&DAT_0015eac8,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  if (syna_cdev_create_cdev_major_num == 0) {
    iVar1 = alloc_chrdev_region((uint *)(param_1 + 0x380),0,1,"synaptics_tcm");
    if (-1 < iVar1) {
      syna_cdev_create_cdev_major_num = *(uint *)(param_1 + 0x380) >> 0x14;
      goto LAB_0013e3c0;
    }
    puVar4 = &DAT_0017ea91;
  }
  else {
    iVar1 = syna_cdev_create_cdev_major_num << 0x14;
    *(int *)(param_1 + 0x380) = iVar1;
    iVar1 = register_chrdev_region(iVar1,1,"synaptics_tcm");
    if (-1 < iVar1) {
LAB_0013e3c0:
      cdev_init(param_1 + 0x2f8,&device_fops);
      *(undefined1 **)(param_1 + 0x358) = &__this_module;
      iVar1 = cdev_add(param_1 + 0x2f8,*(undefined4 *)(param_1 + 0x380),1);
      if (iVar1 < 0) {
        uVar5 = _printk(&DAT_00181f53,"syna_cdev_create");
        return uVar5;
      }
      uVar2 = class_create("synaptics_tcm");
      if (uVar2 < 0xfffffffffffff001) {
        *(code **)(uVar2 + 0x20) = syna_cdev_devnode;
        uVar3 = device_create(uVar2,0,*(uint *)(param_1 + 0x380),0,"tcm%d",
                              *(uint *)(param_1 + 0x380) & 0xfffff);
        if (uVar3 < 0xfffffffffffff001) {
          *(ulong *)(param_1 + 0x390) = uVar3;
          _DAT_0015eb60 = _DAT_0015eb60 & 0xffffffff;
          *(ulong *)(param_1 + 0x388) = uVar2;
          *(undefined4 *)(param_1 + 900) = 0;
          *(long *)(param_1 + 0x4f8) = param_1 + 0x4f8;
          *(long *)(param_1 + 0x500) = param_1 + 0x4f8;
          __init_waitqueue_head(param_1 + 0x508,"&tcm->wait_frame",&syna_cdev_create___key);
          return 0;
        }
        uVar5 = _printk(&DAT_00182582,"syna_cdev_create");
        return uVar5;
      }
      uVar5 = _printk(&DAT_0017fae5,"syna_cdev_create");
      return uVar5;
    }
    puVar4 = &DAT_00181d0b;
  }
  uVar5 = _printk(puVar4,"syna_cdev_create");
  return uVar5;
}

