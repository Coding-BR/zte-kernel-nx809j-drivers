# Status de reconstrucao do `zte_misc`

## Veredito atual

O driver concluiu os gates estaticos 0 a 7 do protocolo obrigatorio. Isso comprova rastreabilidade do stock, reconstrucao das 14 funcoes, build reproduzivel para o kernel alvo, paridade de imports/aliases, KCFI dos callbacks, comparacao headless no Ghidra e testes comportamentais no host.

Nao esta autorizado declarar reconstrucao 100% concluida. Faltam:

- Gate 8: revisao realmente independente por outro revisor.
- Gate 9: validacao controlada no hardware com logs e rollback comprovado.
- Gate 10: promocao final somente depois dos gates 8 e 9.

## Evidencia estatica

- Stock SHA-256: `6455a3c97f10d10914248c4a92b0f92b06a8e06921def9c56c6a57a863703f9d`.
- Candidato SHA-256: `1d509ad620b3c3ecf990bcc7a7c9a9566c3d7a228aa2139682c10aec5f37ea8a`.
- Ghidra: inventario 14/14 e multiplicidade de chamadas por funcao em paridade.
- KCFI: 8/8 callbacks indiretos em paridade.
- Microtarefas: 14/14 aprovadas com evidencia baseada em hash.
- Build do modulo e harness do host: duas execucoes reproduziveis cada.

## Restricao de hardware

O teste dinamico nao deve descarregar ou substituir automaticamente o `zte_misc` stock. O modulo participa de callbacks OEM, parametros de carga, power supply e traducao de GPIO. Qualquer validacao deve usar sessao supervisionada, kernel descartavel em RAM, captura previa de logs e reboot como rollback.

Consulte `engenharia/validation/zte_misc/CYCLE_VALIDATION.md` para o estado autoritativo dos gates.
