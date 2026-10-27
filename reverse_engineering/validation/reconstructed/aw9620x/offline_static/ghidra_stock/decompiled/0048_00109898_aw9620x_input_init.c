
undefined8 aw9620x_input_init(long param_1,undefined1 *param_2)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  char *pcVar4;
  long lVar5;
  long *plVar6;
  ulong uVar7;
  ulong uVar8;
  
  lVar2 = devm_kmalloc(*(undefined8 *)(param_1 + 0x30),0x180,0xdc0);
  *(long *)(param_1 + 0x200) = lVar2;
  if (lVar2 == 0) {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] devm_kzalloc err\n",
                "aw9620x_input_init",0xa21);
LAB_00109ae4:
    uVar3 = 0xffffffff;
  }
  else {
    uVar8 = 0;
    lVar2 = 0x10;
    do {
      iVar1 = snprintf((char *)(*(long *)(param_1 + 0x200) + lVar2),0x1e,"nubia_tgk_aw_sar%u_ch%u",
                       (ulong)*(uint *)(param_1 + 8),uVar8 & 0xffffffff);
      *(undefined4 *)(*(long *)(param_1 + 0x200) + lVar2 + -0xc) = 0;
      lVar5 = *(long *)(param_1 + 0x200) + lVar2;
      if ((*(uint *)(param_1 + 0x18) >> (ulong)((uint)uVar8 & 0x1f) & 1) != 0) {
        *(undefined1 *)(lVar5 + -0x10) = 1;
        uVar3 = input_allocate_device(iVar1);
        *(undefined8 *)(*(long *)(param_1 + 0x200) + lVar2 + -8) = uVar3;
        lVar5 = *(long *)(param_1 + 0x200) + lVar2;
        plVar6 = *(long **)(lVar5 + -8);
        if (plVar6 == (long *)0x0) {
          *param_2 = (char)uVar8;
        }
        else {
          *plVar6 = lVar5;
          lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
          *(ulong *)(lVar5 + 0x28) = *(ulong *)(lVar5 + 0x28) | 2;
          lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
          *(ulong *)(lVar5 + 0x28) = *(ulong *)(lVar5 + 0x28) | 1;
          lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
          *(ulong *)(lVar5 + 0x30) = *(ulong *)(lVar5 + 0x30) | 0x800000000000000;
          if (*(int *)(param_1 + 8) == 1) {
            uVar3 = 0xa3e;
            lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
            uVar7 = *(ulong *)(lVar5 + 0x38) | 4;
            pcVar4 = "[%s:%d] F8 event init\n";
LAB_00109a74:
            *(ulong *)(lVar5 + 0x38) = uVar7;
            _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),pcVar4,"aw9620x_input_init",
                        uVar3);
          }
          else if (*(int *)(param_1 + 8) == 0) {
            uVar3 = 0xa3a;
            lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
            uVar7 = *(ulong *)(lVar5 + 0x38) | 2;
            pcVar4 = "[%s:%d] F7 event init\n";
            goto LAB_00109a74;
          }
          input_set_abs_params
                    (*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar2 + -8),0x19,0xffffffff,100,0,
                     0);
          iVar1 = input_register_device(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar2 + -8));
          if (iVar1 == 0) goto LAB_00109920;
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] failed to register input device\n","aw9620x_input_init",0xa44);
        }
        if ((int)lVar2 != 0x10) {
          lVar2 = 8;
          do {
            if (*(long *)(*(long *)(param_1 + 0x200) + lVar2) != 0) {
              input_free_device();
            }
            uVar8 = uVar8 - 1;
            lVar2 = lVar2 + 0x30;
          } while (uVar8 != 0);
        }
        goto LAB_00109ae4;
      }
      *(undefined1 *)(lVar5 + -0x10) = 0;
      *(undefined8 *)(*(long *)(param_1 + 0x200) + lVar2 + -8) = 0;
LAB_00109920:
      lVar2 = lVar2 + 0x30;
      uVar8 = uVar8 + 1;
    } while (lVar2 != 400);
    uVar3 = 0;
  }
  return uVar3;
}

