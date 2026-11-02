
void set_display_rotation(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  undefined8 local_48;
  undefined2 local_40;
  undefined8 local_38;
  
  lVar1 = sp_el0;
  local_38 = *(undefined8 *)(lVar1 + 0x710);
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(&local_48,param_2,param_3);
}

