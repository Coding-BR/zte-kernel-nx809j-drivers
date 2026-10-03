
void change_tp_state(uint param_1)

{
  long lVar1;
  code *pcVar2;
  undefined *puVar3;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xcc0);
  if ((3 < param_1) || (2 < current_lcd_state)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x110498);
    (*pcVar2)();
  }
  _printk(&DAT_0013df70,(&lcdstate_to_str)[current_lcd_state],
          *(undefined8 *)(lcdchange_to_str + (ulong)param_1 * 8));
  if (current_lcd_state == 2) {
    if (param_1 == 0) goto LAB_0011043c;
    if (param_1 == 2) {
LAB_001103f4:
      current_lcd_state = 0;
      queue_work_on(0x20,*(undefined8 *)(tpd_cdev + 0x4b0),tpd_cdev + 0x9c0);
      DAT_00131ba8 = 0;
      goto LAB_0011043c;
    }
    if (param_1 != 3) goto LAB_00110458;
LAB_001103c4:
    current_lcd_state = 1;
    DAT_00131c20 = 0;
LAB_0011042c:
    DAT_00131ba8 = 0;
    queue_work_on(0x20,*(undefined8 *)(tpd_cdev + 0x4b0),tpd_cdev + 0x9a0);
  }
  else {
    if (current_lcd_state == 1) {
      if (param_1 == 1) {
LAB_00110418:
        current_lcd_state = 2;
        goto LAB_0011042c;
      }
      if (param_1 == 2) goto LAB_001103f4;
LAB_00110458:
      puVar3 = &DAT_00139fed;
    }
    else {
      if (current_lcd_state == 0) {
        if (param_1 != 3) {
          if (param_1 != 1) goto LAB_00110458;
          goto LAB_00110418;
        }
        goto LAB_001103c4;
      }
      current_lcd_state = 0;
      queue_work_on(0x20,*(undefined8 *)(tpd_cdev + 0x4b0),tpd_cdev + 0x9c0);
      puVar3 = &DAT_001337b9;
      DAT_00131ba8 = 0;
    }
    _printk(puVar3);
  }
LAB_0011043c:
  mutex_unlock(lVar1 + 0xcc0);
  return;
}

