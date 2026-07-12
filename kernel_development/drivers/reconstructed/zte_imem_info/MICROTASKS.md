# Microtarefas Obrigatórias: zte_imem_info

Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.

| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_request_board_id | request_board_id | 00100194 | core_logic | zte_imem_info.c:request_board_id | PASS |
| 002_ddr_id_proc_open | ddr_id_proc_open | 0010022c | user_abi | zte_imem_info.c:ddr_id_proc_open | PASS |
| 003_ddr_id_read_proc | ddr_id_read_proc | 0010025c | user_abi | zte_imem_info.c:ddr_id_read_proc | PASS |
| 004_board_id_proc_open | board_id_proc_open | 001004fc | user_abi | zte_imem_info.c:board_id_proc_open | PASS |
| 005_board_id_read_proc | board_id_read_proc | 0010052c | user_abi | zte_imem_info.c:board_id_read_proc | PASS |
| 006_init_module | init_module | 001005f0 | lifecycle | zte_imem_info.c:zte_imem_info_init | PASS |

Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.
