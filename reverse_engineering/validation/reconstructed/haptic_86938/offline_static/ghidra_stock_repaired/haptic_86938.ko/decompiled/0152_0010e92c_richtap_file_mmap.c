
void richtap_file_mmap(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x800,0x10ea24);
  (*pcVar1)();
}

