
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 syna_cdev_create(long param_1,undefined8 param_2)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  undefined *puVar4;
  
  DAT_0015eba8 = 0;
  DAT_0015ebb0 = 0;
  DAT_0015eb98 = 0;
  DAT_0015eba0 = 0;
  DAT_0015eb88 = 0;
  DAT_0015eb90 = 0;
  DAT_0015eb78 = 0;
  DAT_0015eb80 = 0;
  DAT_0015eb60 = 0;
  DAT_0015eb68 = 0;
  DAT_0015eb50 = 0;
  DAT_0015eb58 = 0;
  DAT_0015eb48 = 0;
  DAT_0015eb30 = 0;
  _DAT_0015eb38 = 0;
  DAT_0015eb20 = 0;
  DAT_0015eb28 = 0;
  DAT_0015eb10 = 0;
  DAT_0015eb18 = 0;
  DAT_0015eaf8 = 0;
  DAT_0015eb00 = 0;
  DAT_0015eb08 = 0;
  DAT_0015eb70 = 0;
  DAT_0015eb40 = 0;
  g_cdev_data = param_2;
  *(undefined8 *)(param_1 + 0x388) = 0;
  *(undefined8 *)(param_1 + 0x390) = 0;
  __mutex_init(&DAT_0015eb40,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  __mutex_init(&DAT_0015eb70,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  _DAT_0015eb38 = _DAT_0015eb38 & 0xffffffffffffff00;
  DAT_0015eaf8 = 0;
  DAT_0015eb00 = 0;
  __mutex_init(&DAT_0015eb08,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  if (syna_cdev_create_cdev_major_num == 0) {
    iVar1 = alloc_chrdev_region((uint *)(param_1 + 0x380),0,1,"synaptics_tcm");
    if (-1 < iVar1) {
      syna_cdev_create_cdev_major_num = *(uint *)(param_1 + 0x380) >> 0x14;
      goto LAB_0013e400;
    }
    puVar4 = &DAT_0017ead1;
  }
  else {
    iVar1 = syna_cdev_create_cdev_major_num << 0x14;
    *(int *)(param_1 + 0x380) = iVar1;
    iVar1 = register_chrdev_region(iVar1,1,"synaptics_tcm");
    if (-1 < iVar1) {
LAB_0013e400:
      cdev_init(param_1 + 0x2f8,&device_fops);
      *(undefined1 **)(param_1 + 0x358) = &__this_module;
      iVar1 = cdev_add(param_1 + 0x2f8,*(undefined4 *)(param_1 + 0x380),1);
      if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181f93,"syna_cdev_create");
      }
      uVar2 = class_create("synaptics_tcm");
      if (uVar2 < 0xfffffffffffff001) {
        *(code **)(uVar2 + 0x20) = syna_cdev_devnode;
        uVar3 = device_create(uVar2,0,*(uint *)(param_1 + 0x380),0,"tcm%d",
                              *(uint *)(param_1 + 0x380) & 0xfffff);
        if (uVar3 < 0xfffffffffffff001) {
          *(ulong *)(param_1 + 0x390) = uVar3;
          DAT_0015eba0 = DAT_0015eba0 & 0xffffffff;
          *(ulong *)(param_1 + 0x388) = uVar2;
          *(undefined4 *)(param_1 + 900) = 0;
          *(long *)(param_1 + 0x4f8) = param_1 + 0x4f8;
          *(long *)(param_1 + 0x500) = param_1 + 0x4f8;
          __init_waitqueue_head(param_1 + 0x508,"&tcm->wait_frame",&syna_cdev_create___key);
          return 0;
        }
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001825c2,"syna_cdev_create");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017fb25,"syna_cdev_create");
    }
    puVar4 = &DAT_00181d4b;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_cdev_create");
}

