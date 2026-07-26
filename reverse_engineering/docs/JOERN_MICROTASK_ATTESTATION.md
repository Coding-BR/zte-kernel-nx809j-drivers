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

## Piloto inicial

zte_tpd:syna_testing_create_dir foi o primeiro checkpoint atestado com essa
regra. O Joern v4.0.548 cobriu uma funcao mapeada, sem erros de parser, calls
nao resolvidas ou deltas de chamadas mapeadas. Esse resultado tornou-se uma
evidencia adicional; a promocao continua dependendo de build, comparacao
Assembly/P-Code, KCFI e harness.
