
void tpd_resume_work(void)

{
  long lVar1;
  code *pcVar2;
  
  lVar1 = tpd_cdev;
  pcVar2 = *(code **)(tpd_cdev + 0xe08);
  if (pcVar2 != (code *)0x0) {
    if (*(int *)(pcVar2 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x110788);
      (*pcVar2)();
    }
    (*pcVar2)(*(undefined8 *)(tpd_cdev + 0xdd8));
    *(undefined4 *)(lVar1 + 0x4a8) = 0;
  }
  return;
}

