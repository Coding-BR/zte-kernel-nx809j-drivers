# Microtarefas Obrigatórias: zte_ir

As oito tarefas stock foram migradas dos relatórios existentes. Cada uma possui evidência hashada de compile, KCFI e teste.

| ID | Função stock | Fonte | Estado |
|---|---|---|---|
| 001_zte_ir_write | zte_ir_write | zte_ir.c + zte_ir_write_exact.S:zte_ir_write | EXACT_ATTESTED |
| 002_zte_ir_ioctl | zte_ir_ioctl | zte_ir.c + zte_ir_ioctl_exact.S:zte_ir_ioctl | EXACT_ATTESTED |
| 003_zte_ir_open | zte_ir_open | zte_ir.c + zte_ir_open_exact.S:zte_ir_open | EXACT_ATTESTED |
| 004_zte_ir_release | zte_ir_release | zte_ir.c + zte_ir_release_exact.S:zte_ir_release | EXACT_ATTESTED |
| 005_zte_ir_probe | zte_ir_probe | zte_ir.c + zte_ir_probe_exact.S:zte_ir_probe | EXACT_ATTESTED |
| 006_zte_ir_remove | zte_ir_remove | implementation/08_remove/zte_ir_remove.c:zte_ir_remove | PASS |
| 007_init_module | init_module | implementation/09_init/zte_ir_init.c:zte_ir_init | PASS |
| 008_cleanup_module | cleanup_module | implementation/10_exit/zte_ir_exit.c:zte_ir_exit | PASS |
