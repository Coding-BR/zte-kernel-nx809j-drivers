
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_cdev_create(long param_1,undefined8 param_2)

{
  int iVar1;
  uint uVar2;
  ulong uVar3;
  undefined *puVar4;
  ulong uVar5;
  
  _DAT_00131e88 = 0;
  _DAT_00131e90 = 0;
  DAT_00131e78 = 0;
  DAT_00131e80 = 0;
  DAT_00131e68 = 0;
  DAT_00131e70 = 0;
  DAT_00131e58 = 0;
  DAT_00131e60 = 0;
  DAT_00131e40 = 0;
  DAT_00131e48 = 0;
  DAT_00131e30 = 0;
  DAT_00131e38 = 0;
  DAT_00131e28 = 0;
  DAT_00131e10 = 0;
  _DAT_00131e18 = 0;
  DAT_00131e00 = 0;
  DAT_00131e08 = 0;
  DAT_00131df0 = 0;
  DAT_00131df8 = 0;
  DAT_00131dd8 = 0;
  DAT_00131de0 = 0;
  DAT_00131de8 = 0;
  DAT_00131e50 = 0;
  DAT_00131e20 = 0;
  g_cdev_data = param_2;
  *(undefined8 *)(param_1 + 0x388) = 0;
  *(undefined8 *)(param_1 + 0x390) = 0;
  __mutex_init(&DAT_00131e20,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  __mutex_init(&DAT_00131e50,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  _DAT_00131e18 = _DAT_00131e18 & 0xffffffffffffff00;
  DAT_00131dd8 = 0;
  DAT_00131de0 = 0;
  __mutex_init(&DAT_00131de8,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  if (syna_cdev_create_cdev_major_num == 0) {
    uVar2 = alloc_chrdev_region((uint *)(param_1 + 0x380),0,1,"synaptics_tcm");
    if (-1 < (int)uVar2) {
      syna_cdev_create_cdev_major_num = *(uint *)(param_1 + 0x380) >> 0x14;
      goto LAB_00114c58;
    }
    puVar4 = &DAT_00133faa;
  }
  else {
    iVar1 = syna_cdev_create_cdev_major_num << 0x14;
    *(int *)(param_1 + 0x380) = iVar1;
    uVar2 = register_chrdev_region(iVar1,1,"synaptics_tcm");
    if (-1 < (int)uVar2) {
LAB_00114c58:
      cdev_init(param_1 + 0x2f8,device_fops);
      *(undefined1 **)(param_1 + 0x358) = &__this_module;
      uVar2 = cdev_add(param_1 + 0x2f8,*(undefined4 *)(param_1 + 0x380),1);
      if ((int)uVar2 < 0) {
        uVar5 = (ulong)uVar2;
        _printk(&DAT_0013b736,"syna_cdev_create");
      }
      else {
        uVar5 = class_create("synaptics_tcm");
        if (uVar5 < 0xfffffffffffff001) {
          *(code **)(uVar5 + 0x20) = syna_cdev_devnode;
          uVar3 = device_create(uVar5,0,*(uint *)(param_1 + 0x380),0,"tcm%d",
                                *(uint *)(param_1 + 0x380) & 0xfffff);
          if (uVar3 < 0xfffffffffffff001) {
            *(ulong *)(param_1 + 0x390) = uVar3;
            DAT_00131e80 = DAT_00131e80 & 0xffffffff;
            *(ulong *)(param_1 + 0x388) = uVar5;
            *(undefined4 *)(param_1 + 900) = 0;
            *(long *)(param_1 + 0x4f8) = param_1 + 0x4f8;
            *(long *)(param_1 + 0x500) = param_1 + 0x4f8;
            __init_waitqueue_head(param_1 + 0x508,"&tcm->wait_frame",&syna_cdev_create___key);
            uVar5 = 0;
            goto LAB_00114d10;
          }
          _printk(&DAT_0013c628,"syna_cdev_create");
          class_destroy(uVar5);
          uVar5 = 0xfffffffe;
        }
        else {
          _printk(&DAT_00136585,"syna_cdev_create");
        }
        cdev_del(param_1 + 0x2f8);
      }
      unregister_chrdev_region(*(undefined4 *)(param_1 + 0x380),1);
      goto LAB_00114d10;
    }
    puVar4 = &DAT_0013b132;
  }
  uVar5 = (ulong)uVar2;
  _printk(puVar4,"syna_cdev_create");
LAB_00114d10:
  return uVar5 & 0xffffffff;
}

