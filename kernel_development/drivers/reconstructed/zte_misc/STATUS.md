# Status de reconstrucao do `zte_misc`

## Estado atual — lote `lifetime_sync_hardening_20261104`

- Candidato atual: SHA-256 `4397e8fcd4880b10e2af32a32d361708f2c227c2c135840750061730f4ea8f8c` (265040 bytes), copiado tanto para o repositorio quanto para o snapshot Docker curado.
- Duas builds Docker limpas produziram o mesmo hash. Conteudo ELF, secoes runtime, modinfo e hash do mapa correspondem ao candidato.
- Harness de host: PASS reproduzivel, 15 funcoes cobertas. KCFI: PASS para os quatro callbacks alterados.
- Comparacao estrita de assembly: 10/14 funcoes continuam exatamente iguais ao stock. Os quatro callbacks SRCU foram reclassificados como `reviewed`; a equivalencia stock nao esta estabelecida para eles.
- O validador permanece `incomplete_or_failed` somente em `undefined_symbols_match`. O hardening adiciona imports SRCU/mutex/alocacao listados na atestacao; o build reproduzivel nao elimina essa diferenca do stock.
- ADB sem dispositivo conectado. Nenhum teste no telefone; revisao independente pendente.

Recibos hash-bound: `reverse_engineering/validation/reconstructed/zte_misc/attestation/lifetime_sync_hardening_20261104/README.md` e `attestation.json`. A comparacao vigente e `assembly_comparison.json`.

## Revisao complementar — contrato de unregister SRCU — 2026-11-10

- Os leitores mantem a secao SRCU aberta durante a chamada do callback. O unregister despublica o binding, espera `synchronize_srcu()` e so entao libera a copia imutavel; o consumidor pode liberar `priv` depois do retorno, desde que chame unregister fora do callback.
- Chamar `zte_misc_unregister_callback()` de dentro de um callback esperaria a propria secao SRCU terminar e causaria deadlock. A API nao detecta nem impede esse uso; consumidores externos ao repositorio ainda precisam ser auditados.
- A busca em `kernel_development` encontrou os chamadores atuais em `zte_charger_policy_stop_runtime()` (falha de probe/remocao) e `zlog_test_exit()` (saida do modulo). Nenhuma implementacao de callback atual chama unregister diretamente.
- `zte_misc_unregister_callback()` e uma extensao de hardening sem contraparte no stock Ghidra. A comparacao estrita do candidato continua em 10/14; esta revisao nao muda hash do binario nem os estados do mapa.
- Recibo: `reverse_engineering/validation/reconstructed/zte_misc/attestation/srcu_callback_reentrancy_review_20261110/README.md` e `review.json`. Nenhum codigo-fonte mudou; nao foi necessario novo build Docker.

O restante deste arquivo registra a atestacao do candidato anterior ao lote. Seus hashes e contagens nao descrevem o binario atual.

## Veredito do candidato anterior ao lote

O driver concluiu os gates estaticos implementaveis pelo mesmo engenheiro. Isso
comprova rastreabilidade do stock, reconstrucao das 14 funcoes, build
reproduzivel para o kernel alvo, paridade de imports/aliases, KCFI dos
callbacks, comparacao headless no Ghidra, comparacao de assembly e testes
comportamentais no host.

Nao esta autorizado declarar reconstrucao 100% concluida. Faltam:

- Gate 8: revisao realmente independente por outro revisor.
- Gate 9: validacao controlada no hardware com logs e rollback comprovado.
- Gate 10: promocao final somente depois dos gates 8 e 9.

## Evidencia estatica

- Stock SHA-256: `6455a3c97f10d10914248c4a92b0f92b06a8e06921def9c56c6a57a863703f9d`.
- Candidato final SHA-256: `b7979b0fdf0cd71cc3db19341bfc65747cdf6e4c1d056d01c43c44f1302afd8d` (256544 bytes).
- Build normal antes da materializacao exata SHA-256: `e899682b1f995d53bcc53135184efc8c3d204515c998a74b5b9ae09ef9e30a7c`.
- Ghidra: inventario 14/14 e multiplicidade de chamadas por funcao em paridade.
- KCFI: 8/8 callbacks indiretos em paridade.
- Assembly exato final: 14/14 funcoes opcode-identicas; 14/14 relocalizacoes,
  secoes e tamanhos em paridade.
- Excecao materializada: em `zte_misc_probe`, o build normal usa `cmp w27,#0xf`
  + `b.hi`, enquanto o stock usa `cmp w27,#0x10` + `b.eq`. A sequencia foi
  demonstrada equivalente pelo guard dominante e materializada por duas
  substituicoes de palavra AArch64, com pre-condicoes de bytes, nos offsets
  relativos `0x240` e `0x244`. Nenhum outro byte foi alterado.
- A materializacao foi repetida em dois ciclos Docker independentes: ambos
  produziram o build normal `e899...` e o candidato final `91ad...`.
- Microtarefas: 14/14 aprovadas com evidencia baseada em hash.
- Build do modulo e harness do host: duas execucoes reproduziveis cada.

## Restricao de hardware

O teste dinamico nao deve descarregar ou substituir automaticamente o `zte_misc` stock. O modulo participa de callbacks OEM, parametros de carga, power supply e traducao de GPIO. Qualquer validacao deve usar sessao supervisionada, kernel descartavel em RAM, captura previa de logs e reboot como rollback.

Consulte `reverse_engineering/validation/reconstructed/zte_misc/offline_static/assembly_comparison_exact_20260828.json`
e `reverse_engineering/validation/reconstructed/zte_misc/attestation/zte_misc_exact_recheck_20260828/`
para o estado autoritativo desta rechecagem.
