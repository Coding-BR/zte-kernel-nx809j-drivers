# Joern na Atestacao de Microtarefas NX809J

Decisao de engenharia: manter Joern e o dicionario/KCFI juntos. O Joern
melhora a esteira, mas nao pode substituir o dicionario, Ghidra ou os testes.

## Decisao

O dicionario responde se uma declaracao C reproduz a assinatura nominal,
KCFI, CRC ou namespace observados. O Joern responde se o fonte candidato forma
um grafo coerente: a funcao mapeada existe, chamadas internas mapeadas foram
preservadas, as estruturas de controle podem ser inspecionadas e as saidas de
risco sao localizadas para revisao.

O CPG nao recupera informacao destruida pela compilacao. Portanto ele nao
prova offsets de struct, padding, meaning de MMIO, relocacoes, tipo KCFI,
temporizacao ou comportamento no telefone.

| Camada | Resultado exigido |
|---|---|
| ELF + Ghidra | Assembly, P-Code, relocacoes e fatos stock auditaveis |
| Dicionario + KCFI | assinatura compilada compativel com a observada |
| Joern estrito | fonte C/H atual parseia e cobre a funcao mapeada |
| Build + harness | candidato compila de forma reproduzivel e passa no contrato isolado |
| Hardware | sessao controlada separada, nunca inferida do CPG |

## Regra de promocao

Microtarefas novas usam a lista de evidencias: compile, kcfi, joern e test.
O atestador aceita Joern somente quando o joern_gate_summary.json declara:

1. status PASS, passed true, strict true e promotion_claim false;
2. zero problemas de parser;
3. a source_function no escopo resolvido;
4. hash da arvore C/H igual ao candidato atual.

O hash inclui todos os arquivos .c e .h do driver, com finais de linha
normalizados para LF, e exclui apenas tests, validation e build. Assim,
alterar um header invalida a atestacao Joern mesmo que a funcao C nao tenha
sido tocada.

Microtarefas legadas preservam a evidencia historica ja publicada; elas nao
recebem um PASS Joern retroativo. Para adotar o padrao nelas, a funcao deve ser
reatestada com um novo resumo Joern hashado.

## Execucao

1. Rode o gate de funcao com run_joern_reconstruction_gate.py --strict.
2. Revise calls, controles e findings de risco no relatorio detalhado.
3. Passe o resumo portatil ao atestador usando --joern-report.
4. Execute verify_driver_microtasks.py para conferir hashes e os papeis
   exigidos por cada tarefa.

O comando completo, o lock Joern, a query Scala, o perfil de chamadas e os
hashes sao obrigatorios. O guia conceitual e o runbook completo permanecem em
[PIPELINE_DUAL_GHIDRA_JOERN.md](PIPELINE_DUAL_GHIDRA_JOERN.md) e
[JOERN_RUNTIME_GATE.md](../../workspace_tools/reconstruction_pipeline/JOERN_RUNTIME_GATE.md).

## Checkpoint aplicado: `zte_touch_shutdown`

Em 2026-07-26, `zte_tpd:zte_touch_shutdown` passou pelo ciclo completo de uma
microtarefa reatestada: build canonico reproduzivel, KCFI, Assembly, Ghidra,
Joern strict e harness host ASAN/UBSAN. O atestador aceitou o resumo Joern
porque ele foi `PASS`, parse-clean, nao-promocional, cobriu a funcao e possuia
o hash atual da arvore C/H. A evidencia versionada esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next78_zte_touch_shutdown_v1/`.

Isso valida o processo de integracao: Joern detecta lacunas estruturais e
impede uma promocao quando o CPG nao corresponde ao fonte atual. Ele ainda nao
prova offsets, MMIO ou comportamento no telefone; esses contratos continuam
dependentes de Ghidra, Assembly, KCFI e validacao dinamica controlada.

## Checkpoint aplicado: `syna_dev_shutdown`

Em 2026-07-26, `zte_tpd:syna_dev_shutdown` repetiu o ciclo completo com um
contrato menor, mas sem reduzir os gates: dois builds canonicos, Assembly e
relocation exatos (`28` bytes e `7` instrucoes), KCFI `0x24a11bb9`, comparacao
Ghidra/P-Code e harness ASAN/UBSAN. O export Ghidra reutilizado e valido porque
o candidato Next79 possui exatamente o mesmo SHA-256 do modulo analisado;
essa identidade esta registrada no relatorio estrito.

O Joern v4.0.548 passou em escopo de uma funcao: uma chamada mapeada para
`syna_dev_remove`, nenhum problema de parser, nenhuma chamada nao resolvida e
nenhum delta mapeado. O harness executou `NULL` e dois ponteiros distintos,
confirmando uma chamada e encaminhamento identico. A evidencia hashada esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next79_syna_dev_shutdown_v1/`.
Isso nao declara comportamento de platform core ou hardware; ambos continuam
fora do escopo deste checkpoint offline.

## Checkpoint aplicado: `syna_tcm_get_testing_0500`

`zte_tpd:syna_tcm_get_testing_0500` foi confirmado como retorno do endereco de
`test_0500`. Assembly de `12` bytes, duas relocacoes, KCFI, Ghidra/P-Code,
Joern estrito e harness ASAN/UBSAN passaram contra a evidencia stock. O seed
Ghidra de objeto de dados foi aplicado somente depois da prova que o fluxo nao
executa LOAD. A evidencia hashada esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next86_syna_tcm_get_testing_0500_v1/`.
Isso nao testa touch, hardware ou smartphone.

## Checkpoint aplicado: `syna_tcm_get_testing_0100`

`zte_tpd:syna_tcm_get_testing_0100` foi confirmado como retorno do endereco de
`test_0100`. Assembly de `12` bytes, duas relocacoes, KCFI, Ghidra/P-Code,
Joern estrito e harness ASAN/UBSAN passaram contra a evidencia stock. O seed
Ghidra de objeto de dados foi aplicado somente depois da prova que o fluxo nao
executa LOAD. A evidencia hashada esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next85_syna_tcm_get_testing_0100_v1/`.
Isso nao testa touch, hardware ou smartphone.

## Checkpoint aplicado: `syna_tcm_get_testing_0002`

`zte_tpd:syna_tcm_get_testing_0002` foi confirmado como retorno do endereco de
`test_0002`. Assembly de `12` bytes, duas relocacoes, KCFI, Ghidra/P-Code,
Joern estrito e harness ASAN/UBSAN passaram contra a evidencia stock. O seed
Ghidra de objeto de dados foi aplicado somente depois da prova que o fluxo nao
executa LOAD. A evidencia hashada esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next84_syna_tcm_get_testing_0002_v1/`.
Isso nao testa touch, hardware ou smartphone.

## Checkpoint aplicado: `syna_tcm_get_testing_0001`

Em 2026-07-26, `zte_tpd:syna_tcm_get_testing_0001` foi confirmado como retorno
do endereco de `test_0001`. Dois builds canonicos produziram o candidato
`b61147c14f3db7f69f1ef705f63379cd96219a923763854d46c0c8142246c5ea`.
Assembly (`12` bytes, tres instrucoes e duas relocacoes de `test_0001`), KCFI
`0x2b399469` e P-Code (`10/10` operacoes) passaram contra o modulo stock.

O candidato recebeu o seed Ghidra restrito `SeedVerifiedDataObject.java` para
o objeto de `0x178` bytes depois que Assembly e relocacoes provaram que nao ha
LOAD. Isso corrige somente a inferencia de tipo do decompilador e nao altera o
ELF. O Joern v4.0.548 passou em escopo estrito: uma funcao mapeada, parse
limpo, nenhuma chamada nao resolvida e nenhum delta mapeado. O harness
ASAN/UBSAN cobriu identidade e tres valores em dois ciclos. A evidencia hashada
esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next83_syna_tcm_get_testing_0001_v1/`.
Isso nao testa o subsistema de testes, touch ou smartphone.

## Checkpoint aplicado: `ufp_get_lcdstate`

Em 2026-07-26, `zte_tpd:ufp_get_lcdstate` foi confirmado contra o modulo stock
como uma leitura de 32 bits de `current_lcd_state`, sem ramificacoes. Dois
builds canonicos produziram o candidato
`b61147c14f3db7f69f1ef705f63379cd96219a923763854d46c0c8142246c5ea`.
Assembly (`12` bytes, tres instrucoes e duas relocacoes nomeadas), KCFI
`0x6fbb3035` e Ghidra (`6/6` operacoes P-Code) passaram contra o modulo stock.

O Joern v4.0.548 passou em escopo estrito usando o export Ghidra stock: uma
funcao mapeada, parse limpo, nenhuma chamada nao resolvida e nenhum delta
mapeado. O harness ASAN/UBSAN cobriu seis valores inteiros, incluindo limites
de 32 bits, em dois ciclos. A evidencia hashada esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next82_ufp_get_lcdstate_v1/`.
Isso nao testa painel, notifier, display ou smartphone.

## Checkpoint aplicado: `syna_cdev_llseek`

Em 2026-07-26, `zte_tpd:syna_cdev_llseek` foi confirmado contra o modulo stock
como retorno constante `-EINVAL` (`-22`), sem acessar os argumentos. Dois
builds canonicos produziram o mesmo candidato
`b61147c14f3db7f69f1ef705f63379cd96219a923763854d46c0c8142246c5ea`.
Assembly (`8` bytes e `2` instrucoes), KCFI `0xd527a0de` e Ghidra (`3/3`
operacoes P-Code) passaram contra o modulo stock.

O Joern v4.0.548 passou em escopo estrito usando o export Ghidra stock, com
parse limpo, sem chamadas nao resolvidas nem deltas mapeados. O harness
ASAN/UBSAN cobriu ponteiro nulo, valido e limites de offset/whence em dois
ciclos, sempre exigindo `-22`. A evidencia hashada esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next81_syna_cdev_llseek_v1/`.
Isso nao testa VFS, cdev ou smartphone.

## Checkpoint aplicado: `zte_touch_remove`

Em 2026-07-26, `zte_tpd:zte_touch_remove` foi refeito a partir do Assembly
stock: `printk` com o literal, nome e linha exatos, seguido por
`zte_touch_deinit()` sem argumento residual do retorno de `printk`. Dois builds
canonicos produziram o mesmo candidato `b61147c14f3db7f69f1ef705f63379cd96219a923763854d46c0c8142246c5ea`.
Assembly (`52` bytes e `13` instrucoes), KCFI `0x24a11bb9` e Ghidra (`37/37`
operacoes P-Code) passaram contra o modulo stock.

O Joern v4.0.548 passou em escopo estrito para a funcao atual, com parse limpo,
sem chamadas nao resolvidas e sem deltas mapeados. O harness ASAN/UBSAN cobriu
`NULL` e dois ponteiros distintos, verificando um log stock e um teardown por
chamada. A evidencia hashada esta em
`reverse_engineering/validation/reconstructed/zte_tpd/attestation/next80_zte_touch_remove_v1/`.
Isso nao testa o platform core, controlador touch ou smartphone.

## Piloto inicial

zte_tpd:syna_testing_create_dir foi o primeiro checkpoint atestado com essa
regra. O Joern v4.0.548 cobriu uma funcao mapeada, sem erros de parser, calls
nao resolvidas ou deltas de chamadas mapeadas. Esse resultado tornou-se uma
evidencia adicional; a promocao continua dependendo de build, comparacao
Assembly/P-Code, KCFI e harness.
