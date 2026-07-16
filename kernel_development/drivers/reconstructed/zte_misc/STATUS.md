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
- Candidato SHA-256: `f2825157accb5bd8171953462135f1f8c6cf4eae114f4cd8dad4b75c42f95f14`.
- Ghidra: inventario 14/14 e multiplicidade de chamadas por funcao em paridade.
- KCFI: 8/8 callbacks indiretos em paridade.
- Assembly: 13/14 funcoes opcode-identicas; 14/14 relocalizacoes, secoes e
  tamanhos em paridade.
- Excecao validada: em `zte_misc_probe`, o stock usa `gpio_idx == 16` e o
  candidato usa `gpio_idx > 15`. O guard dominante identico prova
  `gpio_idx <= 15` em todo estado alcancavel, e ambos saltam para o mesmo trap.
- Microtarefas: 14/14 aprovadas com evidencia baseada em hash.
- Build do modulo e harness do host: duas execucoes reproduziveis cada.

## Restricao de hardware

O teste dinamico nao deve descarregar ou substituir automaticamente o `zte_misc` stock. O modulo participa de callbacks OEM, parametros de carga, power supply e traducao de GPIO. Qualquer validacao deve usar sessao supervisionada, kernel descartavel em RAM, captura previa de logs e reboot como rollback.

Consulte `reverse_engineering/validation/reconstructed/zte_misc/ASSEMBLY_COMPARISON_FINAL.md`
e `engenharia/validation/zte_misc/CYCLE_VALIDATION.md` para o estado
autoritativo dos gates.
