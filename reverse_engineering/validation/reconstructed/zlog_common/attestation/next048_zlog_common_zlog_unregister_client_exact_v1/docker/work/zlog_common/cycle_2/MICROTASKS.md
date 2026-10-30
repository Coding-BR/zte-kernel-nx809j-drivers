# Microtarefas Obrigatorias: zlog_common

Cada linha representa uma funcao stock com fonte revisado e evidencias de compilacao, KCFI e teste.

| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_zlog_client_notify | zlog_client_notify | 001003e4 | core_logic | zlog_common.c:zlog_client_notify | PASS |
| 002_zlog_client_record | zlog_client_record | 001004ac | core_logic | zlog_common.c:zlog_client_record | PASS |
| 003_zlog_register_client | zlog_register_client | 00100644 | core_logic | zlog_common.c:zlog_register_client | PASS |
| 004_zlog_unregister_client | zlog_unregister_client | 00100984 | core_logic | zlog_common.c:zlog_unregister_client | PASS |
| 005_zlog_reset_client | zlog_reset_client | 00100ac0 | core_logic | zlog_common.c:zlog_reset_client | PASS |
| 006_zlog_handle_work | zlog_handle_work | 00100b80 | async_or_irq | zlog_common.c:zlog_handle_work | PASS |
| 007_zlog_comm_read | zlog_comm_read | 00100f90 | user_abi | zlog_common.c:zlog_comm_read | PASS |
| 008_zlog_comm_write | zlog_comm_write | 00100f9c | user_abi | zlog_common.c:zlog_comm_write | PASS |
| 009_zlog_comm_ioctl | zlog_comm_ioctl | 00101170 | user_abi | zlog_common.c:zlog_comm_ioctl | PASS |
| 010_zlog_comm_open | zlog_comm_open | 0010117c | user_abi | zlog_common.c:zlog_comm_open | PASS |
| 011_zlog_comm_release | zlog_comm_release | 001011ec | user_abi | zlog_common.c:zlog_comm_release | PASS |
| 012_init_module | init_module | 00101268 | lifecycle | zlog_common.c:zlog_common_init | PASS |
| 013_zlog_comm_create_ctrl_dev | zlog_comm_create_ctrl_dev | 0010136c | core_logic | zlog_common.c:zlog_comm_create_ctrl_dev | PASS |
