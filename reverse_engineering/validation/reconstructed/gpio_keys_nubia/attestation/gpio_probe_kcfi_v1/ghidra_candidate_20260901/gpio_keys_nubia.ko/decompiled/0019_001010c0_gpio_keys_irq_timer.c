
void gpio_keys_irq_timer(long param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  
  uVar2 = *(undefined8 *)(param_1 + -0x18);
  uVar1 = _raw_spin_lock_irqsave(param_1 + 0xe4);
  if (*(char *)(param_1 + 0xe9) == '\x01') {
    input_event(uVar2,1,**(undefined2 **)(param_1 + -8),0);
    input_event(uVar2,0,0,0);
    *(undefined1 *)(param_1 + 0xe9) = 0;
  }
  _raw_spin_unlock_irqrestore(param_1 + 0xe4,uVar1);
  return;
}

