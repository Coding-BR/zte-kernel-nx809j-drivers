# Status de reconstrucao do `zte_misc`

## Veredito atual

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
- Candidato final SHA-256: `91ad71bf9559a553a8711139208afc1c7ece86592e2dd7ffbe7b58dc7981ce5f`.
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
