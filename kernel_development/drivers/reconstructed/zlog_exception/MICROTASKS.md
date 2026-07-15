# Microtarefas Obrigatorias: zlog_exception

Cada linha representa uma funcao stock com fonte revisado e evidencias de compilacao, KCFI e teste.

| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_zlog_write_internal | zlog_write_internal | 00100364 | user_abi | zlog_exception.c:zlog_write_internal | PASS |
| 002_zlog_read | zlog_read | 0010056c | user_abi | zlog_exception.c:zlog_read | PASS |
| 003_zlog_write | zlog_write | 00100814 | user_abi | zlog_exception.c:zlog_write | PASS |
| 004_zlog_poll | zlog_poll | 00100b08 | core_logic | zlog_exception.c:zlog_poll | PASS |
| 005_zlog_ioctl | zlog_ioctl | 00100ba4 | user_abi | zlog_exception.c:zlog_ioctl | PASS |
| 006_zlog_open | zlog_open | 00100bb0 | user_abi | zlog_exception.c:zlog_open | PASS |
| 007_zlog_release | zlog_release | 00100c20 | user_abi | zlog_exception.c:zlog_release | PASS |
| 008_init_module | init_module | 00100ca4 | lifecycle | zlog_exception.c:zlog_init | PASS |
| 009_zlog_create_log_dev | zlog_create_log_dev | 00100d3c | core_logic | zlog_exception.c:zlog_create_log_dev | PASS |
| 010_cleanup_module | cleanup_module | 00100df0 | lifecycle | zlog_exception.c:zlog_exit | PASS |
