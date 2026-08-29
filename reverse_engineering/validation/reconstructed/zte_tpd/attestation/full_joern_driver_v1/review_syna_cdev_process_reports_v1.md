# Revisão inicial — `syna_cdev_process_reports`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e evidência

O alvo é a função stock `00117c90`, com corpo de 1616 bytes, microtarefa
`195_syna_cdev_process_reports`. O C reconstruído é usado como vista legível
de revisão; o objeto final usa `syna_cdev_process_reports_exact.S`.

| Item | SHA-256 |
|---|---|
| C reconstruído | `78993e668a926f2d54510d116f8b8e66617542b83035486353f0ecf2123fe510` |
| Assembly exact | `ad790c4afb48d2889c8cba585b06cdeafbf1085d14afb37077e39f181411188a` |
| Decompilação Ghidra | `3e37fb83d07b94c809f6ff0fdf9ac5850a26599b361320e09338fb97f9f23410` |
| P-Code Ghidra | `8dd5bf98cc95c6149b10c9fc4efa71825e322085b6ef2321e3edddacb0018c5f` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern da atestação | `9ff9a0b557ae48dc3e05646d58e57b24a4be2dd2e613646245e3c70dbfdf4154` |
| Joern summary | `ac4046df8b9ce67caf618b721135ee2e892dc84d50d95ccd455c664ed8691779` |

## Normalização dos achados

O full-driver registra 18 itens para a função:

- seis registros de sincronização, equivalentes a três chamadas reais:
  `mutex_lock` e dois caminhos de `mutex_unlock` para `qword_316D0`;
- 12 registros de lifetime, equivalentes a nove operações reais: quatro
  registros duplicados de `kfree`, duas operações `devm_kmalloc`, três
  `devm_kfree` e duas alocações `_kmalloc_noprof`/cache. O par
  `kmalloc`/`kzalloc` do mesmo ponto é uma duplicação de modelagem.

Joern não prova sozinho ownership, dupla liberação, vazamento ou balanceamento
de lista. A atestação específica passou em modo estrito, mas os itens do
full-driver continuam sendo a lista consolidada de revisão.

## Cruzamento C, Ghidra e P-Code

As duas vistas preservam a mesma estrutura:

1. validam `context` e `payload` antes de usá-los;
2. calculam o tamanho do registro com o cabeçalho e os bytes de configuração;
3. alocam o buffer managed do registro e, quando necessário, o buffer de
   configuração;
4. copiam cabeçalho, payload e configuração com os mesmos limites;
5. adquirem `qword_316D0` (`param_4 + 0x158` no Ghidra), removem o frame mais
   antigo quando o FIFO alcança `1200`, alocam o novo nó/payload, inserem na
   lista e acordam leitores;
6. liberam buffers temporários e retornam os mesmos códigos de erro.

As chamadas de mutex aparecem como `qword_316D0` no C e `DAT_00131e50` no
Ghidra. O lock é liberado tanto no caminho de sucesso quanto no caminho de
falha da alocação do nó/payload. Não foi observada divergência estática nova
entre C, Ghidra, P-Code e assembly exact.

## Risco residual confirmado no modelo

No caminho de inserção, o stock faz:

```text
node = _kmalloc_cache_noprof(..., 48)
payload = _kmalloc_noprof(size)
if (payload == NULL) -> unlock -> cleanup dos buffers managed temporários
```

Nesse caminho não aparece `kfree(node)` antes da saída. A mesma sequência
existe no decompilado Ghidra e no C reconstruído; portanto é um possível
vazamento de memória preservado pelo comportamento stock, não uma divergência
introduzida pela reconstrução. O assembly exact mantém o mesmo comportamento
por equivalência de bytes.

O harness existente cobre cinco contratos, incluindo ausência do managed
device, falha do primeiro buffer e falha da alocação do nó FIFO. Entretanto,
`test_kmalloc_cache` força a falha da alocação do nó e `test_kmalloc` sempre
retorna sucesso; não há caso direto que force somente a alocação do payload a
falhar. Assim, o possível vazamento permanece sem teste direto.

Não se deve adicionar `kfree(node)` dentro desta reconstrução exact sem uma
decisão explícita de hardening: isso mudaria a equivalência stock e exigiria
um novo objeto, comparação AArch64, KCFI, Joern, harness e aprovação
independente.

## Gates offline

A atestação `next692_syna_cdev_process_reports_exact_v1` registra 404/404
instruções, 1616/1616 bytes, relocations e KCFI `0x9f93c40a` coincidentes. O
build Docker passou em dois ciclos; o harness ASan/UBSan passou em dois ciclos
com cinco casos. Smartphone, input subsystem, firmware e hardware NX809J não
foram executados.

## Decisão e pendências

Decisão: **não há divergência estática nova comprovada**. O possível vazamento
do caminho de falha do payload fica registrado como `OPEN — comportamento
stock a confirmar`, sem alteração de produção, status ou mapa.

Pendências:

1. revisor independente decidir se o vazamento stock é aceitável ou requer um
   ramo de hardening separado;
2. adicionar teste isolado de falha do segundo `_kmalloc_noprof` e documentar
   a decisão de ownership;
3. verificar concorrência entre callback de reports, remoção do FIFO e
   `syna_cdev_ioctls` no dispositivo;
4. executar validação Android/NX809J e registrar a decisão independente.

`PROMOTED_OFFLINE_EXACT` continua significando apenas equivalência
estática/offline do objeto, não autorização de uso em hardware.
