# Status de reconstrucao do `zte_fingerprint`

Reconstrucao estatica concluida nos gates 0 a 7. O texto legado que declarava 100% e validacao em hardware foi removido porque nao possuia cadeia de evidencia hashada suficiente para satisfazer o protocolo obrigatorio.

Estado atual:

- stock rastreado: SHA-256 `4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675`;
- estrutura privada de 272 bytes e wakeup source de 192 bytes comprovados por ELF/Ghidra;
- imports, aliases e namespaces agora coincidem com o stock;
- build limpo e reproduzivel para o kernel alvo;
- inventario e multiplicidade de chamadas Ghidra agora passam em 30/30 funcoes;
- KCFI passa em 12/12 callbacks indiretos;
- ABI ioctl corrigida para `0x40086709` e `0x4008670d`, com tres copias de usuario comprovadas;
- candidato estatico promovido e reproduzivel: SHA-256 `553846049bafaf30e0e7ee0349f08f0b168c93a96cdc1b0b44ae8b2264f94b34`;
- harness host passou duas vezes com cobertura nominal das 30 funcoes;
- atestacao hashada passou em 30/30 microtarefas;
- paridade comportamental estatica final passou;
- nenhum resultado de hardware anterior sera reutilizado como PASS;
- `insmod`, unbind e unload automaticos permanecem proibidos.

Os gates 8 a 10 continuam pendentes: revisao independente, validacao supervisionada no hardware e promocao final de release.

Somente os gates registrados em `engenharia/validation/zte_fingerprint/CYCLE_VALIDATION.md` podem alterar este estado.
