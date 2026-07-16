
void gpio_keys_gpio_report_event(long *param_1)

{
  undefined4 *puVar1;
  long lVar2;
  uint uVar3;
  undefined4 uVar4;
  short sVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  undefined *puVar9;
  uint uVar10;
  
  puVar1 = (undefined4 *)*param_1;
  lVar2 = param_1[1];
  uVar3 = puVar1[6];
  uVar10 = uVar3;
  if (uVar3 < 2) {
    uVar10 = 1;
  }
  uVar8 = nb_key_is_need_report_stat_rec;
  if (-1 < (int)param_1[0x19]) {
    gpio_to_desc(*(undefined4 *)((long)param_1 + 0xc4));
    iVar6 = gpiod_get_raw_value();
    gpio_to_desc((int)param_1[0x19]);
    iVar7 = gpiod_get_raw_value();
    if ((iVar6 == 0) == (iVar7 == 0)) {
      _printk(&DAT_00102f85,"nb_key_is_need_report",iVar6 == 0);
      return;
    }
    uVar8 = (uint)(iVar7 == 0) | (uint)(iVar6 == 0) << 1;
    if (nb_key_is_need_report_stat_rec == uVar8) {
      return;
    }
  }
  nb_key_is_need_report_stat_rec = uVar8;
  sVar5 = *(short *)param_1[3];
  uVar8 = gpiod_get_value_cansleep(param_1[2]);
  if ((sVar5 == 0xf) && (uVar3 == 5)) {
    uVar8 = (uint)(uVar8 == 0);
LAB_001017b4:
    input_event(lVar2,uVar10,*(undefined2 *)param_1[3],uVar8);
    uVar4 = *puVar1;
    puVar9 = &DAT_00102ed0;
  }
  else {
    if ((int)uVar8 < 0) {
      _dev_err(*(undefined8 *)(lVar2 + 0x290),"failed to get gpio state: %d\n",uVar8);
      return;
    }
    if (uVar3 != 3) goto LAB_001017b4;
    if (uVar8 == 0) goto LAB_0010173c;
    input_event(lVar2,3,*puVar1,puVar1[0xb]);
    uVar4 = *puVar1;
    uVar8 = puVar1[0xb];
    puVar9 = &DAT_00102a6c;
    uVar10 = 3;
  }
  _printk(puVar9,uVar10,uVar4,uVar8);
LAB_0010173c:
  input_event(lVar2,0,0,0);
  return;
}

