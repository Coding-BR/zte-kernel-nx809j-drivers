# Validacao `zte_tpd` Proc Feature Wrappers - 2026-07-17

## Escopo

Este checkpoint valida diretamente nove pares de handlers proc:

- `tp_wake_gesture_read/write`;
- `tp_smart_cover_read/write`;
- `tp_glove_read/write`;
- `tp_single_tap_read/write`;
- `tp_single_aod_read/write`;
- `tp_single_game_read/write`;
- `tp_palm_mode_read/write`;
- `tp_fold_state_read/write`;
- `tp_frame_data_read/write`.

As 18 funcoes manipulam estado e callbacks recuperados de `tpd_cdev`. Nenhuma
delas acessa diretamente SPI, IRQ ou MMIO no escopo exercitado.

## Cobertura Comportamental

O harness inclui diretamente os 18 arquivos fonte e executa sete cenarios:

1. leituras com getter instalado e atualizacao do campo;
2. leituras sem getter, preservando o estado existente;
3. EOF sem chamada de getter;
4. leitura parcial e avanco correto de `loff_t`;
5. escritas zero e nao zero com setter tipado;
6. erro de parse sem efeito lateral;
7. escrita sem setter, preservando o retorno stock.

Foram verificadas duas execucoes independentes, cada uma com `7/7` PASS, ASan
e UBSan ativos. Os offsets recuperados exercitados incluem os campos de estado
e os pares de callbacks entre `+3184` e `+3656`. Para `single_tap`, `single_aod`
e `single_game`, qualquer valor nao zero foi confirmado como normalizado para
`5`; os demais setters preservam o valor inteiro recebido.

## Atestacao

- Candidato SHA-256: `8bf17b48fd905e75504754ab13db24dbbe98ae6141953bc646a7b823d8bee29f`.
- KCFI: ja coberto pelo comparador atual de `151/151` funcoes.
- Novas microtarefas promovidas: `18`.
- Progresso anterior: `91/367`.
- Progresso atual: `109/367`.
- Pendentes: `258`.
- PASS obsoleto detectado: `0`.

## Evidencia

- `harness/proc_feature_callbacks_harness.c`
- `proc_feature_harness_report.json`
- `microtask_progress.json`
- `microtask_audit.json`
- `kcfi_direct_surface_final_comparison.json`
- `driver_audit_static_final.json`

O harness modela procfs, usercopy e callbacks com fixtures deterministicas. Ele
nao prova temporizacao, concorrencia com o firmware nem comportamento eletrico.
Nenhum comando foi enviado ao smartphone.
