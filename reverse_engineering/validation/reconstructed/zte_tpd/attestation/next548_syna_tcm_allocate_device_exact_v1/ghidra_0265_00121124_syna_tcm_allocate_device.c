
undefined8 syna_tcm_allocate_device(long *param_1,long param_2,undefined8 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 *puVar5;
  void *__s;
  char *pcVar6;
  char cVar7;
  long lVar8;
  uint uVar9;
  
  if (param_2 == 0) {
    puVar3 = &DAT_0013b9ee;
LAB_00121170:
    _printk(puVar3,"syna_tcm_allocate_device");
    return 0xffffff0f;
  }
  if (*(long *)(param_2 + 0x20) == 0) {
    puVar3 = &DAT_001390e0;
    goto LAB_00121170;
  }
  if (*(long *)(param_2 + 0x28) == 0) {
    puVar3 = &DAT_00134da3;
    goto LAB_00121170;
  }
  _printk(&DAT_001372de,"syna_tcm_allocate_device");
  *param_1 = 0;
  lVar4 = syna_request_managed_device();
  if (lVar4 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
  }
  else {
    puVar5 = (undefined8 *)devm_kmalloc(lVar4,0x23e8,0xdc0);
    if (puVar5 != (undefined8 *)0x0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      uVar2 = *(undefined4 *)(param_2 + 0x10);
      *puVar5 = param_3;
      puVar5[9] = param_2;
      puVar5[0x72] = 0;
      puVar5[0x73] = 0;
      puVar5[0x74] = 0;
      puVar5[0x75] = 0;
      *(undefined4 *)(puVar5 + 8) = uVar2;
      *(undefined4 *)((long)puVar5 + 0x44) = uVar1;
      *(undefined4 *)(puVar5 + 7) = uVar2;
      *(undefined4 *)((long)puVar5 + 0x3c) = uVar1;
      __mutex_init(puVar5 + 10,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x28) = 0;
      puVar5[0x20] = 0;
      puVar5[0x21] = 0;
      __mutex_init(puVar5 + 0x22,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x31) = 0;
      puVar5[0x29] = 0;
      puVar5[0x2a] = 0;
      __mutex_init(puVar5 + 0x2b,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x3a) = 0;
      puVar5[0x32] = 0;
      puVar5[0x33] = 0;
      __mutex_init(puVar5 + 0x34,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x50) = 0;
      puVar5[0x48] = 0;
      puVar5[0x49] = 0;
      __mutex_init(puVar5 + 0x4a,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x59) = 0;
      puVar5[0x51] = 0;
      puVar5[0x52] = 0;
      __mutex_init(puVar5 + 0x53,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x62) = 0;
      puVar5[0x5a] = 0;
      puVar5[0x5b] = 0;
      __mutex_init(puVar5 + 0x5c,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(puVar5 + 0x44) = 0;
      __init_swait_queue_head(puVar5 + 0x45,"&x->wait",&init_completion___key);
      __mutex_init(puVar5 + 99,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      __mutex_init(puVar5 + 0x69,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(puVar5 + 0x3f) = 0;
      *(undefined2 *)((long)puVar5 + 0x1fc) = 0;
      *(undefined4 *)(puVar5 + 0x40) = 0;
      *(undefined1 *)((long)puVar5 + 0x204) = 0;
      if (*(char *)(puVar5 + 0x50) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(puVar5 + 0x4a);
      uVar9 = *(uint *)(puVar5 + 0x49);
      __s = (void *)puVar5[0x48];
      *(char *)(puVar5 + 0x50) = *(char *)(puVar5 + 0x50) + '\x01';
      if (3 < uVar9) {
LAB_0012150c:
        memset(__s,0,(ulong)uVar9);
        cVar7 = '\0';
        puVar5[0x49] = 4;
        if (*(char *)(puVar5 + 0x50) != '\x01') {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar7 = *(char *)(puVar5 + 0x50) + -1;
        }
        *(char *)(puVar5 + 0x50) = cVar7;
        mutex_unlock(puVar5 + 0x4a);
        *(undefined1 *)((long)puVar5 + 0x37a) = 0;
        *(undefined4 *)((long)puVar5 + 0x382) = 0;
        *(undefined4 *)((long)puVar5 + 0x37c) = 0;
        puVar5[0x41] = 0x1400000bb8;
        *(undefined1 *)(puVar5 + 0x70) = 0;
        puVar5[0x42] = 0x6400000032;
        *(undefined4 *)(puVar5 + 0x43) = 10;
        *(undefined1 *)((long)puVar5 + 9) = 0;
        puVar5[0x3d] = 0x6400000064;
        *param_1 = (long)puVar5;
        _printk(&DAT_0013c7af,"syna_tcm_allocate_device",2,0xc,0);
        puVar3 = &DAT_0013650e;
        if (*(char *)(param_2 + 0x14) == '\0') {
          puVar3 = &DAT_0013a5e4;
        }
        _printk(&DAT_00137768,"syna_tcm_allocate_device",puVar3);
        if (*(char *)(param_2 + 0x15) == '\x01') {
          puVar3 = &DAT_0013a5e4;
          if (*(int *)(param_2 + 0x18) != 0) {
            puVar3 = &DAT_0013650e;
          }
          _printk(&DAT_0013db91,"syna_tcm_allocate_device",puVar3,*(int *)(param_2 + 0x18),
                  *(undefined4 *)(param_2 + 0x1c));
          return 0;
        }
        return 0;
      }
      if (__s != (void *)0x0) {
        lVar4 = syna_request_managed_device();
        if (lVar4 == 0) {
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        }
        else {
          devm_kfree(lVar4,__s);
        }
      }
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
        puVar5[0x48] = 0;
      }
      else {
        uVar9 = 4;
        __s = (void *)devm_kmalloc(lVar4,4,0xdc0);
        puVar5[0x48] = __s;
        if (__s != (void *)0x0) {
          *(undefined4 *)(puVar5 + 0x49) = 4;
          goto LAB_0012150c;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",4);
      puVar5[0x49] = 0;
      _printk(&DAT_00136783,"syna_tcm_init_message_handler",4);
      puVar5[0x49] = 0;
      if (*(char *)(puVar5 + 0x50) == '\x01') {
        cVar7 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar7 = *(char *)(puVar5 + 0x50) + -1;
      }
      *(char *)(puVar5 + 0x50) = cVar7;
      mutex_unlock(puVar5 + 0x4a);
      _printk(&DAT_0013c12f,"syna_tcm_allocate_device");
      if (*(char *)(puVar5 + 0x3a) != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar8 = puVar5[0x32];
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar8 != 0) {
        devm_kfree(lVar4,lVar8);
      }
      puVar5[0x33] = 0;
      *(undefined1 *)(puVar5 + 0x3a) = 0;
      if (*(char *)(puVar5 + 0x28) != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar8 = puVar5[0x20];
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar8 != 0) {
        devm_kfree(lVar4,lVar8);
      }
      puVar5[0x21] = 0;
      *(undefined1 *)(puVar5 + 0x28) = 0;
      if (*(char *)(puVar5 + 0x31) != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar8 = puVar5[0x29];
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar8 != 0) {
        devm_kfree(lVar4,lVar8);
      }
      puVar5[0x2a] = 0;
      *(undefined1 *)(puVar5 + 0x31) = 0;
      puVar5[9] = 0;
      lVar4 = syna_request_managed_device();
      if (lVar4 != 0) {
        devm_kfree(lVar4,puVar5);
        return 0xffffff0d;
      }
      puVar3 = &DAT_0013ccb3;
      pcVar6 = "syna_pal_mem_free";
      goto LAB_00121204;
    }
  }
  puVar3 = &DAT_00136753;
  pcVar6 = "syna_tcm_allocate_device";
LAB_00121204:
  _printk(puVar3,pcVar6);
  return 0xffffff0d;
}

